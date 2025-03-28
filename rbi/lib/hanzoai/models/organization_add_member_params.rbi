# typed: strong

module Hanzoai
  module Models
    class OrganizationAddMemberParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T.any(T::Array[Hanzoai::Models::OrgMember], Hanzoai::Models::OrgMember)) }
      attr_accessor :member

      sig { returns(String) }
      attr_accessor :organization_id

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget_in_organization

      sig do
        params(
          member: T.any(
            T::Array[T.any(Hanzoai::Models::OrgMember, Hanzoai::Util::AnyHash)],
            Hanzoai::Models::OrgMember,
            Hanzoai::Util::AnyHash
          ),
          organization_id: String,
          max_budget_in_organization: T.nilable(Float),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(member:, organization_id:, max_budget_in_organization: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              member: T.any(T::Array[Hanzoai::Models::OrgMember], Hanzoai::Models::OrgMember),
              organization_id: String,
              max_budget_in_organization: T.nilable(Float),
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Member
        extend Hanzoai::Union

        sig { override.returns([T::Array[Hanzoai::Models::OrgMember], Hanzoai::Models::OrgMember]) }
        def self.variants
        end

        OrgMemberArray = T.let(Hanzoai::ArrayOf[Hanzoai::Models::OrgMember], Hanzoai::Converter)
      end
    end
  end
end
