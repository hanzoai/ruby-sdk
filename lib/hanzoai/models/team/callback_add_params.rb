# frozen_string_literal: true

module Hanzoai
  module Models
    module Team
      class CallbackAddParams < Hanzoai::BaseModel
        # @!parse
        #   extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        # @!attribute callback_name
        #
        #   @return [String]
        required :callback_name, String

        # @!attribute callback_vars
        #
        #   @return [Hash{Symbol=>String}]
        required :callback_vars, Hanzoai::HashOf[String]

        # @!attribute callback_type
        #
        #   @return [Symbol, Hanzoai::Models::Team::CallbackAddParams::CallbackType, nil]
        optional :callback_type, enum: -> { Hanzoai::Models::Team::CallbackAddParams::CallbackType }, nil?: true

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
        #   # @param callback_name [String]
        #   # @param callback_vars [Hash{Symbol=>String}]
        #   # @param callback_type [Symbol, Hanzoai::Models::Team::CallbackAddParams::CallbackType, nil]
        #   # @param llm_changed_by [String]
        #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(callback_name:, callback_vars:, callback_type: nil, llm_changed_by: nil, request_options: {}, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void

        module CallbackType
          extend Hanzoai::Enum

          SUCCESS = :success
          FAILURE = :failure
          SUCCESS_AND_FAILURE = :success_and_failure

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
