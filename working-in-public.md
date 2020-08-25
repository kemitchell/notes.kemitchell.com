---
title: Working in Public
subtitle: The Making and Maintenance of Open Source Software
people:
- Nadia Eghbal
year: 2020
finished: 2020-08-10
tags:
- Business
- Business Models
- Free Software
- Funding
- Internet
- Open Source
- Platforms
- Social Media
- Software Development
- Software Industry
---

# Notes

## Introduction
- "Until recently, information was good, and more information was better." (7)
- "spirit of openness" for 200 years (7)
- "DDoSing one another" (7)
- open source nearly synonymous with public collaboration (7)
- funding only part of problem (8)
- diminishing returns of popularity (8)
- default: maintainer needs to find more contributors (9)
- initiatives attract low-quality contributions (9)
- too many contributors, or wrong kind (9)
- "Open source code is public, but it doesn't have to be participatory..." (10)
- few devs, many casual contributors (11)
- not the Internet pioneers' vision (11)
- "Node Package Manager" (12)
- curation over collaboration (12)
- too much participation, not consumption, overwhelms maintainers (13)
- distributed communities smashed together by social media platforms (14)
- "decline of the firm as a principal agent of change" (16)
- creators, not communities (16)

## Part 1

### Chapter 1
- "Hacker culture still lives today, in the way that beatniks, hippies, and Marxists still exist..." (24)
- successors: cryptographers? security people? (24)
- unflattering portraits: RMS, ESR, Linus (24-25)
- "Startling lack of interest in its people" (26)
- freedom from the people who make it (26)
- "today's developers hardly even notice 'open source' as a concept anymore" (28)
- "Copyleft ... like a virus ..." (29)
- "the classic technology tale of convenient triumphing over personal values" (30)
- convenience over freedom or openness (30)
- talent agency analogy (32)
- JavaScript (35)
- not known for specific projects (36)
- humble v. earlier generation (37)
- juxtaposition: Linus flipping the bird and Sindre cuddling huskies (38)
- shrink away from celebrity (38)
- "shifted from celebrating heavy-handed authoritarianism to seeking out thoughtfulness and stewardship" (39)
- "Open source was founded on the idea that developer's shouldn't be beholden to a particular platform." (40)
- "perfect storm of drive-by users" (41)
- "designed for a use case that's breaking down at scale" (41)

### Chapter 2
- charismatic megafauna (43)
- "there is no 'open source community', really, anymore than there is an 'urban community'" (44)
- "'Open source' projects have nothing more in common with one another than 'companies' do." (Zuegel) (44)
- setuptools → Distribute → merged back (48)
- bug reports, feature requests, questions (51)
- sync. & async. comms. (52)
- closed → open → closed or distributed development, depending on size (53)
- promote projects like startups (53)
- filter out noise or distribute work (55)
- contributor growth factors:
  - technical scope
  - support required
  - ease of participation 
  - user adoption (56)
- Babel's Phabricator experiment (57)
- older, messy codebases can create small, dedicated groups (59)

<table>
  <thead>
    <tr>
      <td colspan="2" rowspan="2"></td>
      <th colspan="2">User Growth</th>
    </tr>
    <tr>
      <th>High</th>
      <th>Low</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th rowspan="2">Contributor Growth</th>
      <th>High</th>
      <td>Federations (Rust)</td>
      <td>Clubs (Astropy)</td>
    </tr>
    <tr>
      <th>Low</th>
      <td>Stadiums (Babel)</td>
      <td>Toys (ssh-chat)</td>
    </tr>
  </tbody>
</table>

- magnetic v. stick projects (62)
- MacCallum: "proprietary communities" (64)
- high production cost, low marginal cost (65)
- infrastructure metaphor (65)
- stadiums need platforms (66)

