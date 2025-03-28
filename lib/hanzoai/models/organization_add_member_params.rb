# frozen_string_literal: true

module Hanzoai
  module Models
    class OrganizationAddMemberParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute member
      #
      #   @return [Array<Hanzoai::Models::OrgMember>, Hanzoai::Models::OrgMember]
      required :member, union: -> { Hanzoai::Models::OrganizationAddMemberParams::Member }

      # @!attribute organization_id
      #
      #   @return [String]
      required :organization_id, String

      # @!attribute max_budget_in_organization
      #
      #   @return [Float, nil]
      optional :max_budget_in_organization, Float, nil?: true

      # @!parse
      #   # @param member [Array<Hanzoai::Models::OrgMember>, Hanzoai::Models::OrgMember]
      #   # @param organization_id [String]
      #   # @param max_budget_in_organization [Float, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(member:, organization_id:, max_budget_in_organization: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      module Member
        extend Hanzoai::Union

        variant -> { Hanzoai::Models::OrganizationAddMemberParams::Member::OrgMemberArray }

        variant -> { Hanzoai::Models::OrgMember }

        # @!parse
        #   # @return [Array(Array<Hanzoai::Models::OrgMember>, Hanzoai::Models::OrgMember)]
        #   def self.variants; end

        OrgMemberArray = Hanzoai::ArrayOf[-> { Hanzoai::Models::OrgMember }]
      end
    end
  end
end
