# typed: strong

module Hanzoai
  module Models
    class KeyUnblockParams < Hanzoai::Models::BlockKeyRequest
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # The llm-changed-by header enables tracking of actions performed by authorized
      #   users on behalf of other users, providing an audit trail for accountability
      sig { returns(T.nilable(String)) }
      attr_reader :llm_changed_by

      sig { params(llm_changed_by: String).void }
      attr_writer :llm_changed_by

      sig do
        params(
          llm_changed_by: String,
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(llm_changed_by: nil, request_options: {})
      end

      sig { override.returns({llm_changed_by: String, request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
