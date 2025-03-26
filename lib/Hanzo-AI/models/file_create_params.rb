# frozen_string_literal: true

module HanzoAI
  module Models
    class FileCreateParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute file
      #
      #   @return [IO, StringIO]
      required :file, IO

      # @!attribute purpose
      #
      #   @return [String]
      required :purpose, String

      # @!attribute [r] custom_llm_provider
      #
      #   @return [String, nil]
      optional :custom_llm_provider, String

      # @!parse
      #   # @return [String]
      #   attr_writer :custom_llm_provider

      # @!parse
      #   # @param file [IO, StringIO]
      #   # @param purpose [String]
      #   # @param custom_llm_provider [String]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(file:, purpose:, custom_llm_provider: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
