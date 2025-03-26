# frozen_string_literal: true

module Hanzoai
  module Models
    class FileListParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute purpose
      #
      #   @return [String, nil]
      optional :purpose, String, nil?: true

      # @!parse
      #   # @param purpose [String, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(purpose: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
