# typed: strong

module HanzoAI
  module Models
    class SettingRetrieveParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig do
        params(
          request_options: T.any(
            HanzoAI::RequestOptions,
            HanzoAI::Util::AnyHash
          )
        ).returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
