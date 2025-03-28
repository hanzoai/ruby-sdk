# typed: strong

module Hanzoai
  module Models
    class OrganizationUpdateMemberParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(String) }
      attr_accessor :organization_id

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget_in_organization

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
      sig { returns(T.nilable(Hanzoai::Models::OrganizationUpdateMemberParams::Role::OrSymbol)) }
      attr_accessor :role

      sig { returns(T.nilable(String)) }
      attr_accessor :user_email

      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          organization_id: String,
          max_budget_in_organization: T.nilable(Float),
          role: T.nilable(Hanzoai::Models::OrganizationUpdateMemberParams::Role::OrSymbol),
          user_email: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        organization_id:,
        max_budget_in_organization: nil,
        role: nil,
        user_email: nil,
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              organization_id: String,
              max_budget_in_organization: T.nilable(Float),
              role: T.nilable(Hanzoai::Models::OrganizationUpdateMemberParams::Role::OrSymbol),
              user_email: T.nilable(String),
              user_id: T.nilable(String),
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end

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
        extend Hanzoai::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Hanzoai::Models::OrganizationUpdateMemberParams::Role) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Hanzoai::Models::OrganizationUpdateMemberParams::Role::TaggedSymbol) }

        PROXY_ADMIN = T.let(:proxy_admin, Hanzoai::Models::OrganizationUpdateMemberParams::Role::TaggedSymbol)
        PROXY_ADMIN_VIEWER =
          T.let(:proxy_admin_viewer, Hanzoai::Models::OrganizationUpdateMemberParams::Role::TaggedSymbol)
        ORG_ADMIN = T.let(:org_admin, Hanzoai::Models::OrganizationUpdateMemberParams::Role::TaggedSymbol)
        INTERNAL_USER =
          T.let(:internal_user, Hanzoai::Models::OrganizationUpdateMemberParams::Role::TaggedSymbol)
        INTERNAL_USER_VIEWER =
          T.let(:internal_user_viewer, Hanzoai::Models::OrganizationUpdateMemberParams::Role::TaggedSymbol)
        TEAM = T.let(:team, Hanzoai::Models::OrganizationUpdateMemberParams::Role::TaggedSymbol)
        CUSTOMER = T.let(:customer, Hanzoai::Models::OrganizationUpdateMemberParams::Role::TaggedSymbol)

        sig { override.returns(T::Array[Hanzoai::Models::OrganizationUpdateMemberParams::Role::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
