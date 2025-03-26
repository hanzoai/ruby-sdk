# typed: strong

module HanzoAI
  module Models
    class BudgetInfoParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(T::Array[String]) }
      attr_accessor :budgets

      sig do
        params(
          budgets: T::Array[String],
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(budgets:, request_options: {})
      end

      sig { override.returns({budgets: T::Array[String], request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
