# typed: strong

module Hanzoai
  module Models
    class TeamCreateResponse < Hanzoai::BaseModel
      sig { returns(String) }
      attr_accessor :team_id

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

      sig { returns(T.nilable(Time)) }
      attr_accessor :budget_reset_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      sig { returns(T.nilable(Hanzoai::Models::TeamCreateResponse::LlmModelTable)) }
      attr_reader :llm_model_table

      sig do
        params(
          llm_model_table: T.nilable(T.any(Hanzoai::Models::TeamCreateResponse::LlmModelTable, Hanzoai::Util::AnyHash))
        )
          .void
      end
      attr_writer :llm_model_table

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget

      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_parallel_requests

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

      sig { returns(T.nilable(Integer)) }
      attr_accessor :model_id

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_reader :models

      sig { params(models: T::Array[T.anything]).void }
      attr_writer :models

      sig { returns(T.nilable(String)) }
      attr_accessor :organization_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :rpm_limit

      sig { returns(T.nilable(Float)) }
      attr_accessor :spend

      sig { returns(T.nilable(String)) }
      attr_accessor :team_alias

      sig { returns(T.nilable(Integer)) }
      attr_accessor :tpm_limit

      sig do
        params(
          team_id: String,
          admins: T::Array[T.anything],
          blocked: T::Boolean,
          budget_duration: T.nilable(String),
          budget_reset_at: T.nilable(Time),
          created_at: T.nilable(Time),
          llm_model_table: T.nilable(T.any(Hanzoai::Models::TeamCreateResponse::LlmModelTable, Hanzoai::Util::AnyHash)),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          members: T::Array[T.anything],
          members_with_roles: T::Array[T.any(Hanzoai::Models::Member, Hanzoai::Util::AnyHash)],
          metadata: T.nilable(T.anything),
          model_id: T.nilable(Integer),
          models: T::Array[T.anything],
          organization_id: T.nilable(String),
          rpm_limit: T.nilable(Integer),
          spend: T.nilable(Float),
          team_alias: T.nilable(String),
          tpm_limit: T.nilable(Integer)
        )
          .returns(T.attached_class)
      end
      def self.new(
        team_id:,
        admins: nil,
        blocked: nil,
        budget_duration: nil,
        budget_reset_at: nil,
        created_at: nil,
        llm_model_table: nil,
        max_budget: nil,
        max_parallel_requests: nil,
        members: nil,
        members_with_roles: nil,
        metadata: nil,
        model_id: nil,
        models: nil,
        organization_id: nil,
        rpm_limit: nil,
        spend: nil,
        team_alias: nil,
        tpm_limit: nil
      )
      end

      sig do
        override
          .returns(
            {
              team_id: String,
              admins: T::Array[T.anything],
              blocked: T::Boolean,
              budget_duration: T.nilable(String),
              budget_reset_at: T.nilable(Time),
              created_at: T.nilable(Time),
              llm_model_table: T.nilable(Hanzoai::Models::TeamCreateResponse::LlmModelTable),
              max_budget: T.nilable(Float),
              max_parallel_requests: T.nilable(Integer),
              members: T::Array[T.anything],
              members_with_roles: T::Array[Hanzoai::Models::Member],
              metadata: T.nilable(T.anything),
              model_id: T.nilable(Integer),
              models: T::Array[T.anything],
              organization_id: T.nilable(String),
              rpm_limit: T.nilable(Integer),
              spend: T.nilable(Float),
              team_alias: T.nilable(String),
              tpm_limit: T.nilable(Integer)
            }
          )
      end
      def to_hash
      end

      class LlmModelTable < Hanzoai::BaseModel
        sig { returns(String) }
        attr_accessor :created_by

        sig { returns(String) }
        attr_accessor :updated_by

        sig { returns(T.nilable(T.any(T.anything, String))) }
        attr_accessor :model_aliases

        sig do
          params(created_by: String, updated_by: String, model_aliases: T.nilable(T.any(T.anything, String)))
            .returns(T.attached_class)
        end
        def self.new(created_by:, updated_by:, model_aliases: nil)
        end

        sig do
          override
            .returns({
                       created_by: String,
                       updated_by: String,
                       model_aliases: T.nilable(T.any(T.anything, String))
                     })
        end
        def to_hash
        end

        module ModelAliases
          extend Hanzoai::Union

          sig { override.returns([T.anything, String]) }
          def self.variants
          end
        end
      end
    end
  end
end
