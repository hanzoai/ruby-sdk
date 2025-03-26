# typed: strong

module HanzoAI
  module Models
    class BudgetNew < HanzoAI::BaseModel
      # Max duration budget should be set for (e.g. '1hr', '1d', '28d')
      sig { returns(T.nilable(String)) }
      attr_accessor :budget_duration

      # The unique budget id.
      sig { returns(T.nilable(String)) }
      attr_accessor :budget_id

      # Requests will fail if this budget (in USD) is exceeded.
      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget

      # Max concurrent requests allowed for this budget id.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_parallel_requests

      # Max budget for each model (e.g. {'gpt-4o': {'max_budget': '0.0000001',
      #   'budget_duration': '1d', 'tpm_limit': 1000, 'rpm_limit': 1000}})
      sig { returns(T.nilable(T::Hash[Symbol, HanzoAI::Models::BudgetNew::ModelMaxBudget])) }
      attr_accessor :model_max_budget

      # Max requests per minute, allowed for this budget id.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :rpm_limit

      # Requests will NOT fail if this is exceeded. Will fire alerting though.
      sig { returns(T.nilable(Float)) }
      attr_accessor :soft_budget

      # Max tokens per minute, allowed for this budget id.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :tpm_limit

      sig do
        params(
          budget_duration: T.nilable(String),
          budget_id: T.nilable(String),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          model_max_budget: T.nilable(T::Hash[Symbol, T.any(HanzoAI::Models::BudgetNew::ModelMaxBudget, HanzoAI::Util::AnyHash)]),
          rpm_limit: T.nilable(Integer),
          soft_budget: T.nilable(Float),
          tpm_limit: T.nilable(Integer)
        )
          .returns(T.attached_class)
      end
      def self.new(
        budget_duration: nil,
        budget_id: nil,
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
              budget_id: T.nilable(String),
              max_budget: T.nilable(Float),
              max_parallel_requests: T.nilable(Integer),
              model_max_budget: T.nilable(T::Hash[Symbol, HanzoAI::Models::BudgetNew::ModelMaxBudget]),
              rpm_limit: T.nilable(Integer),
              soft_budget: T.nilable(Float),
              tpm_limit: T.nilable(Integer)
            }
          )
      end
      def to_hash
      end

      class ModelMaxBudget < HanzoAI::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :budget_duration

        sig { returns(T.nilable(Float)) }
        attr_accessor :max_budget

        sig { returns(T.nilable(Integer)) }
        attr_accessor :rpm_limit

        sig { returns(T.nilable(Integer)) }
        attr_accessor :tpm_limit

        sig do
          params(
            budget_duration: T.nilable(String),
            max_budget: T.nilable(Float),
            rpm_limit: T.nilable(Integer),
            tpm_limit: T.nilable(Integer)
          )
            .returns(T.attached_class)
        end
        def self.new(budget_duration: nil, max_budget: nil, rpm_limit: nil, tpm_limit: nil)
        end

        sig do
          override
            .returns(
              {
                budget_duration: T.nilable(String),
                max_budget: T.nilable(Float),
                rpm_limit: T.nilable(Integer),
                tpm_limit: T.nilable(Integer)
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
