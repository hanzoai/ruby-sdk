# frozen_string_literal: true

module HanzoAI
  module Models
    class SpendCalculateSpendParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute completion_response
      #
      #   @return [Object, nil]
      optional :completion_response, HanzoAI::Unknown, nil?: true

      # @!attribute messages
      #
      #   @return [Array<Object>, nil]
      optional :messages, HanzoAI::ArrayOf[HanzoAI::Unknown], nil?: true

      # @!attribute model
      #
      #   @return [String, nil]
      optional :model, String, nil?: true

      # @!parse
      #   # @param completion_response [Object, nil]
      #   # @param messages [Array<Object>, nil]
      #   # @param model [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(completion_response: nil, messages: nil, model: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
