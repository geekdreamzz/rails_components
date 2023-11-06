module RailsComponents
  module Nav
    module Top
      class ActionMenu < ::RailsComponents::Base
        set_partial "components/nav/top/action_menu"

        # add custom props and assign vals in the args initializer
        def dynamic_props
          %W{ heading slug items }
        end

        def initialize(**args)
          super
          self.items = args[:items]
        end

      end
    end
  end
end
