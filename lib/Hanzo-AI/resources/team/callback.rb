# frozen_string_literal: true

module HanzoAI
  module Resources
    class Team
      class Callback
        # Get the success/failure callbacks and variables for a team
        #
        #   Parameters:
        #
        #   - team_id (str, required): The unique identifier for the team
        #
        #   Example curl:
        #
        #   ```
        #   curl -X GET 'http://localhost:4000/team/dbe2f686-a686-4896-864a-4c3924458709/callback'         -H 'Authorization: Bearer sk-1234'
        #   ```
        #
        #   This will return the callback settings for the team with id
        #   dbe2f686-a686-4896-864a-4c3924458709
        #
        #   Returns { "status": "success", "data": { "team_id": team_id,
        #   "success_callbacks": team_callback_settings_obj.success_callback,
        #   "failure_callbacks": team_callback_settings_obj.failure_callback,
        #   "callback_vars": team_callback_settings_obj.callback_vars, }, }
        #
        # @param team_id [String]
        #
        # @param params [HanzoAI::Models::Team::CallbackRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def retrieve(team_id, params = {})
          @client.request(
            method: :get,
            path: ["team/%0s/callback", team_id],
            model: HanzoAI::Unknown,
            options: params[:request_options]
          )
        end

        # Add a success/failure callback to a team
        #
        #   Use this if if you want different teams to have different success/failure
        #   callbacks
        #
        #   Parameters:
        #
        #   - callback_name (Literal["langfuse", "langsmith", "gcs"], required): The name of
        #     the callback to add
        #   - callback_type (Literal["success", "failure", "success_and_failure"],
        #     required): The type of callback to add. One of:
        #     - "success": Callback for successful LLM calls
        #     - "failure": Callback for failed LLM calls
        #     - "success_and_failure": Callback for both successful and failed LLM calls
        #   - callback_vars (StandardCallbackDynamicParams, required): A dictionary of
        #     variables to pass to the callback
        #     - langfuse_public_key: The public key for the Langfuse callback
        #     - langfuse_secret_key: The secret key for the Langfuse callback
        #     - langfuse_secret: The secret for the Langfuse callback
        #     - langfuse_host: The host for the Langfuse callback
        #     - gcs_bucket_name: The name of the GCS bucket
        #     - gcs_path_service_account: The path to the GCS service account
        #     - langsmith_api_key: The API key for the Langsmith callback
        #     - langsmith_project: The project for the Langsmith callback
        #     - langsmith_base_url: The base URL for the Langsmith callback
        #
        #   Example curl:
        #
        #   ```
        #   curl -X POST 'http:/localhost:4000/team/dbe2f686-a686-4896-864a-4c3924458709/callback'         -H 'Content-Type: application/json'         -H 'Authorization: Bearer sk-1234'         -d '{
        #       "callback_name": "langfuse",
        #       "callback_type": "success",
        #       "callback_vars": {"langfuse_public_key": "pk-lf-xxxx1", "langfuse_secret_key": "sk-xxxxx"}
        #
        #   }'
        #   ```
        #
        #   This means for the team where team_id = dbe2f686-a686-4896-864a-4c3924458709,
        #   all LLM calls will be logged to langfuse using the public key pk-lf-xxxx1 and
        #   the secret key sk-xxxxx
        #
        # @param team_id [String] Path param:
        #
        # @param params [HanzoAI::Models::Team::CallbackAddParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :callback_name Body param:
        #
        #   @option params [Hash{Symbol=>String}] :callback_vars Body param:
        #
        #   @option params [Symbol, HanzoAI::Models::Team::CallbackAddParams::CallbackType, nil] :callback_type Body param:
        #
        #   @option params [String] :llm_changed_by Header param: The llm-changed-by header enables tracking of actions performed by
        #     authorized users on behalf of other users, providing an audit trail for
        #     accountability
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def add(team_id, params)
          parsed, options = HanzoAI::Models::Team::CallbackAddParams.dump_request(params)
          header_params = [:"llm-changed-by"]
          @client.request(
            method: :post,
            path: ["team/%0s/callback", team_id],
            headers: parsed.slice(*header_params),
            body: parsed.except(*header_params),
            model: HanzoAI::Unknown,
            options: options
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
