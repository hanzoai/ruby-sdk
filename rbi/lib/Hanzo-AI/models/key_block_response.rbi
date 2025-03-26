# typed: strong

module HanzoAI
  module Models
    class KeyBlockResponse < HanzoAI::BaseModel
      sig { returns(T.nilable(String)) }
      attr_accessor :token

      sig { returns(T.nilable(T.anything)) }
      attr_reader :aliases

      sig { params(aliases: T.anything).void }
      attr_writer :aliases

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :allowed_cache_controls

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :blocked

      sig { returns(T.nilable(String)) }
      attr_accessor :budget_duration

      sig { returns(T.nilable(Time)) }
      attr_accessor :budget_reset_at

      sig { returns(T.nilable(T.anything)) }
      attr_reader :config

      sig { params(config: T.anything).void }
      attr_writer :config

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :created_by

      sig { returns(T.nilable(T.any(String, Time))) }
      attr_accessor :expires

      sig { returns(T.nilable(String)) }
      attr_accessor :key_alias

      sig { returns(T.nilable(String)) }
      attr_accessor :key_name

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :llm_budget_table

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget

      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_parallel_requests

      sig { returns(T.nilable(T.anything)) }
      attr_reader :metadata

      sig { params(metadata: T.anything).void }
      attr_writer :metadata

      sig { returns(T.nilable(T.anything)) }
      attr_reader :model_max_budget

      sig { params(model_max_budget: T.anything).void }
      attr_writer :model_max_budget

      sig { returns(T.nilable(T.anything)) }
      attr_reader :model_spend

      sig { params(model_spend: T.anything).void }
      attr_writer :model_spend

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_reader :models

      sig { params(models: T::Array[T.anything]).void }
      attr_writer :models

      sig { returns(T.nilable(String)) }
      attr_accessor :org_id

      sig { returns(T.nilable(T.anything)) }
      attr_reader :permissions

      sig { params(permissions: T.anything).void }
      attr_writer :permissions

      sig { returns(T.nilable(Integer)) }
      attr_accessor :rpm_limit

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :soft_budget_cooldown

      sig { params(soft_budget_cooldown: T::Boolean).void }
      attr_writer :soft_budget_cooldown

      sig { returns(T.nilable(Float)) }
      attr_reader :spend

      sig { params(spend: Float).void }
      attr_writer :spend

      sig { returns(T.nilable(String)) }
      attr_accessor :team_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :tpm_limit

      sig { returns(T.nilable(Time)) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_accessor :updated_by

      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          token: T.nilable(String),
          aliases: T.anything,
          allowed_cache_controls: T.nilable(T::Array[T.anything]),
          blocked: T.nilable(T::Boolean),
          budget_duration: T.nilable(String),
          budget_reset_at: T.nilable(Time),
          config: T.anything,
          created_at: T.nilable(Time),
          created_by: T.nilable(String),
          expires: T.nilable(T.any(String, Time)),
          key_alias: T.nilable(String),
          key_name: T.nilable(String),
          llm_budget_table: T.nilable(T.anything),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          metadata: T.anything,
          model_max_budget: T.anything,
          model_spend: T.anything,
          models: T::Array[T.anything],
          org_id: T.nilable(String),
          permissions: T.anything,
          rpm_limit: T.nilable(Integer),
          soft_budget_cooldown: T::Boolean,
          spend: Float,
          team_id: T.nilable(String),
          tpm_limit: T.nilable(Integer),
          updated_at: T.nilable(Time),
          updated_by: T.nilable(String),
          user_id: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        token: nil,
        aliases: nil,
        allowed_cache_controls: nil,
        blocked: nil,
        budget_duration: nil,
        budget_reset_at: nil,
        config: nil,
        created_at: nil,
        created_by: nil,
        expires: nil,
        key_alias: nil,
        key_name: nil,
        llm_budget_table: nil,
        max_budget: nil,
        max_parallel_requests: nil,
        metadata: nil,
        model_max_budget: nil,
        model_spend: nil,
        models: nil,
        org_id: nil,
        permissions: nil,
        rpm_limit: nil,
        soft_budget_cooldown: nil,
        spend: nil,
        team_id: nil,
        tpm_limit: nil,
        updated_at: nil,
        updated_by: nil,
        user_id: nil
      )
      end

      sig do
        override
          .returns(
            {
              token: T.nilable(String),
              aliases: T.anything,
              allowed_cache_controls: T.nilable(T::Array[T.anything]),
              blocked: T.nilable(T::Boolean),
              budget_duration: T.nilable(String),
              budget_reset_at: T.nilable(Time),
              config: T.anything,
              created_at: T.nilable(Time),
              created_by: T.nilable(String),
              expires: T.nilable(T.any(String, Time)),
              key_alias: T.nilable(String),
              key_name: T.nilable(String),
              llm_budget_table: T.nilable(T.anything),
              max_budget: T.nilable(Float),
              max_parallel_requests: T.nilable(Integer),
              metadata: T.anything,
              model_max_budget: T.anything,
              model_spend: T.anything,
              models: T::Array[T.anything],
              org_id: T.nilable(String),
              permissions: T.anything,
              rpm_limit: T.nilable(Integer),
              soft_budget_cooldown: T::Boolean,
              spend: Float,
              team_id: T.nilable(String),
              tpm_limit: T.nilable(Integer),
              updated_at: T.nilable(Time),
              updated_by: T.nilable(String),
              user_id: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      module Expires
        extend HanzoAI::Union

        sig { override.returns([String, Time]) }
        def self.variants
        end
      end
    end
  end
end
