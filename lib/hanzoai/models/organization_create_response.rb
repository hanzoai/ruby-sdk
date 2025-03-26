# frozen_string_literal: true

module Hanzoai
  module Models
    class OrganizationCreateResponse < Hanzoai::BaseModel
      # @!attribute budget_id
      #
      #   @return [String]
      required :budget_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by
      #
      #   @return [String]
      required :created_by, String

      # @!attribute models
      #
      #   @return [Array<String>]
      required :models, Hanzoai::ArrayOf[String]

      # @!attribute organization_id
      #
      #   @return [String]
      required :organization_id, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute updated_by
      #
      #   @return [String]
      required :updated_by, String

      # @!attribute metadata
      #
      #   @return [Object, nil]
      optional :metadata, Hanzoai::Unknown, nil?: true

      # @!attribute organization_alias
      #
      #   @return [String, nil]
      optional :organization_alias, String, nil?: true

      # @!attribute [r] spend
      #
      #   @return [Float, nil]
      optional :spend, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :spend

      # @!parse
      #   # @param budget_id [String]
      #   # @param created_at [Time]
      #   # @param created_by [String]
      #   # @param models [Array<String>]
      #   # @param organization_id [String]
      #   # @param updated_at [Time]
      #   # @param updated_by [String]
      #   # @param metadata [Object, nil]
      #   # @param organization_alias [String, nil]
      #   # @param spend [Float]
      #   #
      #   def initialize(
      #     budget_id:,
      #     created_at:,
      #     created_by:,
      #     models:,
      #     organization_id:,
      #     updated_at:,
      #     updated_by:,
      #     metadata: nil,
      #     organization_alias: nil,
      #     spend: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
