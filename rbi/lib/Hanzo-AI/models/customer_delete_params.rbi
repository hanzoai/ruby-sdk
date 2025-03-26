# typed: strong

module HanzoAI
  module Models
    class CustomerDeleteParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(T::Array[String]) }
      attr_accessor :user_ids

      sig do
        params(
          user_ids: T::Array[String],
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(user_ids:, request_options: {})
      end

      sig { override.returns({user_ids: T::Array[String], request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
