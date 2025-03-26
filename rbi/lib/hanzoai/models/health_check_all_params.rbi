# typed: strong

module Hanzoai
  module Models
    class HealthCheckAllParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # Specify the model name (optional)
      sig { returns(T.nilable(String)) }
      attr_accessor :model

      sig do
        params(
          model: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(model: nil, request_options: {})
      end

      sig { override.returns({model: T.nilable(String), request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
