# frozen_string_literal: true

module Hanzoai
  module Resources
    class Key
      # @return [Hanzoai::Resources::Key::Regenerate]
      attr_reader :regenerate

      # Update an existing API key's parameters.
      #
      #   Parameters:
      #
      #   - key: str - The key to update
      #   - key_alias: Optional[str] - User-friendly key alias
      #   - user_id: Optional[str] - User ID associated with key
      #   - team_id: Optional[str] - Team ID associated with key
      #   - budget_id: Optional[str] - The budget id associated with the key. Created by
      #     calling `/budget/new`.
      #   - models: Optional[list] - Model_name's a user is allowed to call
      #   - tags: Optional[List[str]] - Tags for organizing keys (Enterprise only)
      #   - enforced_params: Optional[List[str]] - List of enforced params for the key
      #     (Enterprise only).
      #     [Docs](https://docs.llm.ai/docs/proxy/enterprise#enforce-required-params-for-llm-requests)
      #   - spend: Optional[float] - Amount spent by key
      #   - max_budget: Optional[float] - Max budget for key
      #   - model_max_budget: Optional[Dict[str, BudgetConfig]] - Model-specific budgets
      #     {"gpt-4": {"budget_limit": 0.0005, "time_period": "30d"}}
      #   - budget_duration: Optional[str] - Budget reset period ("30d", "1h", etc.)
      #   - soft_budget: Optional[float] - [TODO] Soft budget limit (warning vs. hard
      #     stop). Will trigger a slack alert when this soft budget is reached.
      #   - max_parallel_requests: Optional[int] - Rate limit for parallel requests
      #   - metadata: Optional[dict] - Metadata for key. Example {"team": "core-infra",
      #     "app": "app2"}
      #   - tpm_limit: Optional[int] - Tokens per minute limit
      #   - rpm_limit: Optional[int] - Requests per minute limit
      #   - model_rpm_limit: Optional[dict] - Model-specific RPM limits {"gpt-4": 100,
      #     "claude-v1": 200}
      #   - model_tpm_limit: Optional[dict] - Model-specific TPM limits {"gpt-4": 100000,
      #     "claude-v1": 200000}
      #   - allowed_cache_controls: Optional[list] - List of allowed cache control values
      #   - duration: Optional[str] - Key validity duration ("30d", "1h", etc.)
      #   - permissions: Optional[dict] - Key-specific permissions
      #   - send_invite_email: Optional[bool] - Send invite email to user_id
      #   - guardrails: Optional[List[str]] - List of active guardrails for the key
      #   - blocked: Optional[bool] - Whether the key is blocked
      #   - aliases: Optional[dict] - Model aliases for the key -
      #     [Docs](https://llm.vercel.app/docs/proxy/virtual_keys#model-aliases)
      #   - config: Optional[dict] - [DEPRECATED PARAM] Key-specific config.
      #   - temp_budget_increase: Optional[float] - Temporary budget increase for the key
      #     (Enterprise only).
      #   - temp_budget_expiry: Optional[str] - Expiry time for the temporary budget
      #     increase (Enterprise only).
      #
      #   Example:
      #
      #   ```bash
      #   curl --location 'http://0.0.0.0:4000/key/update'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data '{
      #       "key": "sk-1234",
      #       "key_alias": "my-key",
      #       "user_id": "user-1234",
      #       "team_id": "team-1234",
      #       "max_budget": 100,
      #       "metadata": {"any_key": "any-val"},
      #   }'
      #   ```
      #
      # @param params [Hanzoai::Models::KeyUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :key Body param:
      #
      #   @option params [Object, nil] :aliases Body param:
      #
      #   @option params [Array<Object>, nil] :allowed_cache_controls Body param:
      #
      #   @option params [Boolean, nil] :blocked Body param:
      #
      #   @option params [String, nil] :budget_duration Body param:
      #
      #   @option params [String, nil] :budget_id Body param:
      #
      #   @option params [Object, nil] :config Body param:
      #
      #   @option params [String, nil] :duration Body param:
      #
      #   @option params [Array<String>, nil] :enforced_params Body param:
      #
      #   @option params [Array<String>, nil] :guardrails Body param:
      #
      #   @option params [String, nil] :key_alias Body param:
      #
      #   @option params [Float, nil] :max_budget Body param:
      #
      #   @option params [Integer, nil] :max_parallel_requests Body param:
      #
      #   @option params [Object, nil] :metadata Body param:
      #
      #   @option params [Object, nil] :model_max_budget Body param:
      #
      #   @option params [Object, nil] :model_rpm_limit Body param:
      #
      #   @option params [Object, nil] :model_tpm_limit Body param:
      #
      #   @option params [Array<Object>, nil] :models Body param:
      #
      #   @option params [Object, nil] :permissions Body param:
      #
      #   @option params [Integer, nil] :rpm_limit Body param:
      #
      #   @option params [Float, nil] :spend Body param:
      #
      #   @option params [Array<String>, nil] :tags Body param:
      #
      #   @option params [String, nil] :team_id Body param:
      #
      #   @option params [Time, nil] :temp_budget_expiry Body param:
      #
      #   @option params [Float, nil] :temp_budget_increase Body param:
      #
      #   @option params [Integer, nil] :tpm_limit Body param:
      #
      #   @option params [String, nil] :user_id Body param:
      #
      #   @option params [String] :llm_changed_by Header param: The llm-changed-by header enables tracking of actions performed by
      #     authorized users on behalf of other users, providing an audit trail for
      #     accountability
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(params)
        parsed, options = Hanzoai::Models::KeyUpdateParams.dump_request(params)
        header_params = [:"llm-changed-by"]
        @client.request(
          method: :post,
          path: "key/update",
          headers: parsed.slice(*header_params),
          body: parsed.except(*header_params),
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # List all keys for a given user / team / organization.
      #
      #   Returns: { "keys": List[str] or List[UserAPIKeyAuth], "total_count": int,
      #   "current_page": int, "total_pages": int, }
      #
      # @param params [Hanzoai::Models::KeyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Boolean] :include_team_keys Include all keys for teams that user is an admin of.
      #
      #   @option params [String, nil] :key_alias Filter keys by key alias
      #
      #   @option params [String, nil] :organization_id Filter keys by organization ID
      #
      #   @option params [Integer] :page Page number
      #
      #   @option params [Boolean] :return_full_object Return full key object
      #
      #   @option params [Integer] :size Page size
      #
      #   @option params [String, nil] :team_id Filter keys by team ID
      #
      #   @option params [String, nil] :user_id Filter keys by user ID
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::KeyListResponse]
      def list(params = {})
        parsed, options = Hanzoai::Models::KeyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "key/list",
          query: parsed,
          model: Hanzoai::Models::KeyListResponse,
          options: options
        )
      end

      # Delete a key from the key management system.
      #
      #   Parameters::
      #
      #   - keys (List[str]): A list of keys or hashed keys to delete. Example {"keys":
      #     ["sk-QWrxEynunsNpV1zT48HIrw",
      #     "837e17519f44683334df5291321d97b8bf1098cd490e49e215f6fea935aa28be"]}
      #   - key_aliases (List[str]): A list of key aliases to delete. Can be passed
      #     instead of `keys`.Example {"key_aliases": ["alias1", "alias2"]}
      #
      #   Returns:
      #
      #   - deleted_keys (List[str]): A list of deleted keys. Example {"deleted_keys":
      #     ["sk-QWrxEynunsNpV1zT48HIrw",
      #     "837e17519f44683334df5291321d97b8bf1098cd490e49e215f6fea935aa28be"]}
      #
      #   Example:
      #
      #   ```bash
      #   curl --location 'http://0.0.0.0:4000/key/delete'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data '{
      #       "keys": ["sk-QWrxEynunsNpV1zT48HIrw"]
      #   }'
      #   ```
      #
      #   Raises: HTTPException: If an error occurs during key deletion.
      #
      # @param params [Hanzoai::Models::KeyDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String>, nil] :key_aliases Body param:
      #
      #   @option params [Array<String>, nil] :keys Body param:
      #
      #   @option params [String] :llm_changed_by Header param: The llm-changed-by header enables tracking of actions performed by
      #     authorized users on behalf of other users, providing an audit trail for
      #     accountability
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(params = {})
        parsed, options = Hanzoai::Models::KeyDeleteParams.dump_request(params)
        header_params = [:"llm-changed-by"]
        @client.request(
          method: :post,
          path: "key/delete",
          headers: parsed.slice(*header_params),
          body: parsed.except(*header_params),
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # Block an Virtual key from making any requests.
      #
      #   Parameters:
      #
      #   - key: str - The key to block. Can be either the unhashed key (sk-...) or the
      #     hashed key value
      #
      #   Example:
      #
      #   ```bash
      #   curl --location 'http://0.0.0.0:4000/key/block'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data '{
      #       "key": "sk-Fn8Ej39NxjAXrvpUGKghGw"
      #   }'
      #   ```
      #
      #   Note: This is an admin-only endpoint. Only proxy admins can block keys.
      #
      # @param params [Hanzoai::Models::KeyBlockParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :key Body param:
      #
      #   @option params [String] :llm_changed_by Header param: The llm-changed-by header enables tracking of actions performed by
      #     authorized users on behalf of other users, providing an audit trail for
      #     accountability
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::KeyBlockResponse, nil]
      def block(params)
        parsed, options = Hanzoai::Models::KeyBlockParams.dump_request(params)
        header_params = [:"llm-changed-by"]
        @client.request(
          method: :post,
          path: "key/block",
          headers: parsed.slice(*header_params),
          body: parsed.except(*header_params),
          model: Hanzoai::Models::KeyBlockResponse,
          options: options
        )
      end

      # Check the health of the key
      #
      #   Checks:
      #
      #   - If key based logging is configured correctly - sends a test log
      #
      #   Usage
      #
      #   Pass the key in the request header
      #
      #   ```bash
      #   curl -X POST "http://localhost:4000/key/health"      -H "Authorization: Bearer sk-1234"      -H "Content-Type: application/json"
      #   ```
      #
      #   Response when logging callbacks are setup correctly:
      #
      #   ```json
      #   {
      #     "key": "healthy",
      #     "logging_callbacks": {
      #       "callbacks": ["gcs_bucket"],
      #       "status": "healthy",
      #       "details": "No logger exceptions triggered, system is healthy. Manually check if logs were sent to ['gcs_bucket']"
      #     }
      #   }
      #   ```
      #
      #   Response when logging callbacks are not setup correctly:
      #
      #   ```json
      #   {
      #     "key": "unhealthy",
      #     "logging_callbacks": {
      #       "callbacks": ["gcs_bucket"],
      #       "status": "unhealthy",
      #       "details": "Logger exceptions triggered, system is unhealthy: Failed to load vertex credentials. Check to see if credentials containing partial/invalid information."
      #     }
      #   }
      #   ```
      #
      # @param params [Hanzoai::Models::KeyCheckHealthParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::KeyCheckHealthResponse]
      def check_health(params = {})
        @client.request(
          method: :post,
          path: "key/health",
          model: Hanzoai::Models::KeyCheckHealthResponse,
          options: params[:request_options]
        )
      end

      # Generate an API key based on the provided data.
      #
      #   Docs: https://docs.llm.ai/docs/proxy/virtual_keys
      #
      #   Parameters:
      #
      #   - duration: Optional[str] - Specify the length of time the token is valid for.
      #     You can set duration as seconds ("30s"), minutes ("30m"), hours ("30h"), days
      #     ("30d").
      #   - key_alias: Optional[str] - User defined key alias
      #   - key: Optional[str] - User defined key value. If not set, a 16-digit unique
      #     sk-key is created for you.
      #   - team_id: Optional[str] - The team id of the key
      #   - user_id: Optional[str] - The user id of the key
      #   - budget_id: Optional[str] - The budget id associated with the key. Created by
      #     calling `/budget/new`.
      #   - models: Optional[list] - Model_name's a user is allowed to call. (if empty,
      #     key is allowed to call all models)
      #   - aliases: Optional[dict] - Any alias mappings, on top of anything in the
      #     config.yaml model list. -
      #     https://docs.llm.ai/docs/proxy/virtual_keys#managing-auth---upgradedowngrade-models
      #   - config: Optional[dict] - any key-specific configs, overrides config in
      #     config.yaml
      #   - spend: Optional[int] - Amount spent by key. Default is 0. Will be updated by
      #     proxy whenever key is used.
      #     https://docs.llm.ai/docs/proxy/virtual_keys#managing-auth---tracking-spend
      #   - send_invite_email: Optional[bool] - Whether to send an invite email to the
      #     user_id, with the generate key
      #   - max_budget: Optional[float] - Specify max budget for a given key.
      #   - budget_duration: Optional[str] - Budget is reset at the end of specified
      #     duration. If not set, budget is never reset. You can set duration as seconds
      #     ("30s"), minutes ("30m"), hours ("30h"), days ("30d").
      #   - max_parallel_requests: Optional[int] - Rate limit a user based on the number
      #     of parallel requests. Raises 429 error, if user's parallel requests > x.
      #   - metadata: Optional[dict] - Metadata for key, store information for key.
      #     Example metadata = {"team": "core-infra", "app": "app2", "email": "z@hanzo.ai"
      #     }
      #   - guardrails: Optional[List[str]] - List of active guardrails for the key
      #   - permissions: Optional[dict] - key-specific permissions. Currently just used
      #     for turning off pii masking (if connected). Example - {"pii": false}
      #   - model_max_budget: Optional[Dict[str, BudgetConfig]] - Model-specific budgets
      #     {"gpt-4": {"budget_limit": 0.0005, "time_period": "30d"}}}. IF null or {} then
      #     no model specific budget.
      #   - model_rpm_limit: Optional[dict] - key-specific model rpm limit. Example -
      #     {"text-davinci-002": 1000, "gpt-3.5-turbo": 1000}. IF null or {} then no model
      #     specific rpm limit.
      #   - model_tpm_limit: Optional[dict] - key-specific model tpm limit. Example -
      #     {"text-davinci-002": 1000, "gpt-3.5-turbo": 1000}. IF null or {} then no model
      #     specific tpm limit.
      #   - allowed_cache_controls: Optional[list] - List of allowed cache control values.
      #     Example - ["no-cache", "no-store"]. See all values -
      #     https://docs.llm.ai/docs/proxy/caching#turn-on--off-caching-per-request
      #   - blocked: Optional[bool] - Whether the key is blocked.
      #   - rpm_limit: Optional[int] - Specify rpm limit for a given key (Requests per
      #     minute)
      #   - tpm_limit: Optional[int] - Specify tpm limit for a given key (Tokens per
      #     minute)
      #   - soft_budget: Optional[float] - Specify soft budget for a given key. Will
      #     trigger a slack alert when this soft budget is reached.
      #   - tags: Optional[List[str]] - Tags for
      #     [tracking spend](https://llm.vercel.app/docs/proxy/enterprise#tracking-spend-for-custom-tags)
      #     and/or doing
      #     [tag-based routing](https://llm.vercel.app/docs/proxy/tag_routing).
      #   - enforced_params: Optional[List[str]] - List of enforced params for the key
      #     (Enterprise only).
      #     [Docs](https://docs.llm.ai/docs/proxy/enterprise#enforce-required-params-for-llm-requests)
      #
      #   Examples:
      #
      #   1. Allow users to turn on/off pii masking
      #
      #   ```bash
      #   curl --location 'http://0.0.0.0:4000/key/generate'         --header 'Authorization: Bearer sk-1234'         --header 'Content-Type: application/json'         --data '{
      #           "permissions": {"allow_pii_controls": true}
      #   }'
      #   ```
      #
      #   Returns:
      #
      #   - key: (str) The generated api key
      #   - expires: (datetime) Datetime object for when key expires.
      #   - user_id: (str) Unique user id - used for tracking spend across multiple keys
      #     for same user id.
      #
      # @param params [Hanzoai::Models::KeyGenerateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Object, nil] :aliases Body param:
      #
      #   @option params [Array<Object>, nil] :allowed_cache_controls Body param:
      #
      #   @option params [Boolean, nil] :blocked Body param:
      #
      #   @option params [String, nil] :budget_duration Body param:
      #
      #   @option params [String, nil] :budget_id Body param:
      #
      #   @option params [Object, nil] :config Body param:
      #
      #   @option params [String, nil] :duration Body param:
      #
      #   @option params [Array<String>, nil] :enforced_params Body param:
      #
      #   @option params [Array<String>, nil] :guardrails Body param:
      #
      #   @option params [String, nil] :key Body param:
      #
      #   @option params [String, nil] :key_alias Body param:
      #
      #   @option params [Float, nil] :max_budget Body param:
      #
      #   @option params [Integer, nil] :max_parallel_requests Body param:
      #
      #   @option params [Object, nil] :metadata Body param:
      #
      #   @option params [Object, nil] :model_max_budget Body param:
      #
      #   @option params [Object, nil] :model_rpm_limit Body param:
      #
      #   @option params [Object, nil] :model_tpm_limit Body param:
      #
      #   @option params [Array<Object>, nil] :models Body param:
      #
      #   @option params [Object, nil] :permissions Body param:
      #
      #   @option params [Integer, nil] :rpm_limit Body param:
      #
      #   @option params [Boolean, nil] :send_invite_email Body param:
      #
      #   @option params [Float, nil] :soft_budget Body param:
      #
      #   @option params [Float, nil] :spend Body param:
      #
      #   @option params [Array<String>, nil] :tags Body param:
      #
      #   @option params [String, nil] :team_id Body param:
      #
      #   @option params [Integer, nil] :tpm_limit Body param:
      #
      #   @option params [String, nil] :user_id Body param:
      #
      #   @option params [String] :llm_changed_by Header param: The llm-changed-by header enables tracking of actions performed by
      #     authorized users on behalf of other users, providing an audit trail for
      #     accountability
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::GenerateKeyResponse]
      def generate(params = {})
        parsed, options = Hanzoai::Models::KeyGenerateParams.dump_request(params)
        header_params = [:"llm-changed-by"]
        @client.request(
          method: :post,
          path: "key/generate",
          headers: parsed.slice(*header_params),
          body: parsed.except(*header_params),
          model: Hanzoai::Models::GenerateKeyResponse,
          options: options
        )
      end

      # Regenerate an existing API key while optionally updating its parameters.
      #
      #   Parameters:
      #
      #   - key: str (path parameter) - The key to regenerate
      #   - data: Optional[RegenerateKeyRequest] - Request body containing optional
      #     parameters to update
      #     - key_alias: Optional[str] - User-friendly key alias
      #     - user_id: Optional[str] - User ID associated with key
      #     - team_id: Optional[str] - Team ID associated with key
      #     - models: Optional[list] - Model_name's a user is allowed to call
      #     - tags: Optional[List[str]] - Tags for organizing keys (Enterprise only)
      #     - spend: Optional[float] - Amount spent by key
      #     - max_budget: Optional[float] - Max budget for key
      #     - model_max_budget: Optional[Dict[str, BudgetConfig]] - Model-specific budgets
      #       {"gpt-4": {"budget_limit": 0.0005, "time_period": "30d"}}
      #     - budget_duration: Optional[str] - Budget reset period ("30d", "1h", etc.)
      #     - soft_budget: Optional[float] - Soft budget limit (warning vs. hard stop).
      #       Will trigger a slack alert when this soft budget is reached.
      #     - max_parallel_requests: Optional[int] - Rate limit for parallel requests
      #     - metadata: Optional[dict] - Metadata for key. Example {"team": "core-infra",
      #       "app": "app2"}
      #     - tpm_limit: Optional[int] - Tokens per minute limit
      #     - rpm_limit: Optional[int] - Requests per minute limit
      #     - model_rpm_limit: Optional[dict] - Model-specific RPM limits {"gpt-4": 100,
      #       "claude-v1": 200}
      #     - model_tpm_limit: Optional[dict] - Model-specific TPM limits {"gpt-4":
      #       100000, "claude-v1": 200000}
      #     - allowed_cache_controls: Optional[list] - List of allowed cache control
      #       values
      #     - duration: Optional[str] - Key validity duration ("30d", "1h", etc.)
      #     - permissions: Optional[dict] - Key-specific permissions
      #     - guardrails: Optional[List[str]] - List of active guardrails for the key
      #     - blocked: Optional[bool] - Whether the key is blocked
      #
      #   Returns:
      #
      #   - GenerateKeyResponse containing the new key and its updated parameters
      #
      #   Example:
      #
      #   ```bash
      #   curl --location --request POST 'http://localhost:4000/key/sk-1234/regenerate'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data-raw '{
      #       "max_budget": 100,
      #       "metadata": {"team": "core-infra"},
      #       "models": ["gpt-4", "gpt-3.5-turbo"]
      #   }'
      #   ```
      #
      #   Note: This is an Enterprise feature. It requires a premium license to use.
      #
      # @param path_key [String] Path param:
      #
      # @param params [Hanzoai::Models::KeyRegenerateByKeyParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Object, nil] :aliases Body param:
      #
      #   @option params [Array<Object>, nil] :allowed_cache_controls Body param:
      #
      #   @option params [Boolean, nil] :blocked Body param:
      #
      #   @option params [String, nil] :budget_duration Body param:
      #
      #   @option params [String, nil] :budget_id Body param:
      #
      #   @option params [Object, nil] :config Body param:
      #
      #   @option params [String, nil] :duration Body param:
      #
      #   @option params [Array<String>, nil] :enforced_params Body param:
      #
      #   @option params [Array<String>, nil] :guardrails Body param:
      #
      #   @option params [String, nil] :body_key Body param:
      #
      #   @option params [String, nil] :key_alias Body param:
      #
      #   @option params [Float, nil] :max_budget Body param:
      #
      #   @option params [Integer, nil] :max_parallel_requests Body param:
      #
      #   @option params [Object, nil] :metadata Body param:
      #
      #   @option params [Object, nil] :model_max_budget Body param:
      #
      #   @option params [Object, nil] :model_rpm_limit Body param:
      #
      #   @option params [Object, nil] :model_tpm_limit Body param:
      #
      #   @option params [Array<Object>, nil] :models Body param:
      #
      #   @option params [String, nil] :new_master_key Body param:
      #
      #   @option params [Object, nil] :permissions Body param:
      #
      #   @option params [Integer, nil] :rpm_limit Body param:
      #
      #   @option params [Boolean, nil] :send_invite_email Body param:
      #
      #   @option params [Float, nil] :soft_budget Body param:
      #
      #   @option params [Float, nil] :spend Body param:
      #
      #   @option params [Array<String>, nil] :tags Body param:
      #
      #   @option params [String, nil] :team_id Body param:
      #
      #   @option params [Integer, nil] :tpm_limit Body param:
      #
      #   @option params [String, nil] :user_id Body param:
      #
      #   @option params [String] :llm_changed_by Header param: The llm-changed-by header enables tracking of actions performed by
      #     authorized users on behalf of other users, providing an audit trail for
      #     accountability
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::GenerateKeyResponse, nil]
      def regenerate_by_key(path_key, params = {})
        parsed, options = Hanzoai::Models::KeyRegenerateByKeyParams.dump_request(params)
        header_params = [:"llm-changed-by"]
        @client.request(
          method: :post,
          path: ["key/%0s/regenerate", path_key],
          headers: parsed.slice(*header_params),
          body: parsed.except(*header_params),
          model: Hanzoai::Models::GenerateKeyResponse,
          options: options
        )
      end

      # Retrieve information about a key. Parameters: key: Optional[str] = Query
      #   parameter representing the key in the request user_api_key_dict: UserAPIKeyAuth
      #   = Dependency representing the user's API key Returns: Dict containing the key
      #   and its associated information
      #
      #   Example Curl:
      #
      #   ```
      #   curl -X GET "http://0.0.0.0:4000/key/info?key=sk-02Wr4IAlN3NvPXvL5JVvDA" -H "Authorization: Bearer sk-1234"
      #   ```
      #
      #   Example Curl - if no key is passed, it will use the Key Passed in Authorization
      #   Header
      #
      #   ```
      #   curl -X GET "http://0.0.0.0:4000/key/info" -H "Authorization: Bearer sk-02Wr4IAlN3NvPXvL5JVvDA"
      #   ```
      #
      # @param params [Hanzoai::Models::KeyRetrieveInfoParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :key Key in the request parameters
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve_info(params = {})
        parsed, options = Hanzoai::Models::KeyRetrieveInfoParams.dump_request(params)
        @client.request(
          method: :get,
          path: "key/info",
          query: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # Unblock a Virtual key to allow it to make requests again.
      #
      #   Parameters:
      #
      #   - key: str - The key to unblock. Can be either the unhashed key (sk-...) or the
      #     hashed key value
      #
      #   Example:
      #
      #   ```bash
      #   curl --location 'http://0.0.0.0:4000/key/unblock'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data '{
      #       "key": "sk-Fn8Ej39NxjAXrvpUGKghGw"
      #   }'
      #   ```
      #
      #   Note: This is an admin-only endpoint. Only proxy admins can unblock keys.
      #
      # @param params [Hanzoai::Models::KeyUnblockParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :key Body param:
      #
      #   @option params [String] :llm_changed_by Header param: The llm-changed-by header enables tracking of actions performed by
      #     authorized users on behalf of other users, providing an audit trail for
      #     accountability
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def unblock(params)
        parsed, options = Hanzoai::Models::KeyUnblockParams.dump_request(params)
        header_params = [:"llm-changed-by"]
        @client.request(
          method: :post,
          path: "key/unblock",
          headers: parsed.slice(*header_params),
          body: parsed.except(*header_params),
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @regenerate = Hanzoai::Resources::Key::Regenerate.new(client: client)
      end
    end
  end
end
