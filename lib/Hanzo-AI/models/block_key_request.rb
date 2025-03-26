# frozen_string_literal: true

module HanzoAI
  module Models
    class BlockKeyRequest < HanzoAI::BaseModel
      # @!attribute key
      #
      #   @return [String]
      required :key, String

      # @!parse
      #   # @param key [String]
      #   #
      #   def initialize(key:, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
