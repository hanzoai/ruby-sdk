# frozen_string_literal: true

module HanzoAI
  module Resources
    class Threads
      class Runs
        # Create a run.
        #
        #   API Reference: https://platform.openai.com/docs/api-reference/runs/createRun
        #
        # @param thread_id [String]
        #
        # @param params [HanzoAI::Models::Threads::RunCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def create(thread_id, params = {})
          @client.request(
            method: :post,
            path: ["v1/threads/%0s/runs", thread_id],
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
