# frozen_string_literal: true

module Hanzoai
  module Models
    module Key
      class RegenerateKeyRequest < Hanzoai::BaseModel
        # @!attribute aliases
        #
        #   @return [Object, nil]
        optional :aliases, Hanzoai::Unknown, nil?: true

        # @!attribute allowed_cache_controls
        #
        #   @return [Array<Object>, nil]
        optional :allowed_cache_controls, Hanzoai::ArrayOf[Hanzoai::Unknown], nil?: true

        # @!attribute blocked
        #
        #   @return [Boolean, nil]
        optional :blocked, Hanzoai::BooleanModel, nil?: true

        # @!attribute budget_duration
        #
        #   @return [String, nil]
        optional :budget_duration, String, nil?: true

        # @!attribute budget_id
        #
        #   @return [String, nil]
        optional :budget_id, String, nil?: true

        # @!attribute config
        #
        #   @return [Object, nil]
        optional :config, Hanzoai::Unknown, nil?: true

        # @!attribute duration
        #
        #   @return [String, nil]
        optional :duration, String, nil?: true

        # @!attribute enforced_params
        #
        #   @return [Array<String>, nil]
        optional :enforced_params, Hanzoai::ArrayOf[String], nil?: true

        # @!attribute guardrails
        #
        #   @return [Array<String>, nil]
        optional :guardrails, Hanzoai::ArrayOf[String], nil?: true

        # @!attribute key
        #
        #   @return [String, nil]
        optional :key, String, nil?: true

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
        optional :metadata, Hanzoai::Unknown, nil?: true

        # @!attribute model_max_budget
        #
        #   @return [Object, nil]
        optional :model_max_budget, Hanzoai::Unknown, nil?: true

        # @!attribute model_rpm_limit
        #
        #   @return [Object, nil]
        optional :model_rpm_limit, Hanzoai::Unknown, nil?: true

        # @!attribute model_tpm_limit
        #
        #   @return [Object, nil]
        optional :model_tpm_limit, Hanzoai::Unknown, nil?: true

        # @!attribute models
        #
        #   @return [Array<Object>, nil]
        optional :models, Hanzoai::ArrayOf[Hanzoai::Unknown], nil?: true

        # @!attribute new_master_key
        #
        #   @return [String, nil]
        optional :new_master_key, String, nil?: true

        # @!attribute permissions
        #
        #   @return [Object, nil]
        optional :permissions, Hanzoai::Unknown, nil?: true

        # @!attribute rpm_limit
        #
        #   @return [Integer, nil]
        optional :rpm_limit, Integer, nil?: true

        # @!attribute send_invite_email
        #
        #   @return [Boolean, nil]
        optional :send_invite_email, Hanzoai::BooleanModel, nil?: true

        # @!attribute soft_budget
        #
        #   @return [Float, nil]
        optional :soft_budget, Float, nil?: true

        # @!attribute spend
        #
        #   @return [Float, nil]
        optional :spend, Float, nil?: true

        # @!attribute tags
        #
        #   @return [Array<String>, nil]
        optional :tags, Hanzoai::ArrayOf[String], nil?: true

        # @!attribute team_id
        #
        #   @return [String, nil]
        optional :team_id, String, nil?: true

        # @!attribute tpm_limit
        #
        #   @return [Integer, nil]
        optional :tpm_limit, Integer, nil?: true

        # @!attribute user_id
        #
        #   @return [String, nil]
        optional :user_id, String, nil?: true

        # @!parse
        #   # @param aliases [Object, nil]
        #   # @param allowed_cache_controls [Array<Object>, nil]
        #   # @param blocked [Boolean, nil]
        #   # @param budget_duration [String, nil]
        #   # @param budget_id [String, nil]
        #   # @param config [Object, nil]
        #   # @param duration [String, nil]
        #   # @param enforced_params [Array<String>, nil]
        #   # @param guardrails [Array<String>, nil]
        #   # @param key [String, nil]
        #   # @param key_alias [String, nil]
        #   # @param max_budget [Float, nil]
        #   # @param max_parallel_requests [Integer, nil]
        #   # @param metadata [Object, nil]
        #   # @param model_max_budget [Object, nil]
        #   # @param model_rpm_limit [Object, nil]
        #   # @param model_tpm_limit [Object, nil]
        #   # @param models [Array<Object>, nil]
        #   # @param new_master_key [String, nil]
        #   # @param permissions [Object, nil]
        #   # @param rpm_limit [Integer, nil]
        #   # @param send_invite_email [Boolean, nil]
        #   # @param soft_budget [Float, nil]
        #   # @param spend [Float, nil]
        #   # @param tags [Array<String>, nil]
        #   # @param team_id [String, nil]
        #   # @param tpm_limit [Integer, nil]
        #   # @param user_id [String, nil]
        #   #
        #   def initialize(
        #     aliases: nil,
        #     allowed_cache_controls: nil,
        #     blocked: nil,
        #     budget_duration: nil,
        #     budget_id: nil,
        #     config: nil,
        #     duration: nil,
        #     enforced_params: nil,
        #     guardrails: nil,
        #     key: nil,
        #     key_alias: nil,
        #     max_budget: nil,
        #     max_parallel_requests: nil,
        #     metadata: nil,
        #     model_max_budget: nil,
        #     model_rpm_limit: nil,
        #     model_tpm_limit: nil,
        #     models: nil,
        #     new_master_key: nil,
        #     permissions: nil,
        #     rpm_limit: nil,
        #     send_invite_email: nil,
        #     soft_budget: nil,
        #     spend: nil,
        #     tags: nil,
        #     team_id: nil,
        #     tpm_limit: nil,
        #     user_id: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end
    end
  end
end
