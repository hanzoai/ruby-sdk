# frozen_string_literal: true

module Hanzoai
  module Models
    module Model
      class InfoListParams < Hanzoai::BaseModel
        # @!parse
        #   extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        # @!attribute llm_model_id
        #
        #   @return [String, nil]
        optional :llm_model_id, String, nil?: true

        # @!parse
        #   # @param llm_model_id [String, nil]
        #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(llm_model_id: nil, request_options: {}, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end
    end
  end
end
