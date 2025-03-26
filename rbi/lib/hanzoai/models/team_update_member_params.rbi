# typed: strong

module Hanzoai
  module Models
    class TeamUpdateMemberParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(String) }
      attr_accessor :team_id

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget_in_team

      sig { returns(T.nilable(Hanzoai::Models::TeamUpdateMemberParams::Role::OrSymbol)) }
      attr_accessor :role

      sig { returns(T.nilable(String)) }
      attr_accessor :user_email

      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          team_id: String,
          max_budget_in_team: T.nilable(Float),
          role: T.nilable(Hanzoai::Models::TeamUpdateMemberParams::Role::OrSymbol),
          user_email: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
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
              role: T.nilable(Hanzoai::Models::TeamUpdateMemberParams::Role::OrSymbol),
              user_email: T.nilable(String),
              user_id: T.nilable(String),
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Role
        extend Hanzoai::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Hanzoai::Models::TeamUpdateMemberParams::Role) }
        OrSymbol = T.type_alias { T.any(Symbol, Hanzoai::Models::TeamUpdateMemberParams::Role::TaggedSymbol) }

        ADMIN = T.let(:admin, Hanzoai::Models::TeamUpdateMemberParams::Role::TaggedSymbol)
        USER = T.let(:user, Hanzoai::Models::TeamUpdateMemberParams::Role::TaggedSymbol)

        sig { override.returns(T::Array[Hanzoai::Models::TeamUpdateMemberParams::Role::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
