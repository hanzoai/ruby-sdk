# typed: strong

module Hanzoai
  module Models
    class ModelDeleteParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(String) }
      attr_accessor :id

      sig do
        params(id: String, request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(id:, request_options: {})
      end

      sig { override.returns({id: String, request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
