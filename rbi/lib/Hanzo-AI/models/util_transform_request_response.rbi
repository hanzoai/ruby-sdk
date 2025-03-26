# typed: strong

module HanzoAI
  module Models
    class UtilTransformRequestResponse < HanzoAI::BaseModel
      sig { returns(T.nilable(String)) }
      attr_accessor :error

      sig { returns(T.nilable(String)) }
      attr_accessor :raw_request_api_base

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :raw_request_body

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :raw_request_headers

      sig do
        params(
          error: T.nilable(String),
          raw_request_api_base: T.nilable(String),
          raw_request_body: T.nilable(T.anything),
          raw_request_headers: T.nilable(T.anything)
        )
          .returns(T.attached_class)
      end
      def self.new(error: nil, raw_request_api_base: nil, raw_request_body: nil, raw_request_headers: nil)
      end

      sig do
        override
          .returns(
            {
              error: T.nilable(String),
              raw_request_api_base: T.nilable(String),
              raw_request_body: T.nilable(T.anything),
              raw_request_headers: T.nilable(T.anything)
            }
          )
      end
      def to_hash
      end
    end
  end
end
