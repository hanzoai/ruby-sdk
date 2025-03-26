# typed: strong

module HanzoAI
  module Models
    class TeamRemoveMemberParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

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
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
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
              request_options: HanzoAI::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
