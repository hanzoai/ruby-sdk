# frozen_string_literal: true

module Hanzoai
  module Models
    class CredentialCreateParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

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
      #   @return [Object, nil]
      optional :credential_values, Hanzoai::Unknown, nil?: true

      # @!attribute model_id
      #
      #   @return [String, nil]
      optional :model_id, String, nil?: true

      # @!parse
      #   # @param credential_info [Object]
      #   # @param credential_name [String]
      #   # @param credential_values [Object, nil]
      #   # @param model_id [String, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(credential_info:, credential_name:, credential_values: nil, model_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
