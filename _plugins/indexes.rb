module Jekyll
  # Generate indexes.
  class IndexPages < Generator
    safe true
    def generate(site)
      index_tags(site) if site.layouts.key? 'tag'
      index_people(site) if site.layouts.key? 'person'
    end

    def index_tags(site)
      find_tags(site).each do |tag, pages|
        path = File.join('tags')
        page = TagPage.new(site, site.source, path, tag, pages)
        site.pages << page
      end
    end

    def find_tags(site)
      map = {}
      site.pages.each do |page|
        next unless page.data.key?('tags')

        page.data['tags'].each do |tag|
          map[tag] ||= []
          map[tag] << page
        end
      end
      map
    end

    def index_people(site)
      find_people(site).each do |person, pages|
        path = File.join('people')
        page = PersonPage.new(site, site.source, path, person, pages)
        site.pages << page
      end
    end

    def find_people(site)
      map = {}
      site.pages.each do |page|
        next unless page.data.key?('people')

        page.data['people'].each do |person|
          map[person] ||= []
          map[person] << page
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
end
