# frozen_string_literal: true

module HanzoAI
  module Models
    class OrganizationAddMemberParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute member
      #
      #   @return [Array<HanzoAI::Models::OrgMember>, HanzoAI::Models::OrgMember]
      required :member, union: -> { HanzoAI::Models::OrganizationAddMemberParams::Member }

      # @!attribute organization_id
      #
      #   @return [String]
      required :organization_id, String

      # @!attribute max_budget_in_organization
      #
      #   @return [Float, nil]
      optional :max_budget_in_organization, Float, nil?: true

      # @!parse
      #   # @param member [Array<HanzoAI::Models::OrgMember>, HanzoAI::Models::OrgMember]
      #   # @param organization_id [String]
      #   # @param max_budget_in_organization [Float, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(member:, organization_id:, max_budget_in_organization: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      module Member
        extend HanzoAI::Union

        OrgMemberArray = HanzoAI::ArrayOf[-> { HanzoAI::Models::OrgMember }]

        variant HanzoAI::Models::OrganizationAddMemberParams::Member::OrgMemberArray

        variant -> { HanzoAI::Models::OrgMember }

        # @!parse
        #   # @return [Array(Array<HanzoAI::Models::OrgMember>, HanzoAI::Models::OrgMember)]
        #   def self.variants; end
      end
    end
  end
end
