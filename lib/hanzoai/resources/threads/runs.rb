# frozen_string_literal: true

module Hanzoai
  module Resources
    class Threads
      class Runs
        # Create a run.
        #
        #   API Reference: https://platform.openai.com/docs/api-reference/runs/createRun
        #
        # @param thread_id [String]
        #
        # @param params [Hanzoai::Models::Threads::RunCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def create(thread_id, params = {})
          @client.request(
            method: :post,
            path: ["v1/threads/%0s/runs", thread_id],
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
