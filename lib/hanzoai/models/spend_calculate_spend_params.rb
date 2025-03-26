# frozen_string_literal: true

module Hanzoai
  module Models
    class SpendCalculateSpendParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute completion_response
      #
      #   @return [Object, nil]
      optional :completion_response, Hanzoai::Unknown, nil?: true

      # @!attribute messages
      #
      #   @return [Array<Object>, nil]
      optional :messages, Hanzoai::ArrayOf[Hanzoai::Unknown], nil?: true

      # @!attribute model
      #
      #   @return [String, nil]
      optional :model, String, nil?: true

      # @!parse
      #   # @param completion_response [Object, nil]
      #   # @param messages [Array<Object>, nil]
      #   # @param model [String, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(completion_response: nil, messages: nil, model: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
