# frozen_string_literal: true

module HanzoAI
  module Models
    class OrganizationUpdateMemberParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute organization_id
      #
      #   @return [String]
      required :organization_id, String

      # @!attribute max_budget_in_organization
      #
      #   @return [Float, nil]
      optional :max_budget_in_organization, Float, nil?: true

      # @!attribute role
      #   Admin Roles: PROXY_ADMIN: admin over the platform PROXY_ADMIN_VIEW_ONLY: can
      #     login, view all own keys, view all spend ORG_ADMIN: admin over a specific
      #     organization, can create teams, users only within their organization
      #
      #     Internal User Roles: INTERNAL_USER: can login, view/create/delete their own
      #     keys, view their spend INTERNAL_USER_VIEW_ONLY: can login, view their own keys,
      #     view their own spend
      #
      #     Team Roles: TEAM: used for JWT auth
      #
      #     Customer Roles: CUSTOMER: External users -> these are customers
      #
      #   @return [Symbol, HanzoAI::Models::OrganizationUpdateMemberParams::Role, nil]
      optional :role, enum: -> { HanzoAI::Models::OrganizationUpdateMemberParams::Role }, nil?: true

      # @!attribute user_email
      #
      #   @return [String, nil]
      optional :user_email, String, nil?: true

      # @!attribute user_id
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!parse
      #   # @param organization_id [String]
      #   # @param max_budget_in_organization [Float, nil]
      #   # @param role [Symbol, HanzoAI::Models::OrganizationUpdateMemberParams::Role, nil]
      #   # @param user_email [String, nil]
      #   # @param user_id [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     organization_id:,
      #     max_budget_in_organization: nil,
      #     role: nil,
      #     user_email: nil,
      #     user_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      # Admin Roles: PROXY_ADMIN: admin over the platform PROXY_ADMIN_VIEW_ONLY: can
      #   login, view all own keys, view all spend ORG_ADMIN: admin over a specific
      #   organization, can create teams, users only within their organization
      #
      #   Internal User Roles: INTERNAL_USER: can login, view/create/delete their own
      #   keys, view their spend INTERNAL_USER_VIEW_ONLY: can login, view their own keys,
      #   view their own spend
      #
      #   Team Roles: TEAM: used for JWT auth
      #
      #   Customer Roles: CUSTOMER: External users -> these are customers
      module Role
        extend HanzoAI::Enum

        PROXY_ADMIN = :proxy_admin
        PROXY_ADMIN_VIEWER = :proxy_admin_viewer
        ORG_ADMIN = :org_admin
        INTERNAL_USER = :internal_user
        INTERNAL_USER_VIEWER = :internal_user_viewer
        TEAM = :team
        CUSTOMER = :customer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
