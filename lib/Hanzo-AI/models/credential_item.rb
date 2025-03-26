# frozen_string_literal: true

module HanzoAI
  module Models
    class CredentialItem < HanzoAI::BaseModel
      # @!attribute credential_info
      #
      #   @return [Object]
      required :credential_info, HanzoAI::Unknown

      # @!attribute credential_name
      #
      #   @return [String]
      required :credential_name, String

      # @!attribute credential_values
      #
      #   @return [Object]
      required :credential_values, HanzoAI::Unknown

      # @!parse
      #   # @param credential_info [Object]
      #   # @param credential_name [String]
      #   # @param credential_values [Object]
      #   #
      #   def initialize(credential_info:, credential_name:, credential_values:, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
