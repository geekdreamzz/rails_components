module RailsComponents
  module Headings
    class WithDescription < ::RailsComponents::Base
      set_partial "components/headings/with_description"

      # add custom props and assign vals in the args initializer
      def dynamic_props
        %W{ heading description }
      end
    end
  end
end
