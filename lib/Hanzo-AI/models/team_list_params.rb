# frozen_string_literal: true

module HanzoAI
  module Models
    class TeamListParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute organization_id
      #
      #   @return [String, nil]
      optional :organization_id, String, nil?: true

      # @!attribute user_id
      #   Only return teams which this 'user_id' belongs to
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!parse
      #   # @param organization_id [String, nil]
      #   # @param user_id [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(organization_id: nil, user_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
