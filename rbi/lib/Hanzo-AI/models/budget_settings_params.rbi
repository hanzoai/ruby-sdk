# typed: strong

module HanzoAI
  module Models
    class BudgetSettingsParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(String) }
      attr_accessor :budget_id

      sig do
        params(budget_id: String, request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(budget_id:, request_options: {})
      end

      sig { override.returns({budget_id: String, request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
