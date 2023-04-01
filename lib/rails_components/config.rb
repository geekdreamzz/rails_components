module RailsComponents
  class Config
    DEFAULT_PROPS = %W{ bg_color company_name }.freeze

    attr_accessor :bg_color, :company_name

    #assign default values
    def initialize
      @bg_color = 'bg-white'
    end
  end
end
