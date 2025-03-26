# frozen_string_literal: true

module HanzoAI
  module Models
    class OrganizationUpdateParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute budget_id
      #
      #   @return [String, nil]
      optional :budget_id, String, nil?: true

      # @!attribute metadata
      #
      #   @return [Object, nil]
      optional :metadata, HanzoAI::Unknown, nil?: true

      # @!attribute models
      #
      #   @return [Array<String>, nil]
      optional :models, HanzoAI::ArrayOf[String], nil?: true

      # @!attribute organization_alias
      #
      #   @return [String, nil]
      optional :organization_alias, String, nil?: true

      # @!attribute organization_id
      #
      #   @return [String, nil]
      optional :organization_id, String, nil?: true

      # @!attribute spend
      #
      #   @return [Float, nil]
      optional :spend, Float, nil?: true

      # @!attribute updated_by
      #
      #   @return [String, nil]
      optional :updated_by, String, nil?: true

      # @!parse
      #   # @param budget_id [String, nil]
      #   # @param metadata [Object, nil]
      #   # @param models [Array<String>, nil]
      #   # @param organization_alias [String, nil]
      #   # @param organization_id [String, nil]
      #   # @param spend [Float, nil]
      #   # @param updated_by [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     budget_id: nil,
      #     metadata: nil,
      #     models: nil,
      #     organization_alias: nil,
      #     organization_id: nil,
      #     spend: nil,
      #     updated_by: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
