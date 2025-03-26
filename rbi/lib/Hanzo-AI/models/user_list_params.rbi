# typed: strong

module HanzoAI
  module Models
    class UserListParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # Page number
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Number of items per page
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filter users by role
      sig { returns(T.nilable(String)) }
      attr_accessor :role

      # Get list of users by user_ids
      sig { returns(T.nilable(String)) }
      attr_accessor :user_ids

      sig do
        params(
          page: Integer,
          page_size: Integer,
          role: T.nilable(String),
          user_ids: T.nilable(String),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(page: nil, page_size: nil, role: nil, user_ids: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              page: Integer,
              page_size: Integer,
              role: T.nilable(String),
              user_ids: T.nilable(String),
              request_options: HanzoAI::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
