# frozen_string_literal: true

module Hanzoai
  module Models
    class CompletionCreateParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute model
      #
      #   @return [String, nil]
      optional :model, String, nil?: true

      # @!parse
      #   # @param model [String, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(model: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