### Chapter 3
- cites _Information Rules_ (69)
- Coase's theory of the firm fails (70)
- cites Ostrom (70)
- commons-based peer production (72)
- removing property and contract (73)
- money v. intrinsic motivation (75)
- cites "The Simple Economics of Open Source" (76)
- GitHub as highway system (77)
- 2006: Facebook News Feed (78)
- "single giant attention arena" (Wei) (78)
- "context collapse (Wesch) (78)
- hard: membership boundaries (80)
- codes of conduct (80)
- "Opalgate" (80)
- protection from newcomers (81)
- Eternal September (81)
- defer to community v. to maintainers (82)
- Lerna (82)
- consensus seeking v. rough consensus v. consensus (83)
- Lerna change unenforceable (83 note)
- All Contributors (85)
- maintainers, contributors, users (87-88)
- _Understanding Knowledge as a Commons_ (88)
- "Creation is an intrinsic motivator, maintenance usually requires extrinsic motivation." (@balupton) (89)
- keystone species (90)
- Jim Weirich's passing without succession plan (92)
- reputational benefits flatten out (94)
- enjoy new challenges, distribute work, or reduce time spent (94)
- event-stream (95)
- publication is not the end (96)
- active or casual (97)
- Majumdar et al.: 85% projects had "heroes" in 80% of discussions or more (98)
- regulars start with intent to be regulars (99)
- casual contrib.: self-oriented (101)
- tourists in NYC for a weekend (101)
- nucleus, electron cloud (102)
- users as "silent majority" (104)
- unknown popularity (104)
- Homebrew stats tracking (105)
- active users can contribute otherwise (106)
- user-to-user support (107)
- metrics:
  1.  popularity
  2.  dependence
  3.  activity (108)
- contributor fungibility rooted in commons theory (110)
- Sprockets v. Rails (110)
- measure work done, not contributors (111)
- maintenance costs v. marginal cost of reproduction (113)

## Part 2

### Chapter 4
- "most software at Google gets rewritten every few years" (117)
- old code rarely disappears from use (118)
- secretly dropped IE6 support (119)
- SmooshGate (120)
- static v. active code (121)
- free as in puppy (122)
- widely used projects make themselves unforkable (123)
- quotes The Human Use of Human Beings (124)
- creation, distribution, maintenance costs (124)
- non-rivalry, non-excludability (125)
- "not quite non-rivalrous" (126)
- PyPi: Fastly donates est. $3m/year (127)
- "servicing costs" (Zuegel) (130)
- "Given enough eyeballs ..." unsupported, refuted by evidence (130 note)
- Section 230, AS IS disclaimers (131)
- zero marginal cost favors consumers (140)
- ignoring ongoing costs creates tension between producer and consumer (141)
- "Software producers have never really figured out how to sell code itself." (141)
- artificial rivalry & excludability (141)
- "Code by itself is not, and has never been, worth anything..." (142)
- "Producers constantly fight an uphill battle to threaten lockdown, beg, blame, and shame consumers into paying for content." (143)
- quotes "information wants to be free" (143)
- quotes "information wants to be expensive" (144)
- analogy to Jane Jacobs (144)
- Patistas: toaster v. cat, take apart and put back together? (145)
- artifact and organism (145)
- left-pad (147)
- substitutability (147)
- "shadow pricing" (148 note)
- value: Dependence and substitutability (149)
- Sindre's sponsorships not commensurate (150)
- new: funding independent of job or any particular project (151)
- Sophie Alpert offered $600 to open PR (151)
- Velocityraps illegally streaming NDA (152)
- likes v. follows (152)
- reputation as battery starring attention (152)

