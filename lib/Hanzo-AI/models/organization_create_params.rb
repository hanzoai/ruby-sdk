# frozen_string_literal: true

module HanzoAI
  module Models
    class OrganizationCreateParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute organization_alias
      #
      #   @return [String]
      required :organization_alias, String

      # @!attribute budget_duration
      #
      #   @return [String, nil]
      optional :budget_duration, String, nil?: true

      # @!attribute budget_id
      #
      #   @return [String, nil]
      optional :budget_id, String, nil?: true

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

      # @!attribute [r] models
      #
      #   @return [Array<Object>, nil]
      optional :models, HanzoAI::ArrayOf[HanzoAI::Unknown]

      # @!parse
      #   # @return [Array<Object>]
      #   attr_writer :models

      # @!attribute organization_id
      #
      #   @return [String, nil]
      optional :organization_id, String, nil?: true

      # @!attribute rpm_limit
      #
      #   @return [Integer, nil]
      optional :rpm_limit, Integer, nil?: true

      # @!attribute soft_budget
      #
      #   @return [Float, nil]
      optional :soft_budget, Float, nil?: true

      # @!attribute tpm_limit
      #
      #   @return [Integer, nil]
      optional :tpm_limit, Integer, nil?: true

      # @!parse
      #   # @param organization_alias [String]
      #   # @param budget_duration [String, nil]
      #   # @param budget_id [String, nil]
      #   # @param max_budget [Float, nil]
      #   # @param max_parallel_requests [Integer, nil]
      #   # @param metadata [Object, nil]
      #   # @param model_max_budget [Object, nil]
      #   # @param models [Array<Object>]
      #   # @param organization_id [String, nil]
      #   # @param rpm_limit [Integer, nil]
      #   # @param soft_budget [Float, nil]
      #   # @param tpm_limit [Integer, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     organization_alias:,
      #     budget_duration: nil,
      #     budget_id: nil,
      #     max_budget: nil,
      #     max_parallel_requests: nil,
      #     metadata: nil,
      #     model_max_budget: nil,
      #     models: nil,
      #     organization_id: nil,
      #     rpm_limit: nil,
      #     soft_budget: nil,
      #     tpm_limit: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
