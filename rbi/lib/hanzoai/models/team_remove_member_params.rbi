# typed: strong

module Hanzoai
  module Models
    class TeamRemoveMemberParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(String) }
      attr_accessor :team_id

      sig { returns(T.nilable(String)) }
      attr_accessor :user_email

      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          team_id: String,
          user_email: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(team_id:, user_email: nil, user_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              team_id: String,
              user_email: T.nilable(String),
              user_id: T.nilable(String),
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
