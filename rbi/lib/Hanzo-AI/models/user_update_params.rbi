# typed: strong

module HanzoAI
  module Models
    class UserUpdateParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :aliases

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :allowed_cache_controls

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :blocked

      sig { returns(T.nilable(String)) }
      attr_accessor :budget_duration

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :config

      sig { returns(T.nilable(String)) }
      attr_accessor :duration

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :guardrails

      sig { returns(T.nilable(String)) }
      attr_accessor :key_alias

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

      sig { returns(T.nilable(String)) }
      attr_accessor :password

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :permissions

      sig { returns(T.nilable(Integer)) }
      attr_accessor :rpm_limit

      sig { returns(T.nilable(Float)) }
      attr_accessor :spend

      sig { returns(T.nilable(String)) }
      attr_accessor :team_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :tpm_limit

      sig { returns(T.nilable(String)) }
      attr_accessor :user_email

      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig { returns(T.nilable(HanzoAI::Models::UserUpdateParams::UserRole::OrSymbol)) }
      attr_accessor :user_role

      sig do
        params(
          aliases: T.nilable(T.anything),
          allowed_cache_controls: T.nilable(T::Array[T.anything]),
          blocked: T.nilable(T::Boolean),
          budget_duration: T.nilable(String),
          config: T.nilable(T.anything),
          duration: T.nilable(String),
          guardrails: T.nilable(T::Array[String]),
          key_alias: T.nilable(String),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          metadata: T.nilable(T.anything),
          model_max_budget: T.nilable(T.anything),
          model_rpm_limit: T.nilable(T.anything),
          model_tpm_limit: T.nilable(T.anything),
          models: T.nilable(T::Array[T.anything]),
          password: T.nilable(String),
          permissions: T.nilable(T.anything),
          rpm_limit: T.nilable(Integer),
          spend: T.nilable(Float),
          team_id: T.nilable(String),
          tpm_limit: T.nilable(Integer),
          user_email: T.nilable(String),
          user_id: T.nilable(String),
          user_role: T.nilable(HanzoAI::Models::UserUpdateParams::UserRole::OrSymbol),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        aliases: nil,
        allowed_cache_controls: nil,
        blocked: nil,
        budget_duration: nil,
        config: nil,
        duration: nil,
        guardrails: nil,
        key_alias: nil,
        max_budget: nil,
        max_parallel_requests: nil,
        metadata: nil,
        model_max_budget: nil,
        model_rpm_limit: nil,
        model_tpm_limit: nil,
        models: nil,
        password: nil,
        permissions: nil,
        rpm_limit: nil,
        spend: nil,
        team_id: nil,
        tpm_limit: nil,
        user_email: nil,
        user_id: nil,
        user_role: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              aliases: T.nilable(T.anything),
              allowed_cache_controls: T.nilable(T::Array[T.anything]),
              blocked: T.nilable(T::Boolean),
              budget_duration: T.nilable(String),
              config: T.nilable(T.anything),
              duration: T.nilable(String),
              guardrails: T.nilable(T::Array[String]),
              key_alias: T.nilable(String),
              max_budget: T.nilable(Float),
              max_parallel_requests: T.nilable(Integer),
              metadata: T.nilable(T.anything),
              model_max_budget: T.nilable(T.anything),
              model_rpm_limit: T.nilable(T.anything),
              model_tpm_limit: T.nilable(T.anything),
              models: T.nilable(T::Array[T.anything]),
              password: T.nilable(String),
              permissions: T.nilable(T.anything),
              rpm_limit: T.nilable(Integer),
              spend: T.nilable(Float),
              team_id: T.nilable(String),
              tpm_limit: T.nilable(Integer),
              user_email: T.nilable(String),
              user_id: T.nilable(String),
              user_role: T.nilable(HanzoAI::Models::UserUpdateParams::UserRole::OrSymbol),
              request_options: HanzoAI::RequestOptions
            }
          )
      end
      def to_hash
      end

      module UserRole
        extend HanzoAI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, HanzoAI::Models::UserUpdateParams::UserRole) }
        OrSymbol = T.type_alias { T.any(Symbol, HanzoAI::Models::UserUpdateParams::UserRole::TaggedSymbol) }

        PROXY_ADMIN = T.let(:proxy_admin, HanzoAI::Models::UserUpdateParams::UserRole::TaggedSymbol)
        PROXY_ADMIN_VIEWER =
          T.let(:proxy_admin_viewer, HanzoAI::Models::UserUpdateParams::UserRole::TaggedSymbol)
        INTERNAL_USER = T.let(:internal_user, HanzoAI::Models::UserUpdateParams::UserRole::TaggedSymbol)
        INTERNAL_USER_VIEWER =
          T.let(:internal_user_viewer, HanzoAI::Models::UserUpdateParams::UserRole::TaggedSymbol)

        sig { override.returns(T::Array[HanzoAI::Models::UserUpdateParams::UserRole::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
