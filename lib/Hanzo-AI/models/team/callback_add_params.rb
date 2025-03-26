# frozen_string_literal: true

module HanzoAI
  module Models
    module Team
      class CallbackAddParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute callback_name
        #
        #   @return [String]
        required :callback_name, String

        # @!attribute callback_vars
        #
        #   @return [Hash{Symbol=>String}]
        required :callback_vars, HanzoAI::HashOf[String]

        # @!attribute callback_type
        #
        #   @return [Symbol, HanzoAI::Models::Team::CallbackAddParams::CallbackType, nil]
        optional :callback_type, enum: -> { HanzoAI::Models::Team::CallbackAddParams::CallbackType }, nil?: true

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
        #   # @param callback_type [Symbol, HanzoAI::Models::Team::CallbackAddParams::CallbackType, nil]
        #   # @param llm_changed_by [String]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(callback_name:, callback_vars:, callback_type: nil, llm_changed_by: nil, request_options: {}, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void

        module CallbackType
          extend HanzoAI::Enum

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
