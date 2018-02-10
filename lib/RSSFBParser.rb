require 'rss'
require 'rest-client'
require 'rest-graph'
require 'RSSFBParser/version'
require 'RSSFBParser/configuration'

module RSSFBParser
  RSS_EXTENSIONS = ['.rss', '.xml'].freeze

  class << self
    def from_rss(url, limit = feed_limit)
      rss = RSS::Parser.parse(url)
      rss_results = []
      rss.items[0...limit].each do |rss_item|
        rss_results << rss_item_to_hash(rss_item)
      end
      rss_results
    end

    def from_facebook(url, limit = feed_limit)
      rg = RestGraph.new(access_token: facebook_access_token)
      page_id = rg.get(url)['id']
      feed = rg.get(page_id.concat('/feed'),
                    limit: limit,
                    fields: 'attachments{title,description,url}')
      feed['data'].map { |post| post['attachments']['data'][0] }
    end

    def parse(url, limit = feed_limit)
      extension = File.extname(url).split('?').first
      if RSS_EXTENSIONS.include? extension
        from_rss(url, limit)
      else
        from_facebook(url, limit)
      end
    end

    private

    def rss_item_to_hash(rss_item)
      hash = {}
      hash['title'] = rss_item.title
      hash['description'] = rss_item.description
      hash['url'] = rss_item.link
      hash
    end

    def feed_limit
      RSSFBParser.configuration.limit
    end

    def facebook_access_token
      RSSFBParser.configuration.facebook_access_token
    end
  end
end
