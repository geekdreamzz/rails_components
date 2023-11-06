module RailsComponents
  module Ai
    class BottomCenter < ::RailsComponents::Base
      set_partial "components/ai/bottom_center"

      # add custom props and assign vals in the args initializer
      def dynamic_props
        %W{ bg_color size }
      end
    end
  end
end
