# frozen_string_literal: true

module HanzoAI
  module Models
    class OrgMember < HanzoAI::BaseModel
      # @!attribute role
      #
      #   @return [Symbol, HanzoAI::Models::OrgMember::Role]
      required :role, enum: -> { HanzoAI::Models::OrgMember::Role }

      # @!attribute user_email
      #
      #   @return [String, nil]
      optional :user_email, String, nil?: true

      # @!attribute user_id
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!parse
      #   # @param role [Symbol, HanzoAI::Models::OrgMember::Role]
      #   # @param user_email [String, nil]
      #   # @param user_id [String, nil]
      #   #
      #   def initialize(role:, user_email: nil, user_id: nil, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      module Role
        extend HanzoAI::Enum

        ORG_ADMIN = :org_admin
        INTERNAL_USER = :internal_user
        INTERNAL_USER_VIEWER = :internal_user_viewer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
