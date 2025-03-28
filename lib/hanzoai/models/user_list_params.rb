# frozen_string_literal: true

module Hanzoai
  module Models
    class UserListParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute [r] page
      #   Page number
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page

      # @!attribute [r] page_size
      #   Number of items per page
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!attribute role
      #   Filter users by role
      #
      #   @return [String, nil]
      optional :role, String, nil?: true

      # @!attribute user_ids
      #   Get list of users by user_ids
      #
      #   @return [String, nil]
      optional :user_ids, String, nil?: true

      # @!parse
      #   # @param page [Integer]
      #   # @param page_size [Integer]
      #   # @param role [String, nil]
      #   # @param user_ids [String, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(page: nil, page_size: nil, role: nil, user_ids: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
