# typed: strong

module HanzoAI
  module Models
    class CustomerRetrieveInfoParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # End User ID in the request parameters
      sig { returns(String) }
      attr_accessor :end_user_id

      sig do
        params(end_user_id: String, request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(end_user_id:, request_options: {})
      end

      sig { override.returns({end_user_id: String, request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
