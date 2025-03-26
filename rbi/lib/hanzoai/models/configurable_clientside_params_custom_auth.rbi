# typed: strong

module Hanzoai
  module Models
    class ConfigurableClientsideParamsCustomAuth < Hanzoai::BaseModel
      sig { returns(String) }
      attr_accessor :api_base

      sig { params(api_base: String).returns(T.attached_class) }
      def self.new(api_base:)
      end

      sig { override.returns({api_base: String}) }
      def to_hash
      end
    end
  end
end
