# typed: strong

module Hanzoai
  module Models
    class UserRetrieveInfoParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # User ID in the request parameters
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          user_id: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(user_id: nil, request_options: {})
      end

      sig { override.returns({user_id: T.nilable(String), request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
