# typed: strong

module Hanzoai
  module Models
    class BlockTeamRequest < Hanzoai::BaseModel
      sig { returns(String) }
      attr_accessor :team_id

      sig { params(team_id: String).returns(T.attached_class) }
      def self.new(team_id:)
      end

      sig { override.returns({team_id: String}) }
      def to_hash
      end
    end
  end
end
