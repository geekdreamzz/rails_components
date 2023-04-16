module RailsComponents
  module Headings
    class WithAction < ::RailsComponents::Base
      set_partial "components/headings/with_action"

      # add custom props and assign vals in the args initializer
      def dynamic_props
        %W{ heading action_label onclick }
      end
    end
  end
end
