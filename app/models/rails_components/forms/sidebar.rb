module RailsComponents
  module Forms
    class Sidebar < ::RailsComponents::Base
      set_partial "components/forms/sidebar"

      # add custom props and assign vals in the args initializer
      def dynamic_props
        %W{ crud_model }
      end
    end
  end
end
