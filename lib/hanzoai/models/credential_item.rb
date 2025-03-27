# frozen_string_literal: true

module Hanzoai
  module Models
    class CredentialItem < Hanzoai::BaseModel
      # @!attribute credential_info
      #
      #   @return [Object]
      required :credential_info, Hanzoai::Unknown

      # @!attribute credential_name
      #
      #   @return [String]
      required :credential_name, String

      # @!attribute credential_values
      #
      #   @return [Object]
      required :credential_values, Hanzoai::Unknown

      # @!parse
      #   # @param credential_info [Object]
      #   # @param credential_name [String]
      #   # @param credential_values [Object]
      #   #
      #   def initialize(credential_info:, credential_name:, credential_values:, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
