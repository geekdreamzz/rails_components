module RailsComponents
  module Forms
    class Create < ::RailsComponents::Base
      set_partial "components/forms/create"

      # add custom props and assign vals in the args initializer
      def dynamic_props
        %W{ render_model }
      end
    end
  end
end
