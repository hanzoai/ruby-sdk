# typed: strong

module HanzoAI
  module Models
    class KeyGenerateParams < HanzoAI::BaseModel
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

      sig { returns(T.nilable(String)) }
      attr_accessor :budget_id

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :config

      sig { returns(T.nilable(String)) }
      attr_accessor :duration

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :enforced_params

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :guardrails

      sig { returns(T.nilable(String)) }
      attr_accessor :key

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

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :permissions

      sig { returns(T.nilable(Integer)) }
      attr_accessor :rpm_limit

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_invite_email

      sig { returns(T.nilable(Float)) }
      attr_accessor :soft_budget

      sig { returns(T.nilable(Float)) }
      attr_accessor :spend

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :tags

      sig { returns(T.nilable(String)) }
      attr_accessor :team_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :tpm_limit

      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      # The llm-changed-by header enables tracking of actions performed by authorized
      #   users on behalf of other users, providing an audit trail for accountability
      sig { returns(T.nilable(String)) }
      attr_reader :llm_changed_by

      sig { params(llm_changed_by: String).void }
      attr_writer :llm_changed_by

      sig do
        params(
          aliases: T.nilable(T.anything),
          allowed_cache_controls: T.nilable(T::Array[T.anything]),
          blocked: T.nilable(T::Boolean),
          budget_duration: T.nilable(String),
          budget_id: T.nilable(String),
          config: T.nilable(T.anything),
          duration: T.nilable(String),
          enforced_params: T.nilable(T::Array[String]),
          guardrails: T.nilable(T::Array[String]),
          key: T.nilable(String),
          key_alias: T.nilable(String),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          metadata: T.nilable(T.anything),
          model_max_budget: T.nilable(T.anything),
          model_rpm_limit: T.nilable(T.anything),
          model_tpm_limit: T.nilable(T.anything),
          models: T.nilable(T::Array[T.anything]),
          permissions: T.nilable(T.anything),
          rpm_limit: T.nilable(Integer),
          send_invite_email: T.nilable(T::Boolean),
          soft_budget: T.nilable(Float),
          spend: T.nilable(Float),
          tags: T.nilable(T::Array[String]),
          team_id: T.nilable(String),
          tpm_limit: T.nilable(Integer),
          user_id: T.nilable(String),
          llm_changed_by: String,
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        aliases: nil,
        allowed_cache_controls: nil,
        blocked: nil,
        budget_duration: nil,
        budget_id: nil,
        config: nil,
        duration: nil,
        enforced_params: nil,
        guardrails: nil,
        key: nil,
        key_alias: nil,
        max_budget: nil,
        max_parallel_requests: nil,
        metadata: nil,
        model_max_budget: nil,
        model_rpm_limit: nil,
        model_tpm_limit: nil,
        models: nil,
        permissions: nil,
        rpm_limit: nil,
        send_invite_email: nil,
        soft_budget: nil,
        spend: nil,
        tags: nil,
        team_id: nil,
        tpm_limit: nil,
        user_id: nil,
        llm_changed_by: nil,
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
              budget_id: T.nilable(String),
              config: T.nilable(T.anything),
              duration: T.nilable(String),
              enforced_params: T.nilable(T::Array[String]),
              guardrails: T.nilable(T::Array[String]),
              key: T.nilable(String),
              key_alias: T.nilable(String),
              max_budget: T.nilable(Float),
              max_parallel_requests: T.nilable(Integer),
              metadata: T.nilable(T.anything),
              model_max_budget: T.nilable(T.anything),
              model_rpm_limit: T.nilable(T.anything),
              model_tpm_limit: T.nilable(T.anything),
              models: T.nilable(T::Array[T.anything]),
              permissions: T.nilable(T.anything),
              rpm_limit: T.nilable(Integer),
              send_invite_email: T.nilable(T::Boolean),
              soft_budget: T.nilable(Float),
              spend: T.nilable(Float),
              tags: T.nilable(T::Array[String]),
              team_id: T.nilable(String),
              tpm_limit: T.nilable(Integer),
              user_id: T.nilable(String),
              llm_changed_by: String,
              request_options: HanzoAI::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
