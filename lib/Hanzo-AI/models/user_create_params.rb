# frozen_string_literal: true

module HanzoAI
  module Models
    class UserCreateParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute aliases
      #
      #   @return [Object, nil]
      optional :aliases, HanzoAI::Unknown, nil?: true

      # @!attribute allowed_cache_controls
      #
      #   @return [Array<Object>, nil]
      optional :allowed_cache_controls, HanzoAI::ArrayOf[HanzoAI::Unknown], nil?: true

      # @!attribute [r] auto_create_key
      #
      #   @return [Boolean, nil]
      optional :auto_create_key, HanzoAI::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :auto_create_key

      # @!attribute blocked
      #
      #   @return [Boolean, nil]
      optional :blocked, HanzoAI::BooleanModel, nil?: true

      # @!attribute budget_duration
      #
      #   @return [String, nil]
      optional :budget_duration, String, nil?: true

      # @!attribute config
      #
      #   @return [Object, nil]
      optional :config, HanzoAI::Unknown, nil?: true

      # @!attribute duration
      #
      #   @return [String, nil]
      optional :duration, String, nil?: true

      # @!attribute guardrails
      #
      #   @return [Array<String>, nil]
      optional :guardrails, HanzoAI::ArrayOf[String], nil?: true

      # @!attribute key_alias
      #
      #   @return [String, nil]
      optional :key_alias, String, nil?: true

      # @!attribute max_budget
      #
      #   @return [Float, nil]
      optional :max_budget, Float, nil?: true

      # @!attribute max_parallel_requests
      #
      #   @return [Integer, nil]
      optional :max_parallel_requests, Integer, nil?: true

      # @!attribute metadata
      #
      #   @return [Object, nil]
      optional :metadata, HanzoAI::Unknown, nil?: true

      # @!attribute model_max_budget
      #
      #   @return [Object, nil]
      optional :model_max_budget, HanzoAI::Unknown, nil?: true

      # @!attribute model_rpm_limit
      #
      #   @return [Object, nil]
      optional :model_rpm_limit, HanzoAI::Unknown, nil?: true

      # @!attribute model_tpm_limit
      #
      #   @return [Object, nil]
      optional :model_tpm_limit, HanzoAI::Unknown, nil?: true

      # @!attribute models
      #
      #   @return [Array<Object>, nil]
      optional :models, HanzoAI::ArrayOf[HanzoAI::Unknown], nil?: true

      # @!attribute permissions
      #
      #   @return [Object, nil]
      optional :permissions, HanzoAI::Unknown, nil?: true

      # @!attribute rpm_limit
      #
      #   @return [Integer, nil]
      optional :rpm_limit, Integer, nil?: true

      # @!attribute send_invite_email
      #
      #   @return [Boolean, nil]
      optional :send_invite_email, HanzoAI::BooleanModel, nil?: true

      # @!attribute spend
      #
      #   @return [Float, nil]
      optional :spend, Float, nil?: true

      # @!attribute team_id
      #
      #   @return [String, nil]
      optional :team_id, String, nil?: true

      # @!attribute teams
      #
      #   @return [Array<Object>, nil]
      optional :teams, HanzoAI::ArrayOf[HanzoAI::Unknown], nil?: true

      # @!attribute tpm_limit
      #
      #   @return [Integer, nil]
      optional :tpm_limit, Integer, nil?: true

      # @!attribute user_alias
      #
      #   @return [String, nil]
      optional :user_alias, String, nil?: true

      # @!attribute user_email
      #
      #   @return [String, nil]
      optional :user_email, String, nil?: true

      # @!attribute user_id
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!attribute user_role
      #
      #   @return [Symbol, HanzoAI::Models::UserCreateParams::UserRole, nil]
      optional :user_role, enum: -> { HanzoAI::Models::UserCreateParams::UserRole }, nil?: true

      # @!parse
      #   # @param aliases [Object, nil]
      #   # @param allowed_cache_controls [Array<Object>, nil]
      #   # @param auto_create_key [Boolean]
      #   # @param blocked [Boolean, nil]
      #   # @param budget_duration [String, nil]
      #   # @param config [Object, nil]
      #   # @param duration [String, nil]
      #   # @param guardrails [Array<String>, nil]
      #   # @param key_alias [String, nil]
      #   # @param max_budget [Float, nil]
      #   # @param max_parallel_requests [Integer, nil]
      #   # @param metadata [Object, nil]
      #   # @param model_max_budget [Object, nil]
      #   # @param model_rpm_limit [Object, nil]
      #   # @param model_tpm_limit [Object, nil]
      #   # @param models [Array<Object>, nil]
      #   # @param permissions [Object, nil]
      #   # @param rpm_limit [Integer, nil]
      #   # @param send_invite_email [Boolean, nil]
      #   # @param spend [Float, nil]
      #   # @param team_id [String, nil]
      #   # @param teams [Array<Object>, nil]
      #   # @param tpm_limit [Integer, nil]
      #   # @param user_alias [String, nil]
      #   # @param user_email [String, nil]
      #   # @param user_id [String, nil]
      #   # @param user_role [Symbol, HanzoAI::Models::UserCreateParams::UserRole, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     aliases: nil,
      #     allowed_cache_controls: nil,
      #     auto_create_key: nil,
      #     blocked: nil,
      #     budget_duration: nil,
      #     config: nil,
      #     duration: nil,
      #     guardrails: nil,
      #     key_alias: nil,
      #     max_budget: nil,
      #     max_parallel_requests: nil,
      #     metadata: nil,
      #     model_max_budget: nil,
      #     model_rpm_limit: nil,
      #     model_tpm_limit: nil,
      #     models: nil,
      #     permissions: nil,
      #     rpm_limit: nil,
      #     send_invite_email: nil,
      #     spend: nil,
      #     team_id: nil,
      #     teams: nil,
      #     tpm_limit: nil,
      #     user_alias: nil,
      #     user_email: nil,
      #     user_id: nil,
      #     user_role: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      module UserRole
        extend HanzoAI::Enum

        PROXY_ADMIN = :proxy_admin
        PROXY_ADMIN_VIEWER = :proxy_admin_viewer
        INTERNAL_USER = :internal_user
        INTERNAL_USER_VIEWER = :internal_user_viewer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
