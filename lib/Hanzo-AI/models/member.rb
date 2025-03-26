# frozen_string_literal: true

module HanzoAI
  module Models
    class Member < HanzoAI::BaseModel
      # @!attribute role
      #
      #   @return [Symbol, HanzoAI::Models::Member::Role]
      required :role, enum: -> { HanzoAI::Models::Member::Role }

      # @!attribute user_email
      #
      #   @return [String, nil]
      optional :user_email, String, nil?: true

      # @!attribute user_id
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!parse
      #   # @param role [Symbol, HanzoAI::Models::Member::Role]
      #   # @param user_email [String, nil]
      #   # @param user_id [String, nil]
      #   #
      #   def initialize(role:, user_email: nil, user_id: nil, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      module Role
        extend HanzoAI::Enum

        ADMIN = :admin
        USER = :user

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
