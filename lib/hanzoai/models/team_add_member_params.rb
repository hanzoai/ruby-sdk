# frozen_string_literal: true

module Hanzoai
  module Models
    class TeamAddMemberParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute member
      #
      #   @return [Array<Hanzoai::Models::Member>, Hanzoai::Models::Member]
      required :member, union: -> { Hanzoai::Models::TeamAddMemberParams::Member }

      # @!attribute team_id
      #
      #   @return [String]
      required :team_id, String

      # @!attribute max_budget_in_team
      #
      #   @return [Float, nil]
      optional :max_budget_in_team, Float, nil?: true

      # @!parse
      #   # @param member [Array<Hanzoai::Models::Member>, Hanzoai::Models::Member]
      #   # @param team_id [String]
      #   # @param max_budget_in_team [Float, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(member:, team_id:, max_budget_in_team: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      module Member
        extend Hanzoai::Union

        variant -> { Hanzoai::Models::TeamAddMemberParams::Member::MemberArray }

        variant -> { Hanzoai::Models::Member }

        # @!parse
        #   # @return [Array(Array<Hanzoai::Models::Member>, Hanzoai::Models::Member)]
        #   def self.variants; end

        MemberArray = Hanzoai::ArrayOf[-> { Hanzoai::Models::Member }]
      end
    end
  end
end
