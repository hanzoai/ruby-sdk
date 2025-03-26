# frozen_string_literal: true

module Hanzoai
  module Models
    class KeyDeleteParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute key_aliases
      #
      #   @return [Array<String>, nil]
      optional :key_aliases, Hanzoai::ArrayOf[String], nil?: true

      # @!attribute keys
      #
      #   @return [Array<String>, nil]
      optional :keys, Hanzoai::ArrayOf[String], nil?: true

      # @!attribute [r] llm_changed_by
      #   The llm-changed-by header enables tracking of actions performed by authorized
      #     users on behalf of other users, providing an audit trail for accountability
      #
      #   @return [String, nil]
      optional :llm_changed_by, String, api_name: :"llm-changed-by"

      # @!parse
      #   # @return [String]
      #   attr_writer :llm_changed_by

      # @!parse
      #   # @param key_aliases [Array<String>, nil]
      #   # @param keys [Array<String>, nil]
      #   # @param llm_changed_by [String]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(key_aliases: nil, keys: nil, llm_changed_by: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
