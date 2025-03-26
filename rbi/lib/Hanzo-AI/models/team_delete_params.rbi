# typed: strong

module HanzoAI
  module Models
    class TeamDeleteParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(T::Array[String]) }
      attr_accessor :team_ids

      # The llm-changed-by header enables tracking of actions performed by authorized
      #   users on behalf of other users, providing an audit trail for accountability
      sig { returns(T.nilable(String)) }
      attr_reader :llm_changed_by

      sig { params(llm_changed_by: String).void }
      attr_writer :llm_changed_by

      sig do
        params(
          team_ids: T::Array[String],
          llm_changed_by: String,
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(team_ids:, llm_changed_by: nil, request_options: {})
      end

      sig do
        override
          .returns({
                     team_ids: T::Array[String],
                     llm_changed_by: String,
                     request_options: HanzoAI::RequestOptions
                   })
      end
      def to_hash
      end
    end
  end
end
