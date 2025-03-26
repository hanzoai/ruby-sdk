# frozen_string_literal: true

module HanzoAI
  module Models
    module Audio
      class TranscriptionCreateParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute file
        #
        #   @return [IO, StringIO]
        required :file, IO

        # @!parse
        #   # @param file [IO, StringIO]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(file:, request_options: {}, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void
      end
    end
  end
end
