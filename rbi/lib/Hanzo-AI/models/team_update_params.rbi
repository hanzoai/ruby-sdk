# typed: strong

module HanzoAI
  module Models
    class TeamUpdateParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(String) }
      attr_accessor :team_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :blocked

      sig { returns(T.nilable(String)) }
      attr_accessor :budget_duration

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :guardrails

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :model_aliases

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :models

      sig { returns(T.nilable(String)) }
      attr_accessor :organization_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :rpm_limit

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :tags

      sig { returns(T.nilable(String)) }
      attr_accessor :team_alias

      sig { returns(T.nilable(Integer)) }
      attr_accessor :tpm_limit

      # The llm-changed-by header enables tracking of actions performed by authorized
      #   users on behalf of other users, providing an audit trail for accountability
      sig { returns(T.nilable(String)) }
      attr_reader :llm_changed_by

      sig { params(llm_changed_by: String).void }
      attr_writer :llm_changed_by

      sig do
        params(
          team_id: String,
          blocked: T.nilable(T::Boolean),
          budget_duration: T.nilable(String),
          guardrails: T.nilable(T::Array[String]),
          max_budget: T.nilable(Float),
          metadata: T.nilable(T.anything),
          model_aliases: T.nilable(T.anything),
          models: T.nilable(T::Array[T.anything]),
          organization_id: T.nilable(String),
          rpm_limit: T.nilable(Integer),
          tags: T.nilable(T::Array[T.anything]),
          team_alias: T.nilable(String),
          tpm_limit: T.nilable(Integer),
          llm_changed_by: String,
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        team_id:,
        blocked: nil,
        budget_duration: nil,
        guardrails: nil,
        max_budget: nil,
        metadata: nil,
        model_aliases: nil,
        models: nil,
        organization_id: nil,
        rpm_limit: nil,
        tags: nil,
        team_alias: nil,
        tpm_limit: nil,
        llm_changed_by: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              team_id: String,
              blocked: T.nilable(T::Boolean),
              budget_duration: T.nilable(String),
              guardrails: T.nilable(T::Array[String]),
              max_budget: T.nilable(Float),
              metadata: T.nilable(T.anything),
              model_aliases: T.nilable(T.anything),
              models: T.nilable(T::Array[T.anything]),
              organization_id: T.nilable(String),
              rpm_limit: T.nilable(Integer),
              tags: T.nilable(T::Array[T.anything]),
              team_alias: T.nilable(String),
              tpm_limit: T.nilable(Integer),
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
