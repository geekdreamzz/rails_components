module RailsComponents
  module Grids
    class TextInfo < ::RailsComponents::Base
      set_partial "components/grids/text_info"

      # add custom props and assign vals in the args initializer
      def dynamic_props
        %W{ items }
      end
    end
  end
end
