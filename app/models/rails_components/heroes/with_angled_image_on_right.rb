module RailsComponents
  module Heroes
    class WithAngledImageOnRight < ::RailsComponents::Base
      set_partial "components/heroes/with_angled_image_on_right"

      # add custom props and assign vals in the args initializer
      def dynamic_props
        %W{ heading nav_links read_more_link short_desc }
      end
    end
  end
end
