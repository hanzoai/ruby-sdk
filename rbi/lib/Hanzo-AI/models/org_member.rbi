# typed: strong

module HanzoAI
  module Models
    class OrgMember < HanzoAI::BaseModel
      sig { returns(HanzoAI::Models::OrgMember::Role::OrSymbol) }
      attr_accessor :role

      sig { returns(T.nilable(String)) }
      attr_accessor :user_email

      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          role: HanzoAI::Models::OrgMember::Role::OrSymbol,
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
            {role: HanzoAI::Models::OrgMember::Role::OrSymbol, user_email: T.nilable(String), user_id: T.nilable(String)}
          )
      end
      def to_hash
      end

      module Role
        extend HanzoAI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, HanzoAI::Models::OrgMember::Role) }
        OrSymbol = T.type_alias { T.any(Symbol, HanzoAI::Models::OrgMember::Role::TaggedSymbol) }

        ORG_ADMIN = T.let(:org_admin, HanzoAI::Models::OrgMember::Role::TaggedSymbol)
        INTERNAL_USER = T.let(:internal_user, HanzoAI::Models::OrgMember::Role::TaggedSymbol)
        INTERNAL_USER_VIEWER = T.let(:internal_user_viewer, HanzoAI::Models::OrgMember::Role::TaggedSymbol)

        sig { override.returns(T::Array[HanzoAI::Models::OrgMember::Role::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
