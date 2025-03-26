# typed: strong

module HanzoAI
  module Models
    class TeamAddMemberResponse < HanzoAI::BaseModel
      sig { returns(String) }
      attr_accessor :team_id

      sig { returns(T::Array[HanzoAI::Models::TeamAddMemberResponse::UpdatedTeamMembership]) }
      attr_accessor :updated_team_memberships

      sig { returns(T::Array[HanzoAI::Models::TeamAddMemberResponse::UpdatedUser]) }
      attr_accessor :updated_users

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

      sig { returns(T.nilable(HanzoAI::Models::TeamAddMemberResponse::LlmModelTable)) }
      attr_reader :llm_model_table

      sig do
        params(
          llm_model_table: T.nilable(T.any(HanzoAI::Models::TeamAddMemberResponse::LlmModelTable, HanzoAI::Util::AnyHash))
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

      sig { returns(T.nilable(T::Array[HanzoAI::Models::Member])) }
      attr_reader :members_with_roles

      sig { params(members_with_roles: T::Array[T.any(HanzoAI::Models::Member, HanzoAI::Util::AnyHash)]).void }
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
          updated_team_memberships: T::Array[T.any(HanzoAI::Models::TeamAddMemberResponse::UpdatedTeamMembership, HanzoAI::Util::AnyHash)],
          updated_users: T::Array[T.any(HanzoAI::Models::TeamAddMemberResponse::UpdatedUser, HanzoAI::Util::AnyHash)],
          admins: T::Array[T.anything],
          blocked: T::Boolean,
          budget_duration: T.nilable(String),
          budget_reset_at: T.nilable(Time),
          created_at: T.nilable(Time),
          llm_model_table: T.nilable(T.any(HanzoAI::Models::TeamAddMemberResponse::LlmModelTable, HanzoAI::Util::AnyHash)),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          members: T::Array[T.anything],
          members_with_roles: T::Array[T.any(HanzoAI::Models::Member, HanzoAI::Util::AnyHash)],
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
        updated_team_memberships:,
        updated_users:,
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
              updated_team_memberships: T::Array[HanzoAI::Models::TeamAddMemberResponse::UpdatedTeamMembership],
              updated_users: T::Array[HanzoAI::Models::TeamAddMemberResponse::UpdatedUser],
              admins: T::Array[T.anything],
              blocked: T::Boolean,
              budget_duration: T.nilable(String),
              budget_reset_at: T.nilable(Time),
              created_at: T.nilable(Time),
              llm_model_table: T.nilable(HanzoAI::Models::TeamAddMemberResponse::LlmModelTable),
              max_budget: T.nilable(Float),
              max_parallel_requests: T.nilable(Integer),
              members: T::Array[T.anything],
              members_with_roles: T::Array[HanzoAI::Models::Member],
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

      class UpdatedTeamMembership < HanzoAI::BaseModel
        sig { returns(String) }
        attr_accessor :budget_id

        # Represents user-controllable params for a LLM_BudgetTable record
        sig { returns(T.nilable(HanzoAI::Models::TeamAddMemberResponse::UpdatedTeamMembership::LlmBudgetTable)) }
        attr_reader :llm_budget_table

        sig do
          params(
            llm_budget_table: T.nilable(
              T.any(
                HanzoAI::Models::TeamAddMemberResponse::UpdatedTeamMembership::LlmBudgetTable,
                HanzoAI::Util::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :llm_budget_table

        sig { returns(String) }
        attr_accessor :team_id

        sig { returns(String) }
        attr_accessor :user_id

        sig do
          params(
            budget_id: String,
            llm_budget_table: T.nilable(
              T.any(
                HanzoAI::Models::TeamAddMemberResponse::UpdatedTeamMembership::LlmBudgetTable,
                HanzoAI::Util::AnyHash
              )
            ),
            team_id: String,
            user_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(budget_id:, llm_budget_table:, team_id:, user_id:)
        end

        sig do
          override
            .returns(
              {
                budget_id: String,
                llm_budget_table: T.nilable(HanzoAI::Models::TeamAddMemberResponse::UpdatedTeamMembership::LlmBudgetTable),
                team_id: String,
                user_id: String
              }
            )
        end
        def to_hash
        end

        class LlmBudgetTable < HanzoAI::BaseModel
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

      class UpdatedUser < HanzoAI::BaseModel
        sig { returns(String) }
        attr_accessor :user_id

        sig { returns(T.nilable(String)) }
        attr_accessor :budget_duration

        sig { returns(T.nilable(Time)) }
        attr_accessor :budget_reset_at

        sig { returns(T.nilable(Float)) }
        attr_accessor :max_budget

        sig { returns(T.nilable(T.anything)) }
        attr_accessor :metadata

        sig { returns(T.nilable(T.anything)) }
        attr_accessor :model_max_budget

        sig { returns(T.nilable(T.anything)) }
        attr_accessor :model_spend

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :models

        sig { params(models: T::Array[T.anything]).void }
        attr_writer :models

        sig { returns(T.nilable(T::Array[HanzoAI::Models::TeamAddMemberResponse::UpdatedUser::OrganizationMembership])) }
        attr_accessor :organization_memberships

        sig { returns(T.nilable(Integer)) }
        attr_accessor :rpm_limit

        sig { returns(T.nilable(Float)) }
        attr_reader :spend

        sig { params(spend: Float).void }
        attr_writer :spend

        sig { returns(T.nilable(String)) }
        attr_accessor :sso_user_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :teams

        sig { params(teams: T::Array[String]).void }
        attr_writer :teams

        sig { returns(T.nilable(Integer)) }
        attr_accessor :tpm_limit

        sig { returns(T.nilable(String)) }
        attr_accessor :user_email

        sig { returns(T.nilable(String)) }
        attr_accessor :user_role

        sig do
          params(
            user_id: String,
            budget_duration: T.nilable(String),
            budget_reset_at: T.nilable(Time),
            max_budget: T.nilable(Float),
            metadata: T.nilable(T.anything),
            model_max_budget: T.nilable(T.anything),
            model_spend: T.nilable(T.anything),
            models: T::Array[T.anything],
            organization_memberships: T.nilable(
              T::Array[T.any(HanzoAI::Models::TeamAddMemberResponse::UpdatedUser::OrganizationMembership, HanzoAI::Util::AnyHash)]
            ),
            rpm_limit: T.nilable(Integer),
            spend: Float,
            sso_user_id: T.nilable(String),
            teams: T::Array[String],
            tpm_limit: T.nilable(Integer),
            user_email: T.nilable(String),
            user_role: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          user_id:,
          budget_duration: nil,
          budget_reset_at: nil,
          max_budget: nil,
          metadata: nil,
          model_max_budget: nil,
          model_spend: nil,
          models: nil,
          organization_memberships: nil,
          rpm_limit: nil,
          spend: nil,
          sso_user_id: nil,
          teams: nil,
          tpm_limit: nil,
          user_email: nil,
          user_role: nil
        )
        end

        sig do
          override
            .returns(
              {
                user_id: String,
                budget_duration: T.nilable(String),
                budget_reset_at: T.nilable(Time),
                max_budget: T.nilable(Float),
                metadata: T.nilable(T.anything),
                model_max_budget: T.nilable(T.anything),
                model_spend: T.nilable(T.anything),
                models: T::Array[T.anything],
                organization_memberships: T.nilable(T::Array[HanzoAI::Models::TeamAddMemberResponse::UpdatedUser::OrganizationMembership]),
                rpm_limit: T.nilable(Integer),
                spend: Float,
                sso_user_id: T.nilable(String),
                teams: T::Array[String],
                tpm_limit: T.nilable(Integer),
                user_email: T.nilable(String),
                user_role: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class OrganizationMembership < HanzoAI::BaseModel
          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :organization_id

          sig { returns(Time) }
          attr_accessor :updated_at

          sig { returns(String) }
          attr_accessor :user_id

          sig { returns(T.nilable(String)) }
          attr_accessor :budget_id

          # Represents user-controllable params for a LLM_BudgetTable record
          sig do
            returns(
              T.nilable(HanzoAI::Models::TeamAddMemberResponse::UpdatedUser::OrganizationMembership::LlmBudgetTable)
            )
          end
          attr_reader :llm_budget_table

          sig do
            params(
              llm_budget_table: T.nilable(
                T.any(
                  HanzoAI::Models::TeamAddMemberResponse::UpdatedUser::OrganizationMembership::LlmBudgetTable,
                  HanzoAI::Util::AnyHash
                )
              )
            )
              .void
          end
          attr_writer :llm_budget_table

          sig { returns(T.nilable(Float)) }
          attr_reader :spend

          sig { params(spend: Float).void }
          attr_writer :spend

          sig { returns(T.nilable(T.anything)) }
          attr_reader :user

          sig { params(user: T.anything).void }
          attr_writer :user

          sig { returns(T.nilable(String)) }
          attr_accessor :user_role

          # This is the table that track what organizations a user belongs to and users
          #   spend within the organization
          sig do
            params(
              created_at: Time,
              organization_id: String,
              updated_at: Time,
              user_id: String,
              budget_id: T.nilable(String),
              llm_budget_table: T.nilable(
                T.any(
                  HanzoAI::Models::TeamAddMemberResponse::UpdatedUser::OrganizationMembership::LlmBudgetTable,
                  HanzoAI::Util::AnyHash
                )
              ),
              spend: Float,
              user: T.anything,
              user_role: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            created_at:,
            organization_id:,
            updated_at:,
            user_id:,
            budget_id: nil,
            llm_budget_table: nil,
            spend: nil,
            user: nil,
            user_role: nil
          )
          end

          sig do
            override
              .returns(
                {
                  created_at: Time,
                  organization_id: String,
                  updated_at: Time,
                  user_id: String,
                  budget_id: T.nilable(String),
                  llm_budget_table: T.nilable(HanzoAI::Models::TeamAddMemberResponse::UpdatedUser::OrganizationMembership::LlmBudgetTable),
                  spend: Float,
                  user: T.anything,
                  user_role: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          class LlmBudgetTable < HanzoAI::BaseModel
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
      end

      class LlmModelTable < HanzoAI::BaseModel
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
          extend HanzoAI::Union

          sig { override.returns([T.anything, String]) }
          def self.variants
          end
        end
      end
    end
  end
end
