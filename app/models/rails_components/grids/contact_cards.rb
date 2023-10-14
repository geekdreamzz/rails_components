module RailsComponents
  module Grids
    class ContactCards < ::RailsComponents::Base
      set_partial "components/grids/contact_cards"

      # add custom props and assign vals in the args initializer
      def dynamic_props
        %W{ contacts }
      end
    end
  end
end
