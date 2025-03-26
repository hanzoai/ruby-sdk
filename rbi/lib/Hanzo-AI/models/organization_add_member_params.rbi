# typed: strong

module HanzoAI
  module Models
    class OrganizationAddMemberParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(T.any(T::Array[HanzoAI::Models::OrgMember], HanzoAI::Models::OrgMember)) }
      attr_accessor :member

      sig { returns(String) }
      attr_accessor :organization_id

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget_in_organization

      sig do
        params(
          member: T.any(
            T::Array[T.any(HanzoAI::Models::OrgMember, HanzoAI::Util::AnyHash)],
            HanzoAI::Models::OrgMember,
            HanzoAI::Util::AnyHash
          ),
          organization_id: String,
          max_budget_in_organization: T.nilable(Float),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(member:, organization_id:, max_budget_in_organization: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              member: T.any(T::Array[HanzoAI::Models::OrgMember], HanzoAI::Models::OrgMember),
              organization_id: String,
              max_budget_in_organization: T.nilable(Float),
              request_options: HanzoAI::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Member
        extend HanzoAI::Union

        OrgMemberArray = T.let(HanzoAI::ArrayOf[HanzoAI::Models::OrgMember], HanzoAI::Converter)

        sig { override.returns([T::Array[HanzoAI::Models::OrgMember], HanzoAI::Models::OrgMember]) }
        def self.variants
        end
      end
    end
  end
end
