# typed: strong

module Hanzoai
  module Models
    class OrgMember < Hanzoai::BaseModel
      sig { returns(Hanzoai::Models::OrgMember::Role::OrSymbol) }
      attr_accessor :role

      sig { returns(T.nilable(String)) }
      attr_accessor :user_email

      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          role: Hanzoai::Models::OrgMember::Role::OrSymbol,
          user_email: T.nilable(String),
          user_id: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(role:, user_email: nil, user_id: nil)
      end

      sig do
        override
          .returns(
            {role: Hanzoai::Models::OrgMember::Role::OrSymbol, user_email: T.nilable(String), user_id: T.nilable(String)}
          )
      end
      def to_hash
      end

      module Role
        extend Hanzoai::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Hanzoai::Models::OrgMember::Role) }
        OrSymbol = T.type_alias { T.any(Symbol, Hanzoai::Models::OrgMember::Role::TaggedSymbol) }

        ORG_ADMIN = T.let(:org_admin, Hanzoai::Models::OrgMember::Role::TaggedSymbol)
        INTERNAL_USER = T.let(:internal_user, Hanzoai::Models::OrgMember::Role::TaggedSymbol)
        INTERNAL_USER_VIEWER = T.let(:internal_user_viewer, Hanzoai::Models::OrgMember::Role::TaggedSymbol)

        sig { override.returns(T::Array[Hanzoai::Models::OrgMember::Role::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
