# frozen_string_literal: true

module HanzoAI
  module Models
    class OrganizationDeleteParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute organization_ids
      #
      #   @return [Array<String>]
      required :organization_ids, HanzoAI::ArrayOf[String]

      # @!parse
      #   # @param organization_ids [Array<String>]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(organization_ids:, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
