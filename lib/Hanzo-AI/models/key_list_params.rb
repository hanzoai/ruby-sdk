# frozen_string_literal: true

module HanzoAI
  module Models
    class KeyListParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute [r] include_team_keys
      #   Include all keys for teams that user is an admin of.
      #
      #   @return [Boolean, nil]
      optional :include_team_keys, HanzoAI::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_team_keys

      # @!attribute key_alias
      #   Filter keys by key alias
      #
      #   @return [String, nil]
      optional :key_alias, String, nil?: true

      # @!attribute organization_id
      #   Filter keys by organization ID
      #
      #   @return [String, nil]
      optional :organization_id, String, nil?: true

      # @!attribute [r] page
      #   Page number
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page

      # @!attribute [r] return_full_object
      #   Return full key object
      #
      #   @return [Boolean, nil]
      optional :return_full_object, HanzoAI::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :return_full_object

      # @!attribute [r] size
      #   Page size
      #
      #   @return [Integer, nil]
      optional :size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :size

      # @!attribute team_id
      #   Filter keys by team ID
      #
      #   @return [String, nil]
      optional :team_id, String, nil?: true

      # @!attribute user_id
      #   Filter keys by user ID
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!parse
      #   # @param include_team_keys [Boolean]
      #   # @param key_alias [String, nil]
      #   # @param organization_id [String, nil]
      #   # @param page [Integer]
      #   # @param return_full_object [Boolean]
      #   # @param size [Integer]
      #   # @param team_id [String, nil]
      #   # @param user_id [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     include_team_keys: nil,
      #     key_alias: nil,
      #     organization_id: nil,
      #     page: nil,
      #     return_full_object: nil,
      #     size: nil,
      #     team_id: nil,
      #     user_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
