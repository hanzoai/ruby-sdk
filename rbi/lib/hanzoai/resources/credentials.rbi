# typed: strong

module Hanzoai
  module Resources
    class Credentials
      # [BETA] endpoint. This might change unexpectedly. Stores credential in DB.
      #   Reloads credentials in memory.
      sig do
        params(
          credential_info: T.anything,
          credential_name: String,
          credential_values: T.nilable(T.anything),
          model_id: T.nilable(String),
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def create(
        credential_info:,
        credential_name:,
        credential_values: nil,
        model_id: nil,
        request_options: {}
      )
      end

      # [BETA] endpoint. This might change unexpectedly.
      sig do
        params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(T.anything)
      end
      def list(request_options: {})
      end

      # [BETA] endpoint. This might change unexpectedly.
      sig do
        params(
          credential_name: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def delete(credential_name, request_options: {})
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
