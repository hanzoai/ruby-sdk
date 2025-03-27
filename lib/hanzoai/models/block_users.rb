# frozen_string_literal: true

module Hanzoai
  module Models
    class BlockUsers < Hanzoai::BaseModel
      # @!attribute user_ids
      #
      #   @return [Array<String>]
      required :user_ids, Hanzoai::ArrayOf[String]

      # @!parse
      #   # @param user_ids [Array<String>]
      #   #
      #   def initialize(user_ids:, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
