# typed: strong

module Hanzoai
  module Models
    class KeyListResponse < Hanzoai::BaseModel
      sig { returns(T.nilable(Integer)) }
      attr_accessor :current_page

      sig { returns(T.nilable(T::Array[T.any(String, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth)])) }
      attr_reader :keys

      sig do
        params(
          keys: T::Array[T.any(String, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth, Hanzoai::Util::AnyHash)]
        )
          .void
      end
      attr_writer :keys

      sig { returns(T.nilable(Integer)) }
      attr_accessor :total_count

      sig { returns(T.nilable(Integer)) }
      attr_accessor :total_pages

      sig do
        params(
          current_page: T.nilable(Integer),
          keys: T::Array[T.any(String, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth, Hanzoai::Util::AnyHash)],
          total_count: T.nilable(Integer),
          total_pages: T.nilable(Integer)
        )
          .returns(T.attached_class)
      end
      def self.new(current_page: nil, keys: nil, total_count: nil, total_pages: nil)
      end

      sig do
        override
          .returns(
            {
              current_page: T.nilable(Integer),
              keys: T::Array[T.any(String, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth)],
              total_count: T.nilable(Integer),
              total_pages: T.nilable(Integer)
            }
          )
      end
      def to_hash
      end

      # Return the row in the db
      module Key
        extend Hanzoai::Union

        class UserAPIKeyAuth < Hanzoai::BaseModel
          sig { returns(T.nilable(String)) }
          attr_accessor :token

          sig { returns(T.nilable(T.anything)) }
          attr_reader :aliases

          sig { params(aliases: T.anything).void }
          attr_writer :aliases

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_accessor :allowed_cache_controls

          sig do
            returns(
              T.nilable(Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::AllowedModelRegion::TaggedSymbol)
            )
          end
          attr_accessor :allowed_model_region

          sig { returns(T.nilable(String)) }
          attr_accessor :api_key

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

          sig { returns(T.nilable(String)) }
          attr_accessor :end_user_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :end_user_max_budget

          sig { returns(T.nilable(Integer)) }
          attr_accessor :end_user_rpm_limit

          sig { returns(T.nilable(Integer)) }
          attr_accessor :end_user_tpm_limit

          sig { returns(T.nilable(T.any(String, Time))) }
          attr_accessor :expires

          sig { returns(T.nilable(String)) }
          attr_accessor :key_alias

          sig { returns(T.nilable(String)) }
          attr_accessor :key_name

          sig { returns(T.nilable(Float)) }
          attr_accessor :last_refreshed_at

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
          attr_reader :parent_otel_span

          sig { params(parent_otel_span: T.anything).void }
          attr_writer :parent_otel_span

          sig { returns(T.nilable(T.anything)) }
          attr_reader :permissions

          sig { params(permissions: T.anything).void }
          attr_writer :permissions

          sig { returns(T.nilable(Integer)) }
          attr_accessor :rpm_limit

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          attr_accessor :rpm_limit_per_model

          sig { returns(T.nilable(Float)) }
          attr_accessor :soft_budget

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :soft_budget_cooldown

          sig { params(soft_budget_cooldown: T::Boolean).void }
          attr_writer :soft_budget_cooldown

          sig { returns(T.nilable(Float)) }
          attr_reader :spend

          sig { params(spend: Float).void }
          attr_writer :spend

          sig { returns(T.nilable(String)) }
          attr_accessor :team_alias

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :team_blocked

          sig { params(team_blocked: T::Boolean).void }
          attr_writer :team_blocked

          sig { returns(T.nilable(String)) }
          attr_accessor :team_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :team_max_budget

          sig { returns(T.nilable(Hanzoai::Models::Member)) }
          attr_reader :team_member

          sig { params(team_member: T.nilable(T.any(Hanzoai::Models::Member, Hanzoai::Util::AnyHash))).void }
          attr_writer :team_member

          sig { returns(T.nilable(Float)) }
          attr_accessor :team_member_spend

          sig { returns(T.nilable(T.anything)) }
          attr_accessor :team_metadata

          sig { returns(T.nilable(T.anything)) }
          attr_accessor :team_model_aliases

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :team_models

          sig { params(team_models: T::Array[T.anything]).void }
          attr_writer :team_models

          sig { returns(T.nilable(Integer)) }
          attr_accessor :team_rpm_limit

          sig { returns(T.nilable(Float)) }
          attr_accessor :team_spend

          sig { returns(T.nilable(Integer)) }
          attr_accessor :team_tpm_limit

          sig { returns(T.nilable(Integer)) }
          attr_accessor :tpm_limit

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          attr_accessor :tpm_limit_per_model

          sig { returns(T.nilable(Time)) }
          attr_accessor :updated_at

          sig { returns(T.nilable(String)) }
          attr_accessor :updated_by

          sig { returns(T.nilable(String)) }
          attr_accessor :user_email

          sig { returns(T.nilable(String)) }
          attr_accessor :user_id

          # Admin Roles: PROXY_ADMIN: admin over the platform PROXY_ADMIN_VIEW_ONLY: can
          #   login, view all own keys, view all spend ORG_ADMIN: admin over a specific
          #   organization, can create teams, users only within their organization
          #
          #   Internal User Roles: INTERNAL_USER: can login, view/create/delete their own
          #   keys, view their spend INTERNAL_USER_VIEW_ONLY: can login, view their own keys,
          #   view their own spend
          #
          #   Team Roles: TEAM: used for JWT auth
          #
          #   Customer Roles: CUSTOMER: External users -> these are customers
          sig { returns(T.nilable(Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole::TaggedSymbol)) }
          attr_accessor :user_role

          sig { returns(T.nilable(Integer)) }
          attr_accessor :user_rpm_limit

          sig { returns(T.nilable(Integer)) }
          attr_accessor :user_tpm_limit

          # Return the row in the db
          sig do
            params(
              token: T.nilable(String),
              aliases: T.anything,
              allowed_cache_controls: T.nilable(T::Array[T.anything]),
              allowed_model_region: T.nilable(Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::AllowedModelRegion::OrSymbol),
              api_key: T.nilable(String),
              blocked: T.nilable(T::Boolean),
              budget_duration: T.nilable(String),
              budget_reset_at: T.nilable(Time),
              config: T.anything,
              created_at: T.nilable(Time),
              created_by: T.nilable(String),
              end_user_id: T.nilable(String),
              end_user_max_budget: T.nilable(Float),
              end_user_rpm_limit: T.nilable(Integer),
              end_user_tpm_limit: T.nilable(Integer),
              expires: T.nilable(T.any(String, Time)),
              key_alias: T.nilable(String),
              key_name: T.nilable(String),
              last_refreshed_at: T.nilable(Float),
              llm_budget_table: T.nilable(T.anything),
              max_budget: T.nilable(Float),
              max_parallel_requests: T.nilable(Integer),
              metadata: T.anything,
              model_max_budget: T.anything,
              model_spend: T.anything,
              models: T::Array[T.anything],
              org_id: T.nilable(String),
              parent_otel_span: T.anything,
              permissions: T.anything,
              rpm_limit: T.nilable(Integer),
              rpm_limit_per_model: T.nilable(T::Hash[Symbol, Integer]),
              soft_budget: T.nilable(Float),
              soft_budget_cooldown: T::Boolean,
              spend: Float,
              team_alias: T.nilable(String),
              team_blocked: T::Boolean,
              team_id: T.nilable(String),
              team_max_budget: T.nilable(Float),
              team_member: T.nilable(T.any(Hanzoai::Models::Member, Hanzoai::Util::AnyHash)),
              team_member_spend: T.nilable(Float),
              team_metadata: T.nilable(T.anything),
              team_model_aliases: T.nilable(T.anything),
              team_models: T::Array[T.anything],
              team_rpm_limit: T.nilable(Integer),
              team_spend: T.nilable(Float),
              team_tpm_limit: T.nilable(Integer),
              tpm_limit: T.nilable(Integer),
              tpm_limit_per_model: T.nilable(T::Hash[Symbol, Integer]),
              updated_at: T.nilable(Time),
              updated_by: T.nilable(String),
              user_email: T.nilable(String),
              user_id: T.nilable(String),
              user_role: T.nilable(Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole::OrSymbol),
              user_rpm_limit: T.nilable(Integer),
              user_tpm_limit: T.nilable(Integer)
            )
              .returns(T.attached_class)
          end
          def self.new(
            token: nil,
            aliases: nil,
            allowed_cache_controls: nil,
            allowed_model_region: nil,
            api_key: nil,
            blocked: nil,
            budget_duration: nil,
            budget_reset_at: nil,
            config: nil,
            created_at: nil,
            created_by: nil,
            end_user_id: nil,
            end_user_max_budget: nil,
            end_user_rpm_limit: nil,
            end_user_tpm_limit: nil,
            expires: nil,
            key_alias: nil,
            key_name: nil,
            last_refreshed_at: nil,
            llm_budget_table: nil,
            max_budget: nil,
            max_parallel_requests: nil,
            metadata: nil,
            model_max_budget: nil,
            model_spend: nil,
            models: nil,
            org_id: nil,
            parent_otel_span: nil,
            permissions: nil,
            rpm_limit: nil,
            rpm_limit_per_model: nil,
            soft_budget: nil,
            soft_budget_cooldown: nil,
            spend: nil,
            team_alias: nil,
            team_blocked: nil,
            team_id: nil,
            team_max_budget: nil,
            team_member: nil,
            team_member_spend: nil,
            team_metadata: nil,
            team_model_aliases: nil,
            team_models: nil,
            team_rpm_limit: nil,
            team_spend: nil,
            team_tpm_limit: nil,
            tpm_limit: nil,
            tpm_limit_per_model: nil,
            updated_at: nil,
            updated_by: nil,
            user_email: nil,
            user_id: nil,
            user_role: nil,
            user_rpm_limit: nil,
            user_tpm_limit: nil
          )
          end

          sig do
            override
              .returns(
                {
                  token: T.nilable(String),
                  aliases: T.anything,
                  allowed_cache_controls: T.nilable(T::Array[T.anything]),
                  allowed_model_region: T.nilable(Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::AllowedModelRegion::TaggedSymbol),
                  api_key: T.nilable(String),
                  blocked: T.nilable(T::Boolean),
                  budget_duration: T.nilable(String),
                  budget_reset_at: T.nilable(Time),
                  config: T.anything,
                  created_at: T.nilable(Time),
                  created_by: T.nilable(String),
                  end_user_id: T.nilable(String),
                  end_user_max_budget: T.nilable(Float),
                  end_user_rpm_limit: T.nilable(Integer),
                  end_user_tpm_limit: T.nilable(Integer),
                  expires: T.nilable(T.any(String, Time)),
                  key_alias: T.nilable(String),
                  key_name: T.nilable(String),
                  last_refreshed_at: T.nilable(Float),
                  llm_budget_table: T.nilable(T.anything),
                  max_budget: T.nilable(Float),
                  max_parallel_requests: T.nilable(Integer),
                  metadata: T.anything,
                  model_max_budget: T.anything,
                  model_spend: T.anything,
                  models: T::Array[T.anything],
                  org_id: T.nilable(String),
                  parent_otel_span: T.anything,
                  permissions: T.anything,
                  rpm_limit: T.nilable(Integer),
                  rpm_limit_per_model: T.nilable(T::Hash[Symbol, Integer]),
                  soft_budget: T.nilable(Float),
                  soft_budget_cooldown: T::Boolean,
                  spend: Float,
                  team_alias: T.nilable(String),
                  team_blocked: T::Boolean,
                  team_id: T.nilable(String),
                  team_max_budget: T.nilable(Float),
                  team_member: T.nilable(Hanzoai::Models::Member),
                  team_member_spend: T.nilable(Float),
                  team_metadata: T.nilable(T.anything),
                  team_model_aliases: T.nilable(T.anything),
                  team_models: T::Array[T.anything],
                  team_rpm_limit: T.nilable(Integer),
                  team_spend: T.nilable(Float),
                  team_tpm_limit: T.nilable(Integer),
                  tpm_limit: T.nilable(Integer),
                  tpm_limit_per_model: T.nilable(T::Hash[Symbol, Integer]),
                  updated_at: T.nilable(Time),
                  updated_by: T.nilable(String),
                  user_email: T.nilable(String),
                  user_id: T.nilable(String),
                  user_role: T.nilable(Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole::TaggedSymbol),
                  user_rpm_limit: T.nilable(Integer),
                  user_tpm_limit: T.nilable(Integer)
                }
              )
          end
          def to_hash
          end

          module AllowedModelRegion
            extend Hanzoai::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::AllowedModelRegion) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::AllowedModelRegion::TaggedSymbol) }

            EU = T.let(:eu, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::AllowedModelRegion::TaggedSymbol)
            US = T.let(:us, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::AllowedModelRegion::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::AllowedModelRegion::TaggedSymbol])
            end
            def self.values
            end
          end

          module Expires
            extend Hanzoai::Union

            sig { override.returns([String, Time]) }
            def self.variants
            end
          end

          # Admin Roles: PROXY_ADMIN: admin over the platform PROXY_ADMIN_VIEW_ONLY: can
          #   login, view all own keys, view all spend ORG_ADMIN: admin over a specific
          #   organization, can create teams, users only within their organization
          #
          #   Internal User Roles: INTERNAL_USER: can login, view/create/delete their own
          #   keys, view their spend INTERNAL_USER_VIEW_ONLY: can login, view their own keys,
          #   view their own spend
          #
          #   Team Roles: TEAM: used for JWT auth
          #
          #   Customer Roles: CUSTOMER: External users -> these are customers
          module UserRole
            extend Hanzoai::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole::TaggedSymbol) }

            PROXY_ADMIN =
              T.let(:proxy_admin, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole::TaggedSymbol)
            PROXY_ADMIN_VIEWER =
              T.let(:proxy_admin_viewer, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole::TaggedSymbol)
            ORG_ADMIN =
              T.let(:org_admin, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole::TaggedSymbol)
            INTERNAL_USER =
              T.let(:internal_user, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole::TaggedSymbol)
            INTERNAL_USER_VIEWER =
              T.let(
                :internal_user_viewer,
                Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole::TaggedSymbol
              )
            TEAM = T.let(:team, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole::TaggedSymbol)
            CUSTOMER =
              T.let(:customer, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole::TaggedSymbol)

            sig { override.returns(T::Array[Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole::TaggedSymbol]) }
            def self.values
            end
          end
        end

        sig { override.returns([String, Hanzoai::Models::KeyListResponse::Key::UserAPIKeyAuth]) }
        def self.variants
        end
      end
    end
  end
end
