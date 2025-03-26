# frozen_string_literal: true

module HanzoAI
  module Models
    class ProviderListBudgetsResponse < HanzoAI::BaseModel
      # @!attribute [r] providers
      #
      #   @return [Hash{Symbol=>HanzoAI::Models::ProviderListBudgetsResponse::Provider}, nil]
      optional :providers, -> { HanzoAI::HashOf[HanzoAI::Models::ProviderListBudgetsResponse::Provider] }

      # @!parse
      #   # @return [Hash{Symbol=>HanzoAI::Models::ProviderListBudgetsResponse::Provider}]
      #   attr_writer :providers

      # @!parse
      #   # Complete provider budget configuration and status. Maps provider names to their
      #   #   budget configs.
      #   #
      #   # @param providers [Hash{Symbol=>HanzoAI::Models::ProviderListBudgetsResponse::Provider}]
      #   #
      #   def initialize(providers: nil, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      class Provider < HanzoAI::BaseModel
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

        # def initialize: (Hash | HanzoAI::BaseModel) -> void
      end
    end
  end
end
