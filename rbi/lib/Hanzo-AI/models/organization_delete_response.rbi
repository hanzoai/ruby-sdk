# typed: strong

module HanzoAI
  module Models
    class OrganizationDeleteResponseItem < HanzoAI::BaseModel
      sig { returns(String) }
      attr_accessor :budget_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :created_by

      sig { returns(T::Array[String]) }
      attr_accessor :models

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(String) }
      attr_accessor :updated_by

      # Represents user-controllable params for a LLM_BudgetTable record
      sig { returns(T.nilable(HanzoAI::Models::OrganizationDeleteResponseItem::LlmBudgetTable)) }
      attr_reader :llm_budget_table

      sig do
        params(
          llm_budget_table: T.nilable(T.any(HanzoAI::Models::OrganizationDeleteResponseItem::LlmBudgetTable, HanzoAI::Util::AnyHash))
        )
          .void
      end
      attr_writer :llm_budget_table

      sig { returns(T.nilable(T::Array[HanzoAI::Models::OrganizationDeleteResponseItem::Member])) }
      attr_reader :members

      sig do
        params(
          members: T::Array[T.any(HanzoAI::Models::OrganizationDeleteResponseItem::Member, HanzoAI::Util::AnyHash)]
        )
          .void
      end
      attr_writer :members

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :organization_alias

      sig { returns(T.nilable(String)) }
      attr_accessor :organization_id

      sig { returns(T.nilable(Float)) }
      attr_reader :spend

      sig { params(spend: Float).void }
      attr_writer :spend

      sig { returns(T.nilable(T::Array[HanzoAI::Models::OrganizationDeleteResponseItem::Team])) }
      attr_reader :teams

      sig do
        params(
          teams: T::Array[T.any(HanzoAI::Models::OrganizationDeleteResponseItem::Team, HanzoAI::Util::AnyHash)]
        )
          .void
      end
      attr_writer :teams

      # Returned by the /organization/info endpoint and /organization/list endpoint
      sig do
        params(
          budget_id: String,
          created_at: Time,
          created_by: String,
          models: T::Array[String],
          updated_at: Time,
          updated_by: String,
          llm_budget_table: T.nilable(T.any(HanzoAI::Models::OrganizationDeleteResponseItem::LlmBudgetTable, HanzoAI::Util::AnyHash)),
          members: T::Array[T.any(HanzoAI::Models::OrganizationDeleteResponseItem::Member, HanzoAI::Util::AnyHash)],
          metadata: T.nilable(T.anything),
          organization_alias: T.nilable(String),
          organization_id: T.nilable(String),
          spend: Float,
          teams: T::Array[T.any(HanzoAI::Models::OrganizationDeleteResponseItem::Team, HanzoAI::Util::AnyHash)]
        )
          .returns(T.attached_class)
      end
      def self.new(
        budget_id:,
        created_at:,
        created_by:,
        models:,
        updated_at:,
        updated_by:,
        llm_budget_table: nil,
        members: nil,
        metadata: nil,
        organization_alias: nil,
        organization_id: nil,
        spend: nil,
        teams: nil
      )
      end

      sig do
        override
          .returns(
            {
              budget_id: String,
              created_at: Time,
              created_by: String,
              models: T::Array[String],
              updated_at: Time,
              updated_by: String,
              llm_budget_table: T.nilable(HanzoAI::Models::OrganizationDeleteResponseItem::LlmBudgetTable),
              members: T::Array[HanzoAI::Models::OrganizationDeleteResponseItem::Member],
              metadata: T.nilable(T.anything),
              organization_alias: T.nilable(String),
              organization_id: T.nilable(String),
              spend: Float,
              teams: T::Array[HanzoAI::Models::OrganizationDeleteResponseItem::Team]
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

      class Member < HanzoAI::BaseModel
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
        sig { returns(T.nilable(HanzoAI::Models::OrganizationDeleteResponseItem::Member::LlmBudgetTable)) }
        attr_reader :llm_budget_table

        sig do
          params(
            llm_budget_table: T.nilable(
              T.any(HanzoAI::Models::OrganizationDeleteResponseItem::Member::LlmBudgetTable, HanzoAI::Util::AnyHash)
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
              T.any(HanzoAI::Models::OrganizationDeleteResponseItem::Member::LlmBudgetTable, HanzoAI::Util::AnyHash)
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
                llm_budget_table: T.nilable(HanzoAI::Models::OrganizationDeleteResponseItem::Member::LlmBudgetTable),
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

      class Team < HanzoAI::BaseModel
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

        sig { returns(T.nilable(HanzoAI::Models::OrganizationDeleteResponseItem::Team::LlmModelTable)) }
        attr_reader :llm_model_table

        sig do
          params(
            llm_model_table: T.nilable(
              T.any(HanzoAI::Models::OrganizationDeleteResponseItem::Team::LlmModelTable, HanzoAI::Util::AnyHash)
            )
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
            admins: T::Array[T.anything],
            blocked: T::Boolean,
            budget_duration: T.nilable(String),
            budget_reset_at: T.nilable(Time),
            created_at: T.nilable(Time),
            llm_model_table: T.nilable(
              T.any(HanzoAI::Models::OrganizationDeleteResponseItem::Team::LlmModelTable, HanzoAI::Util::AnyHash)
            ),
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
                llm_model_table: T.nilable(HanzoAI::Models::OrganizationDeleteResponseItem::Team::LlmModelTable),
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

        class LlmModelTable < HanzoAI::BaseModel
          sig { returns(String) }
          attr_accessor :created_by

          sig { returns(String) }
          attr_accessor :updated_by

          sig { returns(T.nilable(T.any(T.anything, String))) }
          attr_accessor :model_aliases

          sig do
            params(
              created_by: String,
              updated_by: String,
              model_aliases: T.nilable(T.any(T.anything, String))
            )
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

    OrganizationDeleteResponse =
      T.let(HanzoAI::ArrayOf[HanzoAI::Models::OrganizationDeleteResponseItem], HanzoAI::Converter)
  end
end
