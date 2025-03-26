# frozen_string_literal: true

module HanzoAI
  module Resources
    class Threads
      # @return [HanzoAI::Resources::Threads::Messages]
      attr_reader :messages

      # @return [HanzoAI::Resources::Threads::Runs]
      attr_reader :runs

      # Create a thread.
      #
      #   API Reference -
      #   https://platform.openai.com/docs/api-reference/threads/createThread
      #
      # @param params [HanzoAI::Models::ThreadCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params = {})
        @client.request(
          method: :post,
          path: "v1/threads",
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # Retrieves a thread.
      #
      #   API Reference - https://platform.openai.com/docs/api-reference/threads/getThread
      #
      # @param thread_id [String]
      #
      # @param params [HanzoAI::Models::ThreadRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(thread_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/threads/%0s", thread_id],
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
        @messages = HanzoAI::Resources::Threads::Messages.new(client: client)
        @runs = HanzoAI::Resources::Threads::Runs.new(client: client)
      end
    end
  end
end
