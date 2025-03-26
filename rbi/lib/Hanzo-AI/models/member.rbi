# typed: strong

module HanzoAI
  module Models
    class Member < HanzoAI::BaseModel
      sig { returns(HanzoAI::Models::Member::Role::OrSymbol) }
      attr_accessor :role

      sig { returns(T.nilable(String)) }
      attr_accessor :user_email

      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          role: HanzoAI::Models::Member::Role::OrSymbol,
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
            {role: HanzoAI::Models::Member::Role::OrSymbol, user_email: T.nilable(String), user_id: T.nilable(String)}
          )
      end
      def to_hash
      end

      module Role
        extend HanzoAI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, HanzoAI::Models::Member::Role) }
        OrSymbol = T.type_alias { T.any(Symbol, HanzoAI::Models::Member::Role::TaggedSymbol) }

        ADMIN = T.let(:admin, HanzoAI::Models::Member::Role::TaggedSymbol)
        USER = T.let(:user, HanzoAI::Models::Member::Role::TaggedSymbol)

        sig { override.returns(T::Array[HanzoAI::Models::Member::Role::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
