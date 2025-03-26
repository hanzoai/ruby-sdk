# frozen_string_literal: true

module HanzoAI
  module Models
    class KeyListResponse < HanzoAI::BaseModel
      # @!attribute current_page
      #
      #   @return [Integer, nil]
      optional :current_page, Integer, nil?: true

      # @!attribute [r] keys
      #
      #   @return [Array<String, HanzoAI::Models::KeyListResponse::Key::UserAPIKeyAuth>, nil]
      optional :keys, -> { HanzoAI::ArrayOf[union: HanzoAI::Models::KeyListResponse::Key] }

      # @!parse
      #   # @return [Array<String, HanzoAI::Models::KeyListResponse::Key::UserAPIKeyAuth>]
      #   attr_writer :keys

      # @!attribute total_count
      #
      #   @return [Integer, nil]
      optional :total_count, Integer, nil?: true

      # @!attribute total_pages
      #
      #   @return [Integer, nil]
      optional :total_pages, Integer, nil?: true

      # @!parse
      #   # @param current_page [Integer, nil]
      #   # @param keys [Array<String, HanzoAI::Models::KeyListResponse::Key::UserAPIKeyAuth>]
      #   # @param total_count [Integer, nil]
      #   # @param total_pages [Integer, nil]
      #   #
      #   def initialize(current_page: nil, keys: nil, total_count: nil, total_pages: nil, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      # Return the row in the db
      module Key
        extend HanzoAI::Union

        variant String

        # Return the row in the db
        variant -> { HanzoAI::Models::KeyListResponse::Key::UserAPIKeyAuth }

        class UserAPIKeyAuth < HanzoAI::BaseModel
          # @!attribute token
          #
          #   @return [String, nil]
          optional :token, String, nil?: true

          # @!attribute [r] aliases
          #
          #   @return [Object, nil]
          optional :aliases, HanzoAI::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :aliases

          # @!attribute allowed_cache_controls
          #
          #   @return [Array<Object>, nil]
          optional :allowed_cache_controls, HanzoAI::ArrayOf[HanzoAI::Unknown], nil?: true

          # @!attribute allowed_model_region
          #
          #   @return [Symbol, HanzoAI::Models::KeyListResponse::Key::UserAPIKeyAuth::AllowedModelRegion, nil]
          optional :allowed_model_region,
                   enum: -> { HanzoAI::Models::KeyListResponse::Key::UserAPIKeyAuth::AllowedModelRegion },
                   nil?: true

          # @!attribute api_key
          #
          #   @return [String, nil]
          optional :api_key, String, nil?: true

          # @!attribute blocked
          #
          #   @return [Boolean, nil]
          optional :blocked, HanzoAI::BooleanModel, nil?: true

          # @!attribute budget_duration
          #
          #   @return [String, nil]
          optional :budget_duration, String, nil?: true

          # @!attribute budget_reset_at
          #
          #   @return [Time, nil]
          optional :budget_reset_at, Time, nil?: true

          # @!attribute [r] config
          #
          #   @return [Object, nil]
          optional :config, HanzoAI::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :config

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time, nil?: true

          # @!attribute created_by
          #
          #   @return [String, nil]
          optional :created_by, String, nil?: true

          # @!attribute end_user_id
          #
          #   @return [String, nil]
          optional :end_user_id, String, nil?: true

          # @!attribute end_user_max_budget
          #
          #   @return [Float, nil]
          optional :end_user_max_budget, Float, nil?: true

          # @!attribute end_user_rpm_limit
          #
          #   @return [Integer, nil]
          optional :end_user_rpm_limit, Integer, nil?: true

          # @!attribute end_user_tpm_limit
          #
          #   @return [Integer, nil]
          optional :end_user_tpm_limit, Integer, nil?: true

          # @!attribute expires
          #
          #   @return [String, Time, nil]
          optional :expires,
                   union: -> { HanzoAI::Models::KeyListResponse::Key::UserAPIKeyAuth::Expires },
                   nil?: true

          # @!attribute key_alias
          #
          #   @return [String, nil]
          optional :key_alias, String, nil?: true

          # @!attribute key_name
          #
          #   @return [String, nil]
          optional :key_name, String, nil?: true

          # @!attribute last_refreshed_at
          #
          #   @return [Float, nil]
          optional :last_refreshed_at, Float, nil?: true

          # @!attribute llm_budget_table
          #
          #   @return [Object, nil]
          optional :llm_budget_table, HanzoAI::Unknown, nil?: true

          # @!attribute max_budget
          #
          #   @return [Float, nil]
          optional :max_budget, Float, nil?: true

          # @!attribute max_parallel_requests
          #
          #   @return [Integer, nil]
          optional :max_parallel_requests, Integer, nil?: true

          # @!attribute [r] metadata
          #
          #   @return [Object, nil]
          optional :metadata, HanzoAI::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :metadata

          # @!attribute [r] model_max_budget
          #
          #   @return [Object, nil]
          optional :model_max_budget, HanzoAI::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :model_max_budget

          # @!attribute [r] model_spend
          #
          #   @return [Object, nil]
          optional :model_spend, HanzoAI::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :model_spend

          # @!attribute [r] models
          #
          #   @return [Array<Object>, nil]
          optional :models, HanzoAI::ArrayOf[HanzoAI::Unknown]

          # @!parse
          #   # @return [Array<Object>]
          #   attr_writer :models

          # @!attribute org_id
          #
          #   @return [String, nil]
          optional :org_id, String, nil?: true

          # @!attribute [r] parent_otel_span
          #
          #   @return [Object, nil]
          optional :parent_otel_span, HanzoAI::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :parent_otel_span

          # @!attribute [r] permissions
          #
          #   @return [Object, nil]
          optional :permissions, HanzoAI::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :permissions

          # @!attribute rpm_limit
          #
          #   @return [Integer, nil]
          optional :rpm_limit, Integer, nil?: true

          # @!attribute rpm_limit_per_model
          #
          #   @return [Hash{Symbol=>Integer}, nil]
          optional :rpm_limit_per_model, HanzoAI::HashOf[Integer], nil?: true

          # @!attribute soft_budget
          #
          #   @return [Float, nil]
          optional :soft_budget, Float, nil?: true

          # @!attribute [r] soft_budget_cooldown
          #
          #   @return [Boolean, nil]
          optional :soft_budget_cooldown, HanzoAI::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :soft_budget_cooldown

          # @!attribute [r] spend
          #
          #   @return [Float, nil]
          optional :spend, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :spend

          # @!attribute team_alias
          #
          #   @return [String, nil]
          optional :team_alias, String, nil?: true

          # @!attribute [r] team_blocked
          #
          #   @return [Boolean, nil]
          optional :team_blocked, HanzoAI::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :team_blocked

          # @!attribute team_id
          #
          #   @return [String, nil]
          optional :team_id, String, nil?: true

          # @!attribute team_max_budget
          #
          #   @return [Float, nil]
          optional :team_max_budget, Float, nil?: true

          # @!attribute team_member
          #
          #   @return [HanzoAI::Models::Member, nil]
          optional :team_member, -> { HanzoAI::Models::Member }, nil?: true

          # @!attribute team_member_spend
          #
          #   @return [Float, nil]
          optional :team_member_spend, Float, nil?: true

          # @!attribute team_metadata
          #
          #   @return [Object, nil]
          optional :team_metadata, HanzoAI::Unknown, nil?: true

          # @!attribute team_model_aliases
          #
          #   @return [Object, nil]
          optional :team_model_aliases, HanzoAI::Unknown, nil?: true

          # @!attribute [r] team_models
          #
          #   @return [Array<Object>, nil]
          optional :team_models, HanzoAI::ArrayOf[HanzoAI::Unknown]

          # @!parse
          #   # @return [Array<Object>]
          #   attr_writer :team_models

          # @!attribute team_rpm_limit
          #
          #   @return [Integer, nil]
          optional :team_rpm_limit, Integer, nil?: true

          # @!attribute team_spend
          #
          #   @return [Float, nil]
          optional :team_spend, Float, nil?: true

          # @!attribute team_tpm_limit
          #
          #   @return [Integer, nil]
          optional :team_tpm_limit, Integer, nil?: true

          # @!attribute tpm_limit
          #
          #   @return [Integer, nil]
          optional :tpm_limit, Integer, nil?: true

          # @!attribute tpm_limit_per_model
          #
          #   @return [Hash{Symbol=>Integer}, nil]
          optional :tpm_limit_per_model, HanzoAI::HashOf[Integer], nil?: true

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time, nil?: true

          # @!attribute updated_by
          #
          #   @return [String, nil]
          optional :updated_by, String, nil?: true

          # @!attribute user_email
          #
          #   @return [String, nil]
          optional :user_email, String, nil?: true

          # @!attribute user_id
          #
          #   @return [String, nil]
          optional :user_id, String, nil?: true

          # @!attribute user_role
          #   Admin Roles: PROXY_ADMIN: admin over the platform PROXY_ADMIN_VIEW_ONLY: can
          #     login, view all own keys, view all spend ORG_ADMIN: admin over a specific
          #     organization, can create teams, users only within their organization
          #
          #     Internal User Roles: INTERNAL_USER: can login, view/create/delete their own
          #     keys, view their spend INTERNAL_USER_VIEW_ONLY: can login, view their own keys,
          #     view their own spend
          #
          #     Team Roles: TEAM: used for JWT auth
          #
          #     Customer Roles: CUSTOMER: External users -> these are customers
          #
          #   @return [Symbol, HanzoAI::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole, nil]
          optional :user_role,
                   enum: -> { HanzoAI::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole },
                   nil?: true

          # @!attribute user_rpm_limit
          #
          #   @return [Integer, nil]
          optional :user_rpm_limit, Integer, nil?: true

          # @!attribute user_tpm_limit
          #
          #   @return [Integer, nil]
          optional :user_tpm_limit, Integer, nil?: true

          # @!parse
          #   # Return the row in the db
          #   #
          #   # @param token [String, nil]
          #   # @param aliases [Object]
          #   # @param allowed_cache_controls [Array<Object>, nil]
          #   # @param allowed_model_region [Symbol, HanzoAI::Models::KeyListResponse::Key::UserAPIKeyAuth::AllowedModelRegion, nil]
          #   # @param api_key [String, nil]
          #   # @param blocked [Boolean, nil]
          #   # @param budget_duration [String, nil]
          #   # @param budget_reset_at [Time, nil]
          #   # @param config [Object]
          #   # @param created_at [Time, nil]
          #   # @param created_by [String, nil]
          #   # @param end_user_id [String, nil]
          #   # @param end_user_max_budget [Float, nil]
          #   # @param end_user_rpm_limit [Integer, nil]
          #   # @param end_user_tpm_limit [Integer, nil]
          #   # @param expires [String, Time, nil]
          #   # @param key_alias [String, nil]
          #   # @param key_name [String, nil]
          #   # @param last_refreshed_at [Float, nil]
          #   # @param llm_budget_table [Object, nil]
          #   # @param max_budget [Float, nil]
          #   # @param max_parallel_requests [Integer, nil]
          #   # @param metadata [Object]
          #   # @param model_max_budget [Object]
          #   # @param model_spend [Object]
          #   # @param models [Array<Object>]
          #   # @param org_id [String, nil]
          #   # @param parent_otel_span [Object]
          #   # @param permissions [Object]
          #   # @param rpm_limit [Integer, nil]
          #   # @param rpm_limit_per_model [Hash{Symbol=>Integer}, nil]
          #   # @param soft_budget [Float, nil]
          #   # @param soft_budget_cooldown [Boolean]
          #   # @param spend [Float]
          #   # @param team_alias [String, nil]
          #   # @param team_blocked [Boolean]
          #   # @param team_id [String, nil]
          #   # @param team_max_budget [Float, nil]
          #   # @param team_member [HanzoAI::Models::Member, nil]
          #   # @param team_member_spend [Float, nil]
          #   # @param team_metadata [Object, nil]
          #   # @param team_model_aliases [Object, nil]
          #   # @param team_models [Array<Object>]
          #   # @param team_rpm_limit [Integer, nil]
          #   # @param team_spend [Float, nil]
          #   # @param team_tpm_limit [Integer, nil]
          #   # @param tpm_limit [Integer, nil]
          #   # @param tpm_limit_per_model [Hash{Symbol=>Integer}, nil]
          #   # @param updated_at [Time, nil]
          #   # @param updated_by [String, nil]
          #   # @param user_email [String, nil]
          #   # @param user_id [String, nil]
          #   # @param user_role [Symbol, HanzoAI::Models::KeyListResponse::Key::UserAPIKeyAuth::UserRole, nil]
          #   # @param user_rpm_limit [Integer, nil]
          #   # @param user_tpm_limit [Integer, nil]
          #   #
          #   def initialize(
          #     token: nil,
          #     aliases: nil,
          #     allowed_cache_controls: nil,
          #     allowed_model_region: nil,
          #     api_key: nil,
          #     blocked: nil,
          #     budget_duration: nil,
          #     budget_reset_at: nil,
          #     config: nil,
          #     created_at: nil,
          #     created_by: nil,
          #     end_user_id: nil,
          #     end_user_max_budget: nil,
          #     end_user_rpm_limit: nil,
          #     end_user_tpm_limit: nil,
          #     expires: nil,
          #     key_alias: nil,
          #     key_name: nil,
          #     last_refreshed_at: nil,
          #     llm_budget_table: nil,
          #     max_budget: nil,
          #     max_parallel_requests: nil,
          #     metadata: nil,
          #     model_max_budget: nil,
          #     model_spend: nil,
          #     models: nil,
          #     org_id: nil,
          #     parent_otel_span: nil,
          #     permissions: nil,
          #     rpm_limit: nil,
          #     rpm_limit_per_model: nil,
          #     soft_budget: nil,
          #     soft_budget_cooldown: nil,
          #     spend: nil,
          #     team_alias: nil,
          #     team_blocked: nil,
          #     team_id: nil,
          #     team_max_budget: nil,
          #     team_member: nil,
          #     team_member_spend: nil,
          #     team_metadata: nil,
          #     team_model_aliases: nil,
          #     team_models: nil,
          #     team_rpm_limit: nil,
          #     team_spend: nil,
          #     team_tpm_limit: nil,
          #     tpm_limit: nil,
          #     tpm_limit_per_model: nil,
          #     updated_at: nil,
          #     updated_by: nil,
          #     user_email: nil,
          #     user_id: nil,
          #     user_role: nil,
          #     user_rpm_limit: nil,
          #     user_tpm_limit: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | HanzoAI::BaseModel) -> void

          module AllowedModelRegion
            extend HanzoAI::Enum

            EU = :eu
            US = :us

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          module Expires
            extend HanzoAI::Union

            variant String

            variant Time

            # @!parse
            #   # @return [Array(String, Time)]
            #   def self.variants; end
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
            extend HanzoAI::Enum

            PROXY_ADMIN = :proxy_admin
            PROXY_ADMIN_VIEWER = :proxy_admin_viewer
            ORG_ADMIN = :org_admin
            INTERNAL_USER = :internal_user
            INTERNAL_USER_VIEWER = :internal_user_viewer
            TEAM = :team
            CUSTOMER = :customer

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @!parse
        #   # @return [Array(String, HanzoAI::Models::KeyListResponse::Key::UserAPIKeyAuth)]
        #   def self.variants; end
      end
    end
  end
end
