# frozen_string_literal: true

module Hanzoai
  module Models
    class BlockKeyRequest < Hanzoai::BaseModel
      # @!attribute key
      #
      #   @return [String]
      required :key, String

      # @!parse
      #   # @param key [String]
      #   #
      #   def initialize(key:, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
