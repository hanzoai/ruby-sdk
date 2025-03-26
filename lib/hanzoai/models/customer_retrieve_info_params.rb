# frozen_string_literal: true

module Hanzoai
  module Models
    class CustomerRetrieveInfoParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute end_user_id
      #   End User ID in the request parameters
      #
      #   @return [String]
      required :end_user_id, String

      # @!parse
      #   # @param end_user_id [String]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(end_user_id:, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
