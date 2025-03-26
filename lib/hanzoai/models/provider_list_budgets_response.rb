# frozen_string_literal: true

module Hanzoai
  module Models
    class ProviderListBudgetsResponse < Hanzoai::BaseModel
      # @!attribute [r] providers
      #
      #   @return [Hash{Symbol=>Hanzoai::Models::ProviderListBudgetsResponse::Provider}, nil]
      optional :providers, -> { Hanzoai::HashOf[Hanzoai::Models::ProviderListBudgetsResponse::Provider] }

      # @!parse
      #   # @return [Hash{Symbol=>Hanzoai::Models::ProviderListBudgetsResponse::Provider}]
      #   attr_writer :providers

      # @!parse
      #   # Complete provider budget configuration and status. Maps provider names to their
      #   #   budget configs.
      #   #
      #   # @param providers [Hash{Symbol=>Hanzoai::Models::ProviderListBudgetsResponse::Provider}]
      #   #
      #   def initialize(providers: nil, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      class Provider < Hanzoai::BaseModel
        # @!attribute budget_limit
        #
        #   @return [Float, nil]
        required :budget_limit, Float, nil?: true

        # @!attribute time_period
        #
        #   @return [String, nil]
        required :time_period, String, nil?: true

        # @!attribute budget_reset_at
        #
        #   @return [String, nil]
        optional :budget_reset_at, String, nil?: true

        # @!attribute spend
        #
        #   @return [Float, nil]
        optional :spend, Float, nil?: true

        # @!parse
        #   # Configuration for a single provider's budget settings
        #   #
        #   # @param budget_limit [Float, nil]
        #   # @param time_period [String, nil]
        #   # @param budget_reset_at [String, nil]
        #   # @param spend [Float, nil]
        #   #
        #   def initialize(budget_limit:, time_period:, budget_reset_at: nil, spend: nil, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end
    end
  end
end
