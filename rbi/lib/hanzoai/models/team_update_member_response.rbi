# typed: strong

module Hanzoai
  module Models
    class TeamUpdateMemberResponse < Hanzoai::BaseModel
      sig { returns(String) }
      attr_accessor :team_id

      sig { returns(String) }
      attr_accessor :user_id

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget_in_team

      sig { returns(T.nilable(String)) }
      attr_accessor :user_email

      sig do
        params(
          team_id: String,
          user_id: String,
          max_budget_in_team: T.nilable(Float),
          user_email: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(team_id:, user_id:, max_budget_in_team: nil, user_email: nil)
      end

      sig do
        override
          .returns(
            {
              team_id: String,
              user_id: String,
              max_budget_in_team: T.nilable(Float),
              user_email: T.nilable(String)
            }
          )
      end
      def to_hash
      end
    end
  end
end
