module RailsComponents
  module Nav
    module Top
      module Content
        class Member < ::RailsComponents::Base
          set_partial "components/nav/top/content/member"

          # add custom props and assign vals in the args initializer
          def dynamic_props
            %W{ heading item main_content }
          end

          def initialize(**args)
            super
            self.item = args[:item]
            self.main_content = args[:item].dig(:main_content)
          end

        end

      end
    end
  end
end
