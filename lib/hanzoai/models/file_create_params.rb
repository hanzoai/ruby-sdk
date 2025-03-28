# frozen_string_literal: true

module Hanzoai
  module Models
    class FileCreateParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

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
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(file:, purpose:, custom_llm_provider: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
