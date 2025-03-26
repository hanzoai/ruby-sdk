# frozen_string_literal: true

module HanzoAI
  module Models
    class BlockUsers < HanzoAI::BaseModel
      # @!attribute user_ids
      #
      #   @return [Array<String>]
      required :user_ids, HanzoAI::ArrayOf[String]

      # @!parse
      #   # @param user_ids [Array<String>]
      #   #
      #   def initialize(user_ids:, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
