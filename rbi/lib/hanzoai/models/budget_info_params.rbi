# typed: strong

module Hanzoai
  module Models
    class BudgetInfoParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T::Array[String]) }
      attr_accessor :budgets

      sig do
        params(
          budgets: T::Array[String],
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(budgets:, request_options: {})
      end

      sig { override.returns({budgets: T::Array[String], request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
