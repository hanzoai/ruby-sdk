# frozen_string_literal: true

module Hanzoai
  module Models
    class Member < Hanzoai::BaseModel
      # @!attribute role
      #
      #   @return [Symbol, Hanzoai::Models::Member::Role]
      required :role, enum: -> { Hanzoai::Models::Member::Role }

      # @!attribute user_email
      #
      #   @return [String, nil]
      optional :user_email, String, nil?: true

      # @!attribute user_id
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!parse
      #   # @param role [Symbol, Hanzoai::Models::Member::Role]
      #   # @param user_email [String, nil]
      #   # @param user_id [String, nil]
      #   #
      #   def initialize(role:, user_email: nil, user_id: nil, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      module Role
        extend Hanzoai::Enum

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
