# typed: strong

module Hanzoai
  module Models
    class CredentialItem < Hanzoai::BaseModel
      sig { returns(T.anything) }
      attr_accessor :credential_info

      sig { returns(String) }
      attr_accessor :credential_name

      sig { returns(T.anything) }
      attr_accessor :credential_values

      sig do
        params(credential_info: T.anything, credential_name: String, credential_values: T.anything)
          .returns(T.attached_class)
      end
      def self.new(credential_info:, credential_name:, credential_values:)
      end

      sig do
        override.returns(
          {
            credential_info: T.anything,
            credential_name: String,
            credential_values: T.anything
          }
        )
      end
      def to_hash
      end
    end
  end
end
