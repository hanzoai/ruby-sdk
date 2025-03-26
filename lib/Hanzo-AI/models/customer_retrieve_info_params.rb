# frozen_string_literal: true

module HanzoAI
  module Models
    class CustomerRetrieveInfoParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute end_user_id
      #   End User ID in the request parameters
      #
      #   @return [String]
      required :end_user_id, String

      # @!parse
      #   # @param end_user_id [String]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(end_user_id:, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
