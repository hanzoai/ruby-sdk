# typed: strong

module Hanzoai
  module Models
    class UtilTokenCounterResponse < Hanzoai::BaseModel
      sig { returns(String) }
      attr_accessor :model_used

      sig { returns(String) }
      attr_accessor :request_model

      sig { returns(String) }
      attr_accessor :tokenizer_type

      sig { returns(Integer) }
      attr_accessor :total_tokens

      sig do
        params(model_used: String, request_model: String, tokenizer_type: String, total_tokens: Integer)
          .returns(T.attached_class)
      end
      def self.new(model_used:, request_model:, tokenizer_type:, total_tokens:)
      end

      sig do
        override
          .returns({model_used: String, request_model: String, tokenizer_type: String, total_tokens: Integer})
      end
      def to_hash
      end
    end
  end
end
