# frozen_string_literal: true

module HanzoAI
  module Models
    module Model
      class InfoListParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute llm_model_id
        #
        #   @return [String, nil]
        optional :llm_model_id, String, nil?: true

        # @!parse
        #   # @param llm_model_id [String, nil]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(llm_model_id: nil, request_options: {}, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void
      end
    end
  end
end
