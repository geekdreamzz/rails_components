module RailsComponents
  module Nav
    module Overlay
      class Full < ::RailsComponents::Base
        set_partial 'components/nav/overlay/full'

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
