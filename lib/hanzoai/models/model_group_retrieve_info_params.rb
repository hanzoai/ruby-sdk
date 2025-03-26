# frozen_string_literal: true

module Hanzoai
  module Models
    class ModelGroupRetrieveInfoParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute model_group
      #
      #   @return [String, nil]
      optional :model_group, String, nil?: true

      # @!parse
      #   # @param model_group [String, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(model_group: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
