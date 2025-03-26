# frozen_string_literal: true

module HanzoAI
  module Resources
    class Images
      class Generations
        # Image Generation
        #
        # @param params [HanzoAI::Models::Images::GenerationCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def create(params = {})
          @client.request(
            method: :post,
            path: "v1/images/generations",
            model: HanzoAI::Unknown,
            options: params[:request_options]
          )
        end

        # @param client [HanzoAI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
