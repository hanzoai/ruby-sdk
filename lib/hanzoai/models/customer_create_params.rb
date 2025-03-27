# frozen_string_literal: true

module Hanzoai
  module Models
    class CustomerCreateParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!attribute alias_
      #
      #   @return [String, nil]
      optional :alias_, String, api_name: :alias, nil?: true

      # @!attribute allowed_model_region
      #
      #   @return [Symbol, Hanzoai::Models::CustomerCreateParams::AllowedModelRegion, nil]
      optional :allowed_model_region,
               enum: -> { Hanzoai::Models::CustomerCreateParams::AllowedModelRegion },
               nil?: true

      # @!attribute [r] blocked
      #
      #   @return [Boolean, nil]
      optional :blocked, Hanzoai::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :blocked

      # @!attribute budget_duration
      #   Max duration budget should be set for (e.g. '1hr', '1d', '28d')
      #
      #   @return [String, nil]
      optional :budget_duration, String, nil?: true

      # @!attribute budget_id
      #
      #   @return [String, nil]
      optional :budget_id, String, nil?: true

      # @!attribute default_model
      #
      #   @return [String, nil]
      optional :default_model, String, nil?: true

      # @!attribute max_budget
      #   Requests will fail if this budget (in USD) is exceeded.
      #
      #   @return [Float, nil]
      optional :max_budget, Float, nil?: true

      # @!attribute max_parallel_requests
      #   Max concurrent requests allowed for this budget id.
      #
      #   @return [Integer, nil]
      optional :max_parallel_requests, Integer, nil?: true

      # @!attribute model_max_budget
      #   Max budget for each model (e.g. {'gpt-4o': {'max_budget': '0.0000001',
      #     'budget_duration': '1d', 'tpm_limit': 1000, 'rpm_limit': 1000}})
      #
      #   @return [Hash{Symbol=>Hanzoai::Models::CustomerCreateParams::ModelMaxBudget}, nil]
      optional :model_max_budget,
               -> { Hanzoai::HashOf[Hanzoai::Models::CustomerCreateParams::ModelMaxBudget] },
               nil?: true

      # @!attribute rpm_limit
      #   Max requests per minute, allowed for this budget id.
      #
      #   @return [Integer, nil]
      optional :rpm_limit, Integer, nil?: true

      # @!attribute soft_budget
      #   Requests will NOT fail if this is exceeded. Will fire alerting though.
      #
      #   @return [Float, nil]
      optional :soft_budget, Float, nil?: true

      # @!attribute tpm_limit
      #   Max tokens per minute, allowed for this budget id.
      #
      #   @return [Integer, nil]
      optional :tpm_limit, Integer, nil?: true

      # @!parse
      #   # @param user_id [String]
      #   # @param alias_ [String, nil]
      #   # @param allowed_model_region [Symbol, Hanzoai::Models::CustomerCreateParams::AllowedModelRegion, nil]
      #   # @param blocked [Boolean]
      #   # @param budget_duration [String, nil]
      #   # @param budget_id [String, nil]
      #   # @param default_model [String, nil]
      #   # @param max_budget [Float, nil]
      #   # @param max_parallel_requests [Integer, nil]
      #   # @param model_max_budget [Hash{Symbol=>Hanzoai::Models::CustomerCreateParams::ModelMaxBudget}, nil]
      #   # @param rpm_limit [Integer, nil]
      #   # @param soft_budget [Float, nil]
      #   # @param tpm_limit [Integer, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     user_id:,
      #     alias_: nil,
      #     allowed_model_region: nil,
      #     blocked: nil,
      #     budget_duration: nil,
      #     budget_id: nil,
      #     default_model: nil,
      #     max_budget: nil,
      #     max_parallel_requests: nil,
      #     model_max_budget: nil,
      #     rpm_limit: nil,
      #     soft_budget: nil,
      #     tpm_limit: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      module AllowedModelRegion
        extend Hanzoai::Enum

        EU = :eu
        US = :us

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class ModelMaxBudget < Hanzoai::BaseModel
        # @!attribute budget_duration
        #
        #   @return [String, nil]
        optional :budget_duration, String, nil?: true

        # @!attribute max_budget
        #
        #   @return [Float, nil]
        optional :max_budget, Float, nil?: true

        # @!attribute rpm_limit
        #
        #   @return [Integer, nil]
        optional :rpm_limit, Integer, nil?: true

        # @!attribute tpm_limit
        #
        #   @return [Integer, nil]
        optional :tpm_limit, Integer, nil?: true

        # @!parse
        #   # @param budget_duration [String, nil]
        #   # @param max_budget [Float, nil]
        #   # @param rpm_limit [Integer, nil]
        #   # @param tpm_limit [Integer, nil]
        #   #
        #   def initialize(budget_duration: nil, max_budget: nil, rpm_limit: nil, tpm_limit: nil, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end
    end
  end
end
