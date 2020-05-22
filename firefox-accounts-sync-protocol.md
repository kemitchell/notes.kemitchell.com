---
title: Firefox Accounts/Sync Protocol
tags:
- https://github.com/mozilla/fxa-auth-server/wiki/onepw-protocol?source=post_page
tags:
- Security
- Cryptography
---

- client proves knowledge of a password for:
  - `sessionToken` -> BrowserID/Persona Certificate
  - encryption key pair `kA`, `kB`
- constraints:
  - single password
  - slow mobile clients
- all messages via HTTPS
- Firefox 29
- Class A: can recover via e-mail challenge
- Class B: can recover with password only
- threats:
  - TLS-breaking eavesdropper (see `authPW`)
  - compromised keyserver (see `verifyHash`, `wrap(wrap(kB))`)
- mitigation: key stretching
  - server: scrypt

# Client Proof
- User provides e-mail, password
- `quickStretchedPW = PBKDF2(password, salt=e-mail, 1000 rounds)`
- `authPW = HKDF(quickStretchedPW)`
- `POST /account/create` with e-mail and `authPW`

# Server Verification
- `authSalt = random(32 bytes)`
- `bigStretchedPW = scrypt(password=authPW, salt=authSalt, N=64*1034, r=8, p=1, dkLen=32)`
- `verifyHash = HKDF(IKM=bigStretchedPW, salt=none, info="verifyHash", L=32)`
- `kA = random(32 bytes)`
- `wrap(wrap(kB)) = random(32 bytes)`
- store:
  - `authSalt`
  - e-mail
  - user ID
  - `kA`
  - `wrap(wrap(kB))`
  - `verifyHash`
  - e-mail verified = false
- serve random `sessionToken` and `keyFetchToken`
- require e-mail verification before providing keys or certificates

# Client Encryption
- `unwrapBKey = HKDF(IKM=quickStretchedPW, salt=none, info="unwrapBKey", L=32)`
- `kB = wrap(kB) XOR unwrapBKey`

# Server Encryption
- `wrapwrapKey = HKDF(IKM=bigStretchedPW, salt=none, info="wrapwrapKey", L=32)`
- `wrap(kB) = wrap(wrap(kB)) XOR wrapwrapKey`

# Cryptography Notes
- `wrapKey` is a function of e-mail, password, fixed stretching parameters
- `wrapwrapKey` is a function fo e-mail, password, fixed stretching parameters, `authSalt`
- `wrap(wrap(kB))` is random, so `kB` is random

# Sodium Primitives
- stretch: `crypto_pwhash(interactive)` (Argon2)
- derivation: `crypto_kdf_derive_from_key()` (BLAKE2b)
- authenticate: `crypto_auth()`
