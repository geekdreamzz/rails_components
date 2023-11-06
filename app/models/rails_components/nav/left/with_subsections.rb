module RailsComponents
  module Nav
    module Left
      class WithSubsections < ::RailsComponents::Base
        set_partial 'components/nav/top/with_hero_flyout'

        # add custom props and assign vals in the args initializer
        def dynamic_props
          %W{ sections }
        end

        def initialize(**args)
          super
          self.sections = args[:sections]
        end
      end
    end
  end
end
