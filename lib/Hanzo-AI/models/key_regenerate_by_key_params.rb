# frozen_string_literal: true

module HanzoAI
  module Models
    class KeyRegenerateByKeyParams < HanzoAI::Models::Key::RegenerateKeyRequest
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

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
      #   # @param llm_changed_by [String]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(llm_changed_by: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
