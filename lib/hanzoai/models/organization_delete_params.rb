# frozen_string_literal: true

module Hanzoai
  module Models
    class OrganizationDeleteParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute organization_ids
      #
      #   @return [Array<String>]
      required :organization_ids, Hanzoai::ArrayOf[String]

      # @!parse
      #   # @param organization_ids [Array<String>]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(organization_ids:, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
