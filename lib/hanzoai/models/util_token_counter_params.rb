# frozen_string_literal: true

module Hanzoai
  module Models
    class UtilTokenCounterParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute model
      #
      #   @return [String]
      required :model, String

      # @!attribute messages
      #
      #   @return [Array<Object>, nil]
      optional :messages, Hanzoai::ArrayOf[Hanzoai::Unknown], nil?: true

      # @!attribute prompt
      #
      #   @return [String, nil]
      optional :prompt, String, nil?: true

      # @!parse
      #   # @param model [String]
      #   # @param messages [Array<Object>, nil]
      #   # @param prompt [String, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(model:, messages: nil, prompt: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
