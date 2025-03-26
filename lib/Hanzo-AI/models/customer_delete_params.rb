# frozen_string_literal: true

module HanzoAI
  module Models
    class CustomerDeleteParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute user_ids
      #
      #   @return [Array<String>]
      required :user_ids, HanzoAI::ArrayOf[String]

      # @!parse
      #   # @param user_ids [Array<String>]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(user_ids:, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
