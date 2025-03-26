# typed: strong

module Hanzoai
  module Models
    class CredentialCreateParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T.anything) }
      attr_accessor :credential_info

      sig { returns(String) }
      attr_accessor :credential_name

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :credential_values

      sig { returns(T.nilable(String)) }
      attr_accessor :model_id

      sig do
        params(
          credential_info: T.anything,
          credential_name: String,
          credential_values: T.nilable(T.anything),
          model_id: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(credential_info:, credential_name:, credential_values: nil, model_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              credential_info: T.anything,
              credential_name: String,
              credential_values: T.nilable(T.anything),
              model_id: T.nilable(String),
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
