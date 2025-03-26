# typed: strong

module Hanzoai
  module Models
    class SpendCalculateSpendParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :completion_response

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :messages

      sig { returns(T.nilable(String)) }
      attr_accessor :model

      sig do
        params(
          completion_response: T.nilable(T.anything),
          messages: T.nilable(T::Array[T.anything]),
          model: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(completion_response: nil, messages: nil, model: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              completion_response: T.nilable(T.anything),
              messages: T.nilable(T::Array[T.anything]),
              model: T.nilable(String),
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
