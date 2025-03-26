# frozen_string_literal: true

module HanzoAI
  module Models
    class IPAddress < HanzoAI::BaseModel
      # @!attribute ip
      #
      #   @return [String]
      required :ip, String

      # @!parse
      #   # @param ip [String]
      #   #
      #   def initialize(ip:, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
