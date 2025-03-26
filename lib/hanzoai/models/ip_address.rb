# frozen_string_literal: true

module Hanzoai
  module Models
    class IPAddress < Hanzoai::BaseModel
      # @!attribute ip
      #
      #   @return [String]
      required :ip, String

      # @!parse
      #   # @param ip [String]
      #   #
      #   def initialize(ip:, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
