module RSSFBParser
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configuration=(configuration)
    @configuration = configuration
  end

  def self.configure
    yield configuration
  end

  class Configuration
    attr_accessor :facebook_access_token, :limit

    def initialize
      @facebook_access_token = nil
      @limit = 10
    end
  end
end
