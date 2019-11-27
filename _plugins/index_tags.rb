module Jekyll
  # Generate a tag page per page.
  class IndexTags < Generator
    safe true
    def generate(site)
      return unless site.layouts.key? 'tag'

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
  end

  # Page listing all pages with a tag.
  class TagPage < Page
    def initialize(site, base, dir, tag, pages)
      @site = site
      @base = base
      @dir = dir
      @pages = pages
      @name = "#{tag}.html"

      process(@name)
      read_yaml(File.join(base, '_layouts'), 'tag.html')
      data['tag'] = tag
      data['pages'] = pages
    end
  end
end
