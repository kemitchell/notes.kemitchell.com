module Jekyll
  # Generate indexes.
  class IndexPages < Generator
    safe true
    def generate(site)
      index(site, 'tags', TagPage) if site.layouts.key? 'tag'
      index(site, 'people', PersonPage) if site.layouts.key? 'person'
      index(site, 'types', TypePage) if site.layouts.key? 'type'
    end

    def index(site, key, page_type)
      find_all(site, key).each do |element, pages|
        path = File.join(key)
        page = page_type.new(site, site.source, path, element, pages)
        site.pages << page
      end
    end

    def find_all(site, key)
      map = {}
      site.pages.each do |page|
        next unless page.data.key?(key)

        page.data[key].each do |element|
          map[element] ||= []
          map[element] << page
        end
      end
      map
    end
  end

  # Page listing all pages with a tag.
  class TagPage < Page
    def initialize(site, base, dir, tag, pages)
      @site = site
      @base = base
      @dir = dir
      @pages = pages
      @name = "#{Utils.slugify(tag)}.html"

      process(@name)
      read_yaml(File.join(base, '_layouts'), 'tag.html')
      data['tag'] = tag
      data['pages'] = pages
    end
  end

  # Page listing all pages with a person.
  class PersonPage < Page
    def initialize(site, base, dir, person, pages)
      @site = site
      @base = base
      @dir = dir
      @pages = pages
      @name = "#{Utils.slugify(person)}.html"

      process(@name)
      read_yaml(File.join(base, '_layouts'), 'person.html')
      data['person'] = person
      data['pages'] = pages
    end
  end

  # Page listing all pages of a given type.
  class TypePage < Page
    def initialize(site, base, dir, type, pages)
      @site = site
      @base = base
      @dir = dir
      @pages = pages
      @name = "#{Utils.slugify(type)}.html"

      process(@name)
      read_yaml(File.join(base, '_layouts'), 'type.html')
      data['type'] = type
      data['pages'] = pages
    end
  end
end
