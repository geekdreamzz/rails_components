module RailsComponents
  module Nav
    module Right
      class AiSidebar < ::RailsComponents::Base
        set_partial 'components/nav/right/ai_sidebar'

        # add custom props and assign vals in the args initializer
        def dynamic_props
          %W{ ai_name }
        end

        def initialize(**args)
          super
        end
      end
    end
  end
end
