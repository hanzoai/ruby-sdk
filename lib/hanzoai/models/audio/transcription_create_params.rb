# frozen_string_literal: true

module Hanzoai
  module Models
    module Audio
      class TranscriptionCreateParams < Hanzoai::BaseModel
        # @!parse
        #   extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        # @!attribute file
        #
        #   @return [IO, StringIO]
        required :file, IO

        # @!parse
        #   # @param file [IO, StringIO]
        #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(file:, request_options: {}, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end
    end
  end
end
