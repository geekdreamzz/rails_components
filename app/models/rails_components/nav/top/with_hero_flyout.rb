module RailsComponents
  module Nav
    module Top
      class WithHeroFlyout < ::RailsComponents::Base
        set_partial "components/nav/top/with_hero_flyout"

        # add custom props and assign vals in the args initializer
        def dynamic_props
          %W{ heading list1 list2 feature1 feature2 }
        end

        def initialize(**args)
          super
          self.heading = args[:heading]
          self.list1 = args[:list1]
          self.list2 = args[:list2]
          self.feature1 = args[:feature1]
          self.feature2 = args[:feature2]
        end

      end
    end
  end
end
