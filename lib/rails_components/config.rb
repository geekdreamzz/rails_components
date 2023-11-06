require "openai"

module RailsComponents
  class Config
    DEFAULT_PROPS = %W{ bg_color company_name container_styles }.freeze

    attr_accessor :bg_color, :company_name, :container_styles, :reusable, :openai_api_key, :openai_client

    #assign default values
    def initialize
      @bg_color = 'bg-white'
      @container_styles = 'mx-auto max-w-7xl sm:px-6 lg:px-8 mt-4'
      @view_component_path = ''
      @reusable = {}
      @openai_api_key = nil
    end

    def set_openai_client
      @openai_client = OpenAI::Client.new(access_token: @openai_api_key)
    end
  end
end
