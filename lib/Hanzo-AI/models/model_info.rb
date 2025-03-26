# frozen_string_literal: true

module HanzoAI
  module Models
    class ModelInfo < HanzoAI::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      required :id, String, nil?: true

      # @!attribute base_model
      #
      #   @return [String, nil]
      optional :base_model, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!attribute created_by
      #
      #   @return [String, nil]
      optional :created_by, String, nil?: true

      # @!attribute [r] db_model
      #
      #   @return [Boolean, nil]
      optional :db_model, HanzoAI::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :db_model

      # @!attribute team_id
      #
      #   @return [String, nil]
      optional :team_id, String, nil?: true

      # @!attribute team_public_model_name
      #
      #   @return [String, nil]
      optional :team_public_model_name, String, nil?: true

      # @!attribute tier
      #
      #   @return [Symbol, HanzoAI::Models::ModelInfo::Tier, nil]
      optional :tier, enum: -> { HanzoAI::Models::ModelInfo::Tier }, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time, nil?: true

      # @!attribute updated_by
      #
      #   @return [String, nil]
      optional :updated_by, String, nil?: true

      # @!parse
      #   # @param id [String, nil]
      #   # @param base_model [String, nil]
      #   # @param created_at [Time, nil]
      #   # @param created_by [String, nil]
      #   # @param db_model [Boolean]
      #   # @param team_id [String, nil]
      #   # @param team_public_model_name [String, nil]
      #   # @param tier [Symbol, HanzoAI::Models::ModelInfo::Tier, nil]
      #   # @param updated_at [Time, nil]
      #   # @param updated_by [String, nil]
      #   #
      #   def initialize(
      #     id:,
      #     base_model: nil,
      #     created_at: nil,
      #     created_by: nil,
      #     db_model: nil,
      #     team_id: nil,
      #     team_public_model_name: nil,
      #     tier: nil,
      #     updated_at: nil,
      #     updated_by: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      module Tier
        extend HanzoAI::Enum

        FREE = :free
        PAID = :paid

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
