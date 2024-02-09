module RailsComponents
  module Heroes
    class WithOffsetImage < ::RailsComponents::Base
      set_partial "components/heroes/with_offset_image"

      # add custom props and assign vals in the args initializer
      def dynamic_props
        %W{ heading paragraphs hero_img }
      end
    end
  end
end
