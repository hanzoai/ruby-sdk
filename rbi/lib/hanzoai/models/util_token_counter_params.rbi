# typed: strong

module Hanzoai
  module Models
    class UtilTokenCounterParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(String) }
      attr_accessor :model

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :messages

      sig { returns(T.nilable(String)) }
      attr_accessor :prompt

      sig do
        params(
          model: String,
          messages: T.nilable(T::Array[T.anything]),
          prompt: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(model:, messages: nil, prompt: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              model: String,
              messages: T.nilable(T::Array[T.anything]),
              prompt: T.nilable(String),
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
