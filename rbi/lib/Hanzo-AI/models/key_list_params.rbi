# typed: strong

module HanzoAI
  module Models
    class KeyListParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # Include all keys for teams that user is an admin of.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_team_keys

      sig { params(include_team_keys: T::Boolean).void }
      attr_writer :include_team_keys

      # Filter keys by key alias
      sig { returns(T.nilable(String)) }
      attr_accessor :key_alias

      # Filter keys by organization ID
      sig { returns(T.nilable(String)) }
      attr_accessor :organization_id

      # Page number
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Return full key object
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :return_full_object

      sig { params(return_full_object: T::Boolean).void }
      attr_writer :return_full_object

      # Page size
      sig { returns(T.nilable(Integer)) }
      attr_reader :size

      sig { params(size: Integer).void }
      attr_writer :size

      # Filter keys by team ID
      sig { returns(T.nilable(String)) }
      attr_accessor :team_id

      # Filter keys by user ID
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          include_team_keys: T::Boolean,
          key_alias: T.nilable(String),
          organization_id: T.nilable(String),
          page: Integer,
          return_full_object: T::Boolean,
          size: Integer,
          team_id: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        include_team_keys: nil,
        key_alias: nil,
        organization_id: nil,
        page: nil,
        return_full_object: nil,
        size: nil,
        team_id: nil,
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              include_team_keys: T::Boolean,
              key_alias: T.nilable(String),
              organization_id: T.nilable(String),
              page: Integer,
              return_full_object: T::Boolean,
              size: Integer,
              team_id: T.nilable(String),
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
