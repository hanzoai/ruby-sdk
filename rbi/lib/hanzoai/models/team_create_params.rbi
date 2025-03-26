# typed: strong

module Hanzoai
  module Models
    class TeamCreateParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_reader :admins

      sig { params(admins: T::Array[T.anything]).void }
      attr_writer :admins

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :blocked

      sig { params(blocked: T::Boolean).void }
      attr_writer :blocked

      sig { returns(T.nilable(String)) }
      attr_accessor :budget_duration

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :guardrails

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_reader :members

      sig { params(members: T::Array[T.anything]).void }
      attr_writer :members

      sig { returns(T.nilable(T::Array[Hanzoai::Models::Member])) }
      attr_reader :members_with_roles

      sig { params(members_with_roles: T::Array[T.any(Hanzoai::Models::Member, Hanzoai::Util::AnyHash)]).void }
      attr_writer :members_with_roles

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :model_aliases

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_reader :models

      sig { params(models: T::Array[T.anything]).void }
      attr_writer :models

      sig { returns(T.nilable(String)) }
      attr_accessor :organization_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :rpm_limit

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :tags

      sig { returns(T.nilable(String)) }
      attr_accessor :team_alias

      sig { returns(T.nilable(String)) }
      attr_accessor :team_id

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
          admins: T::Array[T.anything],
          blocked: T::Boolean,
          budget_duration: T.nilable(String),
          guardrails: T.nilable(T::Array[String]),
          max_budget: T.nilable(Float),
          members: T::Array[T.anything],
          members_with_roles: T::Array[T.any(Hanzoai::Models::Member, Hanzoai::Util::AnyHash)],
          metadata: T.nilable(T.anything),
          model_aliases: T.nilable(T.anything),
          models: T::Array[T.anything],
          organization_id: T.nilable(String),
          rpm_limit: T.nilable(Integer),
          tags: T.nilable(T::Array[T.anything]),
          team_alias: T.nilable(String),
          team_id: T.nilable(String),
          tpm_limit: T.nilable(Integer),
          llm_changed_by: String,
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        admins: nil,
        blocked: nil,
        budget_duration: nil,
        guardrails: nil,
        max_budget: nil,
        members: nil,
        members_with_roles: nil,
        metadata: nil,
        model_aliases: nil,
        models: nil,
        organization_id: nil,
        rpm_limit: nil,
        tags: nil,
        team_alias: nil,
        team_id: nil,
        tpm_limit: nil,
        llm_changed_by: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              admins: T::Array[T.anything],
              blocked: T::Boolean,
              budget_duration: T.nilable(String),
              guardrails: T.nilable(T::Array[String]),
              max_budget: T.nilable(Float),
              members: T::Array[T.anything],
              members_with_roles: T::Array[Hanzoai::Models::Member],
              metadata: T.nilable(T.anything),
              model_aliases: T.nilable(T.anything),
              models: T::Array[T.anything],
              organization_id: T.nilable(String),
              rpm_limit: T.nilable(Integer),
              tags: T.nilable(T::Array[T.anything]),
              team_alias: T.nilable(String),
              team_id: T.nilable(String),
              tpm_limit: T.nilable(Integer),
              llm_changed_by: String,
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
