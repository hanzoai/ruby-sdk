# frozen_string_literal: true

module Hanzoai
  module Resources
    class OpenAI
      class Deployments
        # @return [Hanzoai::Resources::OpenAI::Deployments::Chat]
        attr_reader :chat

        # Follows the exact same API spec as
        #   `OpenAI's Completions API https://platform.openai.com/docs/api-reference/completions`
        #
        #   ```bash
        #   curl -X POST http://localhost:4000/v1/completions
        #   -H "Content-Type: application/json"
        #   -H "Authorization: Bearer sk-1234"
        #   -d '{
        #       "model": "gpt-3.5-turbo-instruct",
        #       "prompt": "Once upon a time",
        #       "max_tokens": 50,
        #       "temperature": 0.7
        #   }'
        #   ```
        #
        # @param model [String]
        #
        # @param params [Hanzoai::Models::OpenAI::DeploymentCompleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def complete(model, params = {})
          @client.request(
            method: :post,
            path: ["openai/deployments/%0s/completions", model],
            model: Hanzoai::Unknown,
            options: params[:request_options]
          )
        end

        # Follows the exact same API spec as
        #   `OpenAI's Embeddings API https://platform.openai.com/docs/api-reference/embeddings`
        #
        #   ```bash
        #   curl -X POST http://localhost:4000/v1/embeddings
        #   -H "Content-Type: application/json"
        #   -H "Authorization: Bearer sk-1234"
        #   -d '{
        #       "model": "text-embedding-ada-002",
        #       "input": "The quick brown fox jumps over the lazy dog"
        #   }'
        #   ```
        #
        # @param model [String]
        #
        # @param params [Hanzoai::Models::OpenAI::DeploymentEmbedParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def embed(model, params = {})
          @client.request(
            method: :post,
            path: ["openai/deployments/%0s/embeddings", model],
            model: Hanzoai::Unknown,
            options: params[:request_options]
          )
        end

        # @param client [Hanzoai::Client]
        def initialize(client:)
          @client = client
          @chat = Hanzoai::Resources::OpenAI::Deployments::Chat.new(client: client)
        end
      end
    end
  end
end
