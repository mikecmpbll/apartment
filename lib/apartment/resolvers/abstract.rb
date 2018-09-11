module Apartment
  module Resolvers
    class Abstract
      attr_accessor :init_config, :tenant_names

      def initialize(init_config, tenant_names)
        @init_config = init_config.freeze
        @tenant_names = tenant_names.freeze
      end

      def resolve
        raise "Cannot use abstract class directly"
      end
    end
  end
end
