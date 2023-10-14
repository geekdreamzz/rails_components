module RailsComponents
  module Nav
    module Right
      class Sidebar < ::RailsComponents::Base
        set_partial 'components/nav/right/sidebar'

        # add custom props and assign vals in the args initializer
        def dynamic_props
          %W{ form_partial component_class component_args }
        end

        def initialize(**args)
          super
        end
      end
    end
  end
end
