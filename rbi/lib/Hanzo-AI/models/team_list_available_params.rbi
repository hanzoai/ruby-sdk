# typed: strong

module HanzoAI
  module Models
    class TeamListAvailableParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(T.nilable(T.anything)) }
      attr_reader :response_model

      sig { params(response_model: T.anything).void }
      attr_writer :response_model

      sig do
        params(
          response_model: T.anything,
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(response_model: nil, request_options: {})
      end

      sig { override.returns({response_model: T.anything, request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
