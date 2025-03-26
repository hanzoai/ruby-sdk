# frozen_string_literal: true

module HanzoAI
  module Models
    class FileListParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute purpose
      #
      #   @return [String, nil]
      optional :purpose, String, nil?: true

      # @!parse
      #   # @param purpose [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(purpose: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