### Chapter 3
- "Nobody can keep open house in a great city." (Jacobs) (155)
- free rider problem (155)
- CryptoWars (156)
- short of government, no tidy funding answers (157)
- Christmas lights (158)
- bang on door, demand Surfing Santa (159)
- "When software is in static state, _what if there is no free-rider problem_?" (159)
- "I'm skeptical of attempts to charge for access to information..." (159)
- "unlikely that online content will ever be underproduced" (159)
- "What if...software is actually overproduced?" (159)
- production, not consumption, overdone (160)
- normal to degrade and demand online (160)
- "managing open source code requires separating its production from consumption: ... two types of economic goods" (160)
- GVR & PEP 572 (160)
- public v. participatory content (161)
- "if it can be consumed at nearly zero marginal cost we should just let people have it" (161)
- production: attention rivalrous (161)
- code as positive externality of contributor community (162)
- Ostrom only applies with clear group boundaries (162)
- "one-way mirror": one-way stadiums, not two-way club relationships (162)
- users of a respectful distance (162)
- Lobsters, Product Hunt invite-only (163)
- Zdziarski's "peer source": private repos, public binaries (164)
- invite-only torrents (164)
- CPRs: produced and consumed solely by its members (164)
- "The ability of non-members to consume should be treated as a positive externality..." (164)
- extractive v. non-extractive contributions (165)
- withoutboats: induced demand, e.g. more highway lanes (166)
- Hickey's "On Whose Authority?" (168)
- "Automation is a developer's best friend..." (170)
- Dear GitHub (172)
- isaacs/github (173)
- bots (174)
- React Native Firebase fire emoji issue tag comment (176)
- Guo: don't take outside code at all (176)
- Lua (176)
- "user-to-user systems" (178)
- Twitch broadcaster-moderator (180)
- user support techniques (180)
- "Understanding User Support Systems in Open Source" (181 n 299)
- i1915: readily give commit bit to reduce load (182)
- § The Role of Money in Open Source (184)
- no simple answer (185)
- "We can no longer tell a unified story about how it is produced" (185)
- "attention as the currency of production" (185)
- make attention excludable, e.g. paid support, patronage, bounties (186)
- companies: code quality, roadmap influence, brand association (187)
- Onivim2 delayed-release model (187)
- few substitutes (188)
- "laundering" requests through non-work e-mail addresses (188)
- paid, direct-liune relationships often secret (188)
- pay-to-play, esp. big federation projects (189)
- GitHub v. CodeFund (189)
- Feross (189)
- Feross asking companies about conference booth costs (191)
- grassroots funded politicians preferred (191)
- CHAOSS: "elephant factor" := dependence on few corporate contributors (191)
- devs generally well paid (192)
- $34m+ in Twitch tips (192)
- "Right now, the market for open source subscriptions and sponsorships is small, because it's new and because the argument in favor of this kind of support has primarily been based on _shoulds_ instead of _gottas_." (192)
- "sticker money" (193)
- more likely to sponsor people than projects (193)
- patronage and subscription, not a donation (193)
- pay to feel closer to person (193)
- property v. ongoing creation (194)
- local news analogy (193)
- now: no great way to monetize rep., apart from landing a job (194)
- acquihire v. "burgeoning renaissance for independent creators" (195)
- "status as a service" (195)
- academy as closed rep. economy (196)
- GH lags other social platforms (196)
- some of best known aren't code contributors but educators, speakers, streamers, public personalities (197)
- Cassidy Williams (197)
- "open source" becoming "doing code stuff in public" (198)
- still stressing collab. over individuals (198)
- ESR: "Load-Bearing Internet People" (198)
- npm: 100% of Fortune 500, everyone with a website (199)
- "Everybody who uses my software should pay for my work." (200)
- abundance, not scarcity (200)
- "1,000 True Fans" (201)
- Forte on transition to paywall (201)
- funding casual contributions nonsensical (202)
- Hacktoberfest doesn't help (202)
- commit-based bounties don't work (203)
- security bounties work (203)
- crowdfunding can work (203)
- fund project: institutional memory, easier to manage, developer: more flexible, easier governance (205)
- entity overhead (205)
- funding individuals aligns with distributed nature (206)
- competition, use of project brands (206)
- Ruby project booted maintainer setting up support company (206)
- reactions more about UX changes than philosophy (207)

## Conclusion
- content not something we set out to make, but an "externality" (211)
- social connections over content (211)
- Stratechery: "faceless publisher" (211)
- "By treating content as a commodity, we risk solving the wrong puzzle." (212)
- reputational maintenance (212)
- "attention economy" usually means limited consumer attention (214)
- tragedy of commons: creator's attention (214)
- negative cross-side network effects (214 note)
- lingering social norms
- quaint forum, chat, mailing list blueprints (214)
- use cases:
  1.  broadcasting
  2.  small side conversations (215)
- Strickler: "scurried into their dark forests" to avoid mainstream web (215)
- Zuckerberg: "the future is private" (215)
- Instagram Stories, podcasts, newsletters (216)
- group chats as Ostrom boundaries (216)
- management tools v. moderation policies (217)
- disabling comments and metrics (218)
- likes reduced attention costs of comments (219)
- GH emoji reactions v. "+1" (219)
- "tapbacks" (219)
- "organization building" (220)
- subscriptions aren't the end of ads (221)
- paywall: charge for community (221)
- Something Awful: pay to post (221)
- apart from heavy hitters, paywalling everything and micropayments don't work (222)
- two-sided markets (222)
- Matthew Butterick (223)
- news analogy (223)
- breaking news as casual contributions (223)
- shift to funding reporters (224)
- name of the game:
  - highly targeted audience
  - optimize for fewer who pay more (224)
- objectivity v. relevance in news (225)
- news and open source: preexisting social norms retard shift (225)
