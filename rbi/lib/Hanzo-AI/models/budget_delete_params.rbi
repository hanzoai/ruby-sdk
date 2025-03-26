# typed: strong

module HanzoAI
  module Models
    class BudgetDeleteParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(String) }
      attr_accessor :id

      sig do
        params(id: String, request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(id:, request_options: {})
      end

      sig { override.returns({id: String, request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
