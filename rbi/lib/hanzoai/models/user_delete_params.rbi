# typed: strong

module Hanzoai
  module Models
    class UserDeleteParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T::Array[String]) }
      attr_accessor :user_ids

      # The llm-changed-by header enables tracking of actions performed by authorized
      #   users on behalf of other users, providing an audit trail for accountability
      sig { returns(T.nilable(String)) }
      attr_reader :llm_changed_by

      sig { params(llm_changed_by: String).void }
      attr_writer :llm_changed_by

      sig do
        params(
          user_ids: T::Array[String],
          llm_changed_by: String,
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(user_ids:, llm_changed_by: nil, request_options: {})
      end

      sig do
        override
          .returns({
                     user_ids: T::Array[String],
                     llm_changed_by: String,
                     request_options: Hanzoai::RequestOptions
                   })
      end
      def to_hash
      end
    end
  end
end
