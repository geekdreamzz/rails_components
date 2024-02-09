module RailsComponents
  module Nav
    module Top
      class FixedHeader < ::RailsComponents::Base
        set_partial "components/nav/top/fixed_header"

        # add custom props and assign vals in the args initializer
        def dynamic_props
          %W{ heading list1 list2 feature1 feature2 items styles }
        end

        def initialize(**args)
          super
          self.items = args[:items]
        end

      end
    end
  end
end
