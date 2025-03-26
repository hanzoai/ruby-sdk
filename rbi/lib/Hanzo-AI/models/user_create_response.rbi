# typed: strong

module HanzoAI
  module Models
    class UserCreateResponse < HanzoAI::BaseModel
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires

      sig { returns(String) }
      attr_accessor :key

      sig { returns(T.nilable(String)) }
      attr_accessor :token

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :aliases

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :allowed_cache_controls

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :blocked

      sig { returns(T.nilable(String)) }
      attr_accessor :budget_duration

      sig { returns(T.nilable(String)) }
      attr_accessor :budget_id

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :config

      sig { returns(T.nilable(String)) }
      attr_accessor :created_by

      sig { returns(T.nilable(String)) }
      attr_accessor :duration

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :enforced_params

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :guardrails

      sig { returns(T.nilable(String)) }
      attr_accessor :key_alias

      sig { returns(T.nilable(String)) }
      attr_accessor :key_name

      sig { returns(T.nilable(T.anything)) }
      attr_reader :llm_budget_table

      sig { params(llm_budget_table: T.anything).void }
      attr_writer :llm_budget_table

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget

      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_parallel_requests

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :model_max_budget

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :model_rpm_limit

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :model_tpm_limit

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :models

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :permissions

      sig { returns(T.nilable(Integer)) }
      attr_accessor :rpm_limit

      sig { returns(T.nilable(Float)) }
      attr_accessor :spend

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :tags

      sig { returns(T.nilable(String)) }
      attr_accessor :team_id

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :teams

      sig { returns(T.nilable(String)) }
      attr_accessor :token_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :tpm_limit

      sig { returns(T.nilable(String)) }
      attr_accessor :updated_by

      sig { returns(T.nilable(String)) }
      attr_accessor :user_alias

      sig { returns(T.nilable(String)) }
      attr_accessor :user_email

      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig { returns(T.nilable(HanzoAI::Models::UserCreateResponse::UserRole::TaggedSymbol)) }
      attr_accessor :user_role

      sig do
        params(
          expires: T.nilable(Time),
          key: String,
          token: T.nilable(String),
          aliases: T.nilable(T.anything),
          allowed_cache_controls: T.nilable(T::Array[T.anything]),
          blocked: T.nilable(T::Boolean),
          budget_duration: T.nilable(String),
          budget_id: T.nilable(String),
          config: T.nilable(T.anything),
          created_by: T.nilable(String),
          duration: T.nilable(String),
          enforced_params: T.nilable(T::Array[String]),
          guardrails: T.nilable(T::Array[String]),
          key_alias: T.nilable(String),
          key_name: T.nilable(String),
          llm_budget_table: T.anything,
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          metadata: T.nilable(T.anything),
          model_max_budget: T.nilable(T.anything),
          model_rpm_limit: T.nilable(T.anything),
          model_tpm_limit: T.nilable(T.anything),
          models: T.nilable(T::Array[T.anything]),
          permissions: T.nilable(T.anything),
          rpm_limit: T.nilable(Integer),
          spend: T.nilable(Float),
          tags: T.nilable(T::Array[String]),
          team_id: T.nilable(String),
          teams: T.nilable(T::Array[T.anything]),
          token_id: T.nilable(String),
          tpm_limit: T.nilable(Integer),
          updated_by: T.nilable(String),
          user_alias: T.nilable(String),
          user_email: T.nilable(String),
          user_id: T.nilable(String),
          user_role: T.nilable(HanzoAI::Models::UserCreateResponse::UserRole::OrSymbol)
        )
          .returns(T.attached_class)
      end
      def self.new(
        expires:,
        key:,
        token: nil,
        aliases: nil,
        allowed_cache_controls: nil,
        blocked: nil,
        budget_duration: nil,
        budget_id: nil,
        config: nil,
        created_by: nil,
        duration: nil,
        enforced_params: nil,
        guardrails: nil,
        key_alias: nil,
        key_name: nil,
        llm_budget_table: nil,
        max_budget: nil,
        max_parallel_requests: nil,
        metadata: nil,
        model_max_budget: nil,
        model_rpm_limit: nil,
        model_tpm_limit: nil,
        models: nil,
        permissions: nil,
        rpm_limit: nil,
        spend: nil,
        tags: nil,
        team_id: nil,
        teams: nil,
        token_id: nil,
        tpm_limit: nil,
        updated_by: nil,
        user_alias: nil,
        user_email: nil,
        user_id: nil,
        user_role: nil
      )
      end

      sig do
        override
          .returns(
            {
              expires: T.nilable(Time),
              key: String,
              token: T.nilable(String),
              aliases: T.nilable(T.anything),
              allowed_cache_controls: T.nilable(T::Array[T.anything]),
              blocked: T.nilable(T::Boolean),
              budget_duration: T.nilable(String),
              budget_id: T.nilable(String),
              config: T.nilable(T.anything),
              created_by: T.nilable(String),
              duration: T.nilable(String),
              enforced_params: T.nilable(T::Array[String]),
              guardrails: T.nilable(T::Array[String]),
              key_alias: T.nilable(String),
              key_name: T.nilable(String),
              llm_budget_table: T.anything,
              max_budget: T.nilable(Float),
              max_parallel_requests: T.nilable(Integer),
              metadata: T.nilable(T.anything),
              model_max_budget: T.nilable(T.anything),
              model_rpm_limit: T.nilable(T.anything),
              model_tpm_limit: T.nilable(T.anything),
              models: T.nilable(T::Array[T.anything]),
              permissions: T.nilable(T.anything),
              rpm_limit: T.nilable(Integer),
              spend: T.nilable(Float),
              tags: T.nilable(T::Array[String]),
              team_id: T.nilable(String),
              teams: T.nilable(T::Array[T.anything]),
              token_id: T.nilable(String),
              tpm_limit: T.nilable(Integer),
              updated_by: T.nilable(String),
              user_alias: T.nilable(String),
              user_email: T.nilable(String),
              user_id: T.nilable(String),
              user_role: T.nilable(HanzoAI::Models::UserCreateResponse::UserRole::TaggedSymbol)
            }
          )
      end
      def to_hash
      end

      module UserRole
        extend HanzoAI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, HanzoAI::Models::UserCreateResponse::UserRole) }
        OrSymbol = T.type_alias { T.any(Symbol, HanzoAI::Models::UserCreateResponse::UserRole::TaggedSymbol) }

        PROXY_ADMIN = T.let(:proxy_admin, HanzoAI::Models::UserCreateResponse::UserRole::TaggedSymbol)
        PROXY_ADMIN_VIEWER =
          T.let(:proxy_admin_viewer, HanzoAI::Models::UserCreateResponse::UserRole::TaggedSymbol)
        INTERNAL_USER = T.let(:internal_user, HanzoAI::Models::UserCreateResponse::UserRole::TaggedSymbol)
        INTERNAL_USER_VIEWER =
          T.let(:internal_user_viewer, HanzoAI::Models::UserCreateResponse::UserRole::TaggedSymbol)

        sig { override.returns(T::Array[HanzoAI::Models::UserCreateResponse::UserRole::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
