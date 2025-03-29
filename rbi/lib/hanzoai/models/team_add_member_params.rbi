# typed: strong

module Hanzoai
  module Models
    class TeamAddMemberParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T.any(T::Array[Hanzoai::Models::Member], Hanzoai::Models::Member)) }
      attr_accessor :member

      sig { returns(String) }
      attr_accessor :team_id

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget_in_team

      sig do
        params(
          member: T.any(
            T::Array[T.any(Hanzoai::Models::Member, Hanzoai::Util::AnyHash)],
            Hanzoai::Models::Member,
            Hanzoai::Util::AnyHash
          ),
          team_id: String,
          max_budget_in_team: T.nilable(Float),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(member:, team_id:, max_budget_in_team: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              member: T.any(T::Array[Hanzoai::Models::Member], Hanzoai::Models::Member),
              team_id: String,
              max_budget_in_team: T.nilable(Float),
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Member
        extend Hanzoai::Union

        sig { override.returns([T::Array[Hanzoai::Models::Member], Hanzoai::Models::Member]) }
        def self.variants
        end

        MemberArray = T.let(Hanzoai::ArrayOf[Hanzoai::Models::Member], Hanzoai::Converter)
      end
    end
  end
end
