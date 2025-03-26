# typed: strong

module Hanzoai
  module Models
    class TeamListAvailableParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T.nilable(T.anything)) }
      attr_reader :response_model

      sig { params(response_model: T.anything).void }
      attr_writer :response_model

      sig do
        params(
          response_model: T.anything,
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(response_model: nil, request_options: {})
      end

      sig { override.returns({response_model: T.anything, request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
