require 'view_component'
ViewComponent::Base.config.view_component_path = ''

module RailsComponents
  class Base < ::ViewComponent::Base
    def initialize(**args)
      super
      (Config::DEFAULT_PROPS | dynamic_props).each do |prop|
        # Dynamically define the getter method
        self.class.define_method(prop) do
          instance_variable_get("@#{prop}")
        end

        # Dynamically define the setter method
        self.class.define_method("#{prop}=") do |value|
          instance_variable_set("@#{prop}", value)
        end

        send("#{prop}=", RailsComponents.config.send(prop)) if RailsComponents.config.respond_to?(prop)
      end

      set_dynamic_props(**args)
    end

    # a way for sub-classes to override/add custom props/vals
    def dynamic_props
      []
    end

    def set_dynamic_props(**args)
      args.each do |prop,value|
        instance_variable_set("@#{prop}", value)
        instance_variable_get("@#{prop}")
      end
    end

    def partial_props
      return @partial_props if @partial_props
      @partial_props = (Config::DEFAULT_PROPS | dynamic_props).map{|prop| [prop.to_sym, send(prop)] }.to_h
      @partial_props[:model] = self
      @partial_props
    end

    def call
      render partial: self.class.partial, locals: partial_props
    end

    class << self
      def set_partial(partial_path = '')
        @partial = partial_path
      end

      def partial
        @partial
      end

      def anchor_ref(label)
        label.strip.downcase.split.compact.map(&:strip).join('-')
      end
    end

  end
end
