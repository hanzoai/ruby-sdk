# typed: strong

module Hanzoai
  module Models
    class TeamRetrieveInfoParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # Team ID in the request parameters
      sig { returns(T.nilable(String)) }
      attr_reader :team_id

      sig { params(team_id: String).void }
      attr_writer :team_id

      sig do
        params(team_id: String, request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(team_id: nil, request_options: {})
      end

      sig { override.returns({team_id: String, request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
