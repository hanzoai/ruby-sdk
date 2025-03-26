# typed: strong

module Hanzoai
  module Models
    class KeyDeleteParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :key_aliases

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :keys

      # The llm-changed-by header enables tracking of actions performed by authorized
      #   users on behalf of other users, providing an audit trail for accountability
      sig { returns(T.nilable(String)) }
      attr_reader :llm_changed_by

      sig { params(llm_changed_by: String).void }
      attr_writer :llm_changed_by

      sig do
        params(
          key_aliases: T.nilable(T::Array[String]),
          keys: T.nilable(T::Array[String]),
          llm_changed_by: String,
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(key_aliases: nil, keys: nil, llm_changed_by: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              key_aliases: T.nilable(T::Array[String]),
              keys: T.nilable(T::Array[String]),
              llm_changed_by: String,
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
