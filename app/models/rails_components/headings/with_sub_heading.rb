module RailsComponents
  module Headings
    class WithSubHeading < ::RailsComponents::Base
      set_partial "components/headings/with_subheading"

      # add custom props and assign vals in the args initializer
      def dynamic_props
        %W{ heading subheading }
      end
    end
  end
end
