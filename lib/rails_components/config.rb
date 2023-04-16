module RailsComponents
  class Config
    DEFAULT_PROPS = %W{ bg_color company_name container_styles }.freeze

    attr_accessor :bg_color, :company_name, :container_styles

    #assign default values
    def initialize
      @bg_color = 'bg-white'
      @container_styles = 'mx-auto max-w-7xl sm:px-6 lg:px-8 mt-4'
    end
  end
end
