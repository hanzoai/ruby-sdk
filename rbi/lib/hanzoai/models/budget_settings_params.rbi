# typed: strong

module Hanzoai
  module Models
    class BudgetSettingsParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(String) }
      attr_accessor :budget_id

      sig do
        params(budget_id: String, request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(budget_id:, request_options: {})
      end

      sig { override.returns({budget_id: String, request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
