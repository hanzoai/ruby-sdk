# typed: strong

module HanzoAI
  module Models
    class TeamUpdateMemberParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(String) }
      attr_accessor :team_id

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget_in_team

      sig { returns(T.nilable(HanzoAI::Models::TeamUpdateMemberParams::Role::OrSymbol)) }
      attr_accessor :role

      sig { returns(T.nilable(String)) }
      attr_accessor :user_email

      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          team_id: String,
          max_budget_in_team: T.nilable(Float),
          role: T.nilable(HanzoAI::Models::TeamUpdateMemberParams::Role::OrSymbol),
          user_email: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(team_id:, max_budget_in_team: nil, role: nil, user_email: nil, user_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              team_id: String,
              max_budget_in_team: T.nilable(Float),
              role: T.nilable(HanzoAI::Models::TeamUpdateMemberParams::Role::OrSymbol),
              user_email: T.nilable(String),
              user_id: T.nilable(String),
              request_options: HanzoAI::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Role
        extend HanzoAI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, HanzoAI::Models::TeamUpdateMemberParams::Role) }
        OrSymbol = T.type_alias { T.any(Symbol, HanzoAI::Models::TeamUpdateMemberParams::Role::TaggedSymbol) }

        ADMIN = T.let(:admin, HanzoAI::Models::TeamUpdateMemberParams::Role::TaggedSymbol)
        USER = T.let(:user, HanzoAI::Models::TeamUpdateMemberParams::Role::TaggedSymbol)

        sig { override.returns(T::Array[HanzoAI::Models::TeamUpdateMemberParams::Role::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
