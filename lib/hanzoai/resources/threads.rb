# frozen_string_literal: true

module Hanzoai
  module Resources
    class Threads
      # @return [Hanzoai::Resources::Threads::Messages]
      attr_reader :messages

      # @return [Hanzoai::Resources::Threads::Runs]
      attr_reader :runs

      # Create a thread.
      #
      #   API Reference -
      #   https://platform.openai.com/docs/api-reference/threads/createThread
      #
      # @param params [Hanzoai::Models::ThreadCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params = {})
        @client.request(
          method: :post,
          path: "v1/threads",
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Retrieves a thread.
      #
      #   API Reference - https://platform.openai.com/docs/api-reference/threads/getThread
      #
      # @param thread_id [String]
      #
      # @param params [Hanzoai::Models::ThreadRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(thread_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/threads/%0s", thread_id],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @messages = Hanzoai::Resources::Threads::Messages.new(client: client)
        @runs = Hanzoai::Resources::Threads::Runs.new(client: client)
      end
    end
  end
end
