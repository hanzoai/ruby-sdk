# frozen_string_literal: true

module HanzoAI
  module Models
    class CachePingResponse < HanzoAI::BaseModel
      # @!attribute cache_type
      #
      #   @return [String]
      required :cache_type, String

      # @!attribute status
      #
      #   @return [String]
      required :status, String

      # @!attribute health_check_cache_params
      #
      #   @return [Object, nil]
      optional :health_check_cache_params, HanzoAI::Unknown, nil?: true

      # @!attribute llm_cache_params
      #
      #   @return [String, nil]
      optional :llm_cache_params, String, nil?: true

      # @!attribute ping_response
      #
      #   @return [Boolean, nil]
      optional :ping_response, HanzoAI::BooleanModel, nil?: true

      # @!attribute set_cache_response
      #
      #   @return [String, nil]
      optional :set_cache_response, String, nil?: true

      # @!parse
      #   # @param cache_type [String]
      #   # @param status [String]
      #   # @param health_check_cache_params [Object, nil]
      #   # @param llm_cache_params [String, nil]
      #   # @param ping_response [Boolean, nil]
      #   # @param set_cache_response [String, nil]
      #   #
      #   def initialize(
      #     cache_type:,
      #     status:,
      #     health_check_cache_params: nil,
      #     llm_cache_params: nil,
      #     ping_response: nil,
      #     set_cache_response: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
