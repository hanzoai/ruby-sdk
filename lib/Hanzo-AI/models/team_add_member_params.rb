# frozen_string_literal: true

module HanzoAI
  module Models
    class TeamAddMemberParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute member
      #
      #   @return [Array<HanzoAI::Models::Member>, HanzoAI::Models::Member]
      required :member, union: -> { HanzoAI::Models::TeamAddMemberParams::Member }

      # @!attribute team_id
      #
      #   @return [String]
      required :team_id, String

      # @!attribute max_budget_in_team
      #
      #   @return [Float, nil]
      optional :max_budget_in_team, Float, nil?: true

      # @!parse
      #   # @param member [Array<HanzoAI::Models::Member>, HanzoAI::Models::Member]
      #   # @param team_id [String]
      #   # @param max_budget_in_team [Float, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(member:, team_id:, max_budget_in_team: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      module Member
        extend HanzoAI::Union

        MemberArray = HanzoAI::ArrayOf[-> { HanzoAI::Models::Member }]

        variant HanzoAI::Models::TeamAddMemberParams::Member::MemberArray

        variant -> { HanzoAI::Models::Member }

        # @!parse
        #   # @return [Array(Array<HanzoAI::Models::Member>, HanzoAI::Models::Member)]
        #   def self.variants; end
      end
    end
  end
end
