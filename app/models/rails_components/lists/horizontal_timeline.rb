module RailsComponents
  module Lists
    class HorizontalTimeline < ::RailsComponents::Base
      set_partial "components/lists/horizontal_timeline"

      # add custom props and assign vals in the args initializer
      def dynamic_props
        %W{ items }
      end
    end
  end
end
