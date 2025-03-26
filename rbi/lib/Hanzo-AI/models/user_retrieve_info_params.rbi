# typed: strong

module HanzoAI
  module Models
    class UserRetrieveInfoParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # User ID in the request parameters
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          user_id: T.nilable(String),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(user_id: nil, request_options: {})
      end

      sig { override.returns({user_id: T.nilable(String), request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
