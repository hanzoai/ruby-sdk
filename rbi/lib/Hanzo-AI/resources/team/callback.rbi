# typed: strong

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
        sig do
          params(
            team_id: String,
            request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def retrieve(team_id, request_options: {})
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
        sig do
          params(
            team_id: String,
            callback_name: String,
            callback_vars: T::Hash[Symbol, String],
            callback_type: T.nilable(HanzoAI::Models::Team::CallbackAddParams::CallbackType::OrSymbol),
            llm_changed_by: String,
            request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def add(
          # Path param:
          team_id,
          # Body param:
          callback_name:,
          # Body param:
          callback_vars:,
          # Body param:
          callback_type: nil,
          # Header param: The llm-changed-by header enables tracking of actions performed by
          #   authorized users on behalf of other users, providing an audit trail for
          #   accountability
          llm_changed_by: nil,
          request_options: {}
        )
        end

        sig { params(client: HanzoAI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
