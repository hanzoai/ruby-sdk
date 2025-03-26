# typed: strong

module Hanzoai
  module Models
    class SpendListLogsParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # Get spend logs based on api key
      sig { returns(T.nilable(String)) }
      attr_accessor :api_key

      # Time till which to view key spend
      sig { returns(T.nilable(String)) }
      attr_accessor :end_date

      # request_id to get spend logs for specific request_id. If none passed then pass
      #   spend logs for all requests
      sig { returns(T.nilable(String)) }
      attr_accessor :request_id

      # Time from which to start viewing key spend
      sig { returns(T.nilable(String)) }
      attr_accessor :start_date

      # Get spend logs based on user_id
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          api_key: T.nilable(String),
          end_date: T.nilable(String),
          request_id: T.nilable(String),
          start_date: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(api_key: nil, end_date: nil, request_id: nil, start_date: nil, user_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              api_key: T.nilable(String),
              end_date: T.nilable(String),
              request_id: T.nilable(String),
              start_date: T.nilable(String),
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
