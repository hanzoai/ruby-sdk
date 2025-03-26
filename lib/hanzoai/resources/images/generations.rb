# frozen_string_literal: true

module Hanzoai
  module Resources
    class Images
      class Generations
        # Image Generation
        #
        # @param params [Hanzoai::Models::Images::GenerationCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def create(params = {})
          @client.request(
            method: :post,
            path: "v1/images/generations",
            model: Hanzoai::Unknown,
            options: params[:request_options]
          )
        end

        # @param client [Hanzoai::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
