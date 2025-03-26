# frozen_string_literal: true

module Hanzoai
  module Models
    class CustomerUpdateParams < Hanzoai::BaseModel
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
      #   @return [Symbol, Hanzoai::Models::CustomerUpdateParams::AllowedModelRegion, nil]
      optional :allowed_model_region,
               enum: -> { Hanzoai::Models::CustomerUpdateParams::AllowedModelRegion },
               nil?: true

      # @!attribute [r] blocked
      #
      #   @return [Boolean, nil]
      optional :blocked, Hanzoai::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :blocked

      # @!attribute budget_id
      #
      #   @return [String, nil]
      optional :budget_id, String, nil?: true

      # @!attribute default_model
      #
      #   @return [String, nil]
      optional :default_model, String, nil?: true

      # @!attribute max_budget
      #
      #   @return [Float, nil]
      optional :max_budget, Float, nil?: true

      # @!parse
      #   # @param user_id [String]
      #   # @param alias_ [String, nil]
      #   # @param allowed_model_region [Symbol, Hanzoai::Models::CustomerUpdateParams::AllowedModelRegion, nil]
      #   # @param blocked [Boolean]
      #   # @param budget_id [String, nil]
      #   # @param default_model [String, nil]
      #   # @param max_budget [Float, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     user_id:,
      #     alias_: nil,
      #     allowed_model_region: nil,
      #     blocked: nil,
      #     budget_id: nil,
      #     default_model: nil,
      #     max_budget: nil,
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
    end
  end
end
