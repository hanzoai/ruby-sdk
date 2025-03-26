# typed: strong

module Hanzoai
  module Models
    class CustomerListResponseItem < Hanzoai::BaseModel
      sig { returns(T::Boolean) }
      attr_accessor :blocked

      sig { returns(String) }
      attr_accessor :user_id

      sig { returns(T.nilable(String)) }
      attr_accessor :alias_

      sig { returns(T.nilable(Hanzoai::Models::CustomerListResponseItem::AllowedModelRegion::TaggedSymbol)) }
      attr_accessor :allowed_model_region

      sig { returns(T.nilable(String)) }
      attr_accessor :default_model

      # Represents user-controllable params for a LLM_BudgetTable record
      sig { returns(T.nilable(Hanzoai::Models::CustomerListResponseItem::LlmBudgetTable)) }
      attr_reader :llm_budget_table

      sig do
        params(
          llm_budget_table: T.nilable(T.any(Hanzoai::Models::CustomerListResponseItem::LlmBudgetTable, Hanzoai::Util::AnyHash))
        )
          .void
      end
      attr_writer :llm_budget_table

      sig { returns(T.nilable(Float)) }
      attr_reader :spend

      sig { params(spend: Float).void }
      attr_writer :spend

      sig do
        params(
          blocked: T::Boolean,
          user_id: String,
          alias_: T.nilable(String),
          allowed_model_region: T.nilable(Hanzoai::Models::CustomerListResponseItem::AllowedModelRegion::OrSymbol),
          default_model: T.nilable(String),
          llm_budget_table: T.nilable(T.any(Hanzoai::Models::CustomerListResponseItem::LlmBudgetTable, Hanzoai::Util::AnyHash)),
          spend: Float
        )
          .returns(T.attached_class)
      end
      def self.new(
        blocked:,
        user_id:,
        alias_: nil,
        allowed_model_region: nil,
        default_model: nil,
        llm_budget_table: nil,
        spend: nil
      )
      end

      sig do
        override
          .returns(
            {
              blocked: T::Boolean,
              user_id: String,
              alias_: T.nilable(String),
              allowed_model_region: T.nilable(Hanzoai::Models::CustomerListResponseItem::AllowedModelRegion::TaggedSymbol),
              default_model: T.nilable(String),
              llm_budget_table: T.nilable(Hanzoai::Models::CustomerListResponseItem::LlmBudgetTable),
              spend: Float
            }
          )
      end
      def to_hash
      end

      module AllowedModelRegion
        extend Hanzoai::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Hanzoai::Models::CustomerListResponseItem::AllowedModelRegion) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Hanzoai::Models::CustomerListResponseItem::AllowedModelRegion::TaggedSymbol) }

        EU = T.let(:eu, Hanzoai::Models::CustomerListResponseItem::AllowedModelRegion::TaggedSymbol)
        US = T.let(:us, Hanzoai::Models::CustomerListResponseItem::AllowedModelRegion::TaggedSymbol)

        sig { override.returns(T::Array[Hanzoai::Models::CustomerListResponseItem::AllowedModelRegion::TaggedSymbol]) }
        def self.values
        end
      end

      class LlmBudgetTable < Hanzoai::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :budget_duration

        sig { returns(T.nilable(Float)) }
        attr_accessor :max_budget

        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_parallel_requests

        sig { returns(T.nilable(T.anything)) }
        attr_accessor :model_max_budget

        sig { returns(T.nilable(Integer)) }
        attr_accessor :rpm_limit

        sig { returns(T.nilable(Float)) }
        attr_accessor :soft_budget

        sig { returns(T.nilable(Integer)) }
        attr_accessor :tpm_limit

        # Represents user-controllable params for a LLM_BudgetTable record
        sig do
          params(
            budget_duration: T.nilable(String),
            max_budget: T.nilable(Float),
            max_parallel_requests: T.nilable(Integer),
            model_max_budget: T.nilable(T.anything),
            rpm_limit: T.nilable(Integer),
            soft_budget: T.nilable(Float),
            tpm_limit: T.nilable(Integer)
          )
            .returns(T.attached_class)
        end
        def self.new(
          budget_duration: nil,
          max_budget: nil,
          max_parallel_requests: nil,
          model_max_budget: nil,
          rpm_limit: nil,
          soft_budget: nil,
          tpm_limit: nil
        )
        end

        sig do
          override
            .returns(
              {
                budget_duration: T.nilable(String),
                max_budget: T.nilable(Float),
                max_parallel_requests: T.nilable(Integer),
                model_max_budget: T.nilable(T.anything),
                rpm_limit: T.nilable(Integer),
                soft_budget: T.nilable(Float),
                tpm_limit: T.nilable(Integer)
              }
            )
        end
        def to_hash
        end
      end
    end

    CustomerListResponse =
      T.let(Hanzoai::ArrayOf[Hanzoai::Models::CustomerListResponseItem], Hanzoai::Converter)
  end
end
