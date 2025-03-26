# typed: strong

module HanzoAI
  module Models
    class ProviderListBudgetsResponse < HanzoAI::BaseModel
      sig { returns(T.nilable(T::Hash[Symbol, HanzoAI::Models::ProviderListBudgetsResponse::Provider])) }
      attr_reader :providers

      sig do
        params(
          providers: T::Hash[Symbol, T.any(HanzoAI::Models::ProviderListBudgetsResponse::Provider, HanzoAI::Util::AnyHash)]
        )
          .void
      end
      attr_writer :providers

      # Complete provider budget configuration and status. Maps provider names to their
      #   budget configs.
      sig do
        params(
          providers: T::Hash[Symbol, T.any(HanzoAI::Models::ProviderListBudgetsResponse::Provider, HanzoAI::Util::AnyHash)]
        )
          .returns(T.attached_class)
      end
      def self.new(providers: nil)
      end

      sig { override.returns({providers: T::Hash[Symbol, HanzoAI::Models::ProviderListBudgetsResponse::Provider]}) }
      def to_hash
      end

      class Provider < HanzoAI::BaseModel
        sig { returns(T.nilable(Float)) }
        attr_accessor :budget_limit

        sig { returns(T.nilable(String)) }
        attr_accessor :time_period

        sig { returns(T.nilable(String)) }
        attr_accessor :budget_reset_at

        sig { returns(T.nilable(Float)) }
        attr_accessor :spend

        # Configuration for a single provider's budget settings
        sig do
          params(
            budget_limit: T.nilable(Float),
            time_period: T.nilable(String),
            budget_reset_at: T.nilable(String),
            spend: T.nilable(Float)
          )
            .returns(T.attached_class)
        end
        def self.new(budget_limit:, time_period:, budget_reset_at: nil, spend: nil)
        end

        sig do
          override
            .returns(
              {
                budget_limit: T.nilable(Float),
                time_period: T.nilable(String),
                budget_reset_at: T.nilable(String),
                spend: T.nilable(Float)
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
