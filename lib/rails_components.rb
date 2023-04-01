require "rails_components/version"
require "rails_components/engine"
require "rails_components/config"

module RailsComponents
  class << self
    # Provide a method to access the configuration object
    def config
      @config ||= Config.new
    end

    # Provide a method to configure the engine
    def configure
      yield(config) if block_given?
    end
  end
end
