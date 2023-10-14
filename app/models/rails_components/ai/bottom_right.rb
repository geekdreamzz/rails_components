module RailsComponents
  module Ai
    class BottomRight < ::RailsComponents::Base
      set_partial "components/ai/bottom_right"

      # add custom props and assign vals in the args initializer
      def dynamic_props
        %W{ bg_color size ai_name }
      end
    end
  end
end
