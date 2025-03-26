# typed: strong

module HanzoAI
  module Models
    class TeamAddMemberParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(T.any(T::Array[HanzoAI::Models::Member], HanzoAI::Models::Member)) }
      attr_accessor :member

      sig { returns(String) }
      attr_accessor :team_id

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget_in_team

      sig do
        params(
          member: T.any(
            T::Array[T.any(HanzoAI::Models::Member, HanzoAI::Util::AnyHash)],
            HanzoAI::Models::Member,
            HanzoAI::Util::AnyHash
          ),
          team_id: String,
          max_budget_in_team: T.nilable(Float),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(member:, team_id:, max_budget_in_team: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              member: T.any(T::Array[HanzoAI::Models::Member], HanzoAI::Models::Member),
              team_id: String,
              max_budget_in_team: T.nilable(Float),
              request_options: HanzoAI::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Member
        extend HanzoAI::Union

        MemberArray = T.let(HanzoAI::ArrayOf[HanzoAI::Models::Member], HanzoAI::Converter)

        sig { override.returns([T::Array[HanzoAI::Models::Member], HanzoAI::Models::Member]) }
        def self.variants
        end
      end
    end
  end
end
