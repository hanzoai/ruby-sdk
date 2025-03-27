# typed: strong

module Hanzoai
  module Models
    class ModelGroupRetrieveInfoParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :model_group

      sig do
        params(
          model_group: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(model_group: nil, request_options: {})
      end

      sig { override.returns({model_group: T.nilable(String), request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
