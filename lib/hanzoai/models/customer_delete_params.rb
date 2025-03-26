# frozen_string_literal: true

module Hanzoai
  module Models
    class CustomerDeleteParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute user_ids
      #
      #   @return [Array<String>]
      required :user_ids, Hanzoai::ArrayOf[String]

      # @!parse
      #   # @param user_ids [Array<String>]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(user_ids:, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
