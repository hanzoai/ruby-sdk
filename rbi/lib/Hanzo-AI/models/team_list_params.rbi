# typed: strong

module HanzoAI
  module Models
    class TeamListParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :organization_id

      # Only return teams which this 'user_id' belongs to
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          organization_id: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(organization_id: nil, user_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              organization_id: T.nilable(String),
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
