# frozen_string_literal: true

module Hanzoai
  module Models
    class KeyBlockResponse < Hanzoai::BaseModel
      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String, nil?: true

      # @!attribute [r] aliases
      #
      #   @return [Object, nil]
      optional :aliases, Hanzoai::Unknown

      # @!parse
      #   # @return [Object]
      #   attr_writer :aliases

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

      # @!attribute budget_reset_at
      #
      #   @return [Time, nil]
      optional :budget_reset_at, Time, nil?: true

      # @!attribute [r] config
      #
      #   @return [Object, nil]
      optional :config, Hanzoai::Unknown

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

      # @!attribute expires
      #
      #   @return [String, Time, nil]
      optional :expires, union: -> { Hanzoai::Models::KeyBlockResponse::Expires }, nil?: true

      # @!attribute key_alias
      #
      #   @return [String, nil]
      optional :key_alias, String, nil?: true

      # @!attribute key_name
      #
      #   @return [String, nil]
      optional :key_name, String, nil?: true

      # @!attribute llm_budget_table
      #
      #   @return [Object, nil]
      optional :llm_budget_table, Hanzoai::Unknown, nil?: true

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
      optional :metadata, Hanzoai::Unknown

      # @!parse
      #   # @return [Object]
      #   attr_writer :metadata

      # @!attribute [r] model_max_budget
      #
      #   @return [Object, nil]
      optional :model_max_budget, Hanzoai::Unknown

      # @!parse
      #   # @return [Object]
      #   attr_writer :model_max_budget

      # @!attribute [r] model_spend
      #
      #   @return [Object, nil]
      optional :model_spend, Hanzoai::Unknown

      # @!parse
      #   # @return [Object]
      #   attr_writer :model_spend

      # @!attribute [r] models
      #
      #   @return [Array<Object>, nil]
      optional :models, Hanzoai::ArrayOf[Hanzoai::Unknown]

      # @!parse
      #   # @return [Array<Object>]
      #   attr_writer :models

      # @!attribute org_id
      #
      #   @return [String, nil]
      optional :org_id, String, nil?: true

      # @!attribute [r] permissions
      #
      #   @return [Object, nil]
      optional :permissions, Hanzoai::Unknown

      # @!parse
      #   # @return [Object]
      #   attr_writer :permissions

      # @!attribute rpm_limit
      #
      #   @return [Integer, nil]
      optional :rpm_limit, Integer, nil?: true

      # @!attribute [r] soft_budget_cooldown
      #
      #   @return [Boolean, nil]
      optional :soft_budget_cooldown, Hanzoai::BooleanModel

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

      # @!attribute team_id
      #
      #   @return [String, nil]
      optional :team_id, String, nil?: true

      # @!attribute tpm_limit
      #
      #   @return [Integer, nil]
      optional :tpm_limit, Integer, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time, nil?: true

      # @!attribute updated_by
      #
      #   @return [String, nil]
      optional :updated_by, String, nil?: true

      # @!attribute user_id
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!parse
      #   # @param token [String, nil]
      #   # @param aliases [Object]
      #   # @param allowed_cache_controls [Array<Object>, nil]
      #   # @param blocked [Boolean, nil]
      #   # @param budget_duration [String, nil]
      #   # @param budget_reset_at [Time, nil]
      #   # @param config [Object]
      #   # @param created_at [Time, nil]
      #   # @param created_by [String, nil]
      #   # @param expires [String, Time, nil]
      #   # @param key_alias [String, nil]
      #   # @param key_name [String, nil]
      #   # @param llm_budget_table [Object, nil]
      #   # @param max_budget [Float, nil]
      #   # @param max_parallel_requests [Integer, nil]
      #   # @param metadata [Object]
      #   # @param model_max_budget [Object]
      #   # @param model_spend [Object]
      #   # @param models [Array<Object>]
      #   # @param org_id [String, nil]
      #   # @param permissions [Object]
      #   # @param rpm_limit [Integer, nil]
      #   # @param soft_budget_cooldown [Boolean]
      #   # @param spend [Float]
      #   # @param team_id [String, nil]
      #   # @param tpm_limit [Integer, nil]
      #   # @param updated_at [Time, nil]
      #   # @param updated_by [String, nil]
      #   # @param user_id [String, nil]
      #   #
      #   def initialize(
      #     token: nil,
      #     aliases: nil,
      #     allowed_cache_controls: nil,
      #     blocked: nil,
      #     budget_duration: nil,
      #     budget_reset_at: nil,
      #     config: nil,
      #     created_at: nil,
      #     created_by: nil,
      #     expires: nil,
      #     key_alias: nil,
      #     key_name: nil,
      #     llm_budget_table: nil,
      #     max_budget: nil,
      #     max_parallel_requests: nil,
      #     metadata: nil,
      #     model_max_budget: nil,
      #     model_spend: nil,
      #     models: nil,
      #     org_id: nil,
      #     permissions: nil,
      #     rpm_limit: nil,
      #     soft_budget_cooldown: nil,
      #     spend: nil,
      #     team_id: nil,
      #     tpm_limit: nil,
      #     updated_at: nil,
      #     updated_by: nil,
      #     user_id: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      module Expires
        extend Hanzoai::Union

        variant String

        variant Time

        # @!parse
        #   # @return [Array(String, Time)]
        #   def self.variants; end
      end
    end
  end
end
