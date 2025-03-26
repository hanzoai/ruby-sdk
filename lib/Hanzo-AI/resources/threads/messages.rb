# frozen_string_literal: true

module HanzoAI
  module Resources
    class Threads
      class Messages
        # Create a message.
        #
        #   API Reference -
        #   https://platform.openai.com/docs/api-reference/messages/createMessage
        #
        # @param thread_id [String]
        #
        # @param params [HanzoAI::Models::Threads::MessageCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def create(thread_id, params = {})
          @client.request(
            method: :post,
            path: ["v1/threads/%0s/messages", thread_id],
            model: HanzoAI::Unknown,
            options: params[:request_options]
          )
        end

        # Returns a list of messages for a given thread.
        #
        #   API Reference -
        #   https://platform.openai.com/docs/api-reference/messages/listMessages
        #
        # @param thread_id [String]
        #
        # @param params [HanzoAI::Models::Threads::MessageListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def list(thread_id, params = {})
          @client.request(
            method: :get,
            path: ["v1/threads/%0s/messages", thread_id],
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
