# typed: strong

module Hanzoai
  module Resources
    class Key
      sig { returns(Hanzoai::Resources::Key::Regenerate) }
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
      sig do
        params(
          key: String,
          aliases: T.nilable(T.anything),
          allowed_cache_controls: T.nilable(T::Array[T.anything]),
          blocked: T.nilable(T::Boolean),
          budget_duration: T.nilable(String),
          budget_id: T.nilable(String),
          config: T.nilable(T.anything),
          duration: T.nilable(String),
          enforced_params: T.nilable(T::Array[String]),
          guardrails: T.nilable(T::Array[String]),
          key_alias: T.nilable(String),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          metadata: T.nilable(T.anything),
          model_max_budget: T.nilable(T.anything),
          model_rpm_limit: T.nilable(T.anything),
          model_tpm_limit: T.nilable(T.anything),
          models: T.nilable(T::Array[T.anything]),
          permissions: T.nilable(T.anything),
          rpm_limit: T.nilable(Integer),
          spend: T.nilable(Float),
          tags: T.nilable(T::Array[String]),
          team_id: T.nilable(String),
          temp_budget_expiry: T.nilable(Time),
          temp_budget_increase: T.nilable(Float),
          tpm_limit: T.nilable(Integer),
          user_id: T.nilable(String),
          llm_changed_by: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def update(
        # Body param:
        key:,
        # Body param:
        aliases: nil,
        # Body param:
        allowed_cache_controls: nil,
        # Body param:
        blocked: nil,
        # Body param:
        budget_duration: nil,
        # Body param:
        budget_id: nil,
        # Body param:
        config: nil,
        # Body param:
        duration: nil,
        # Body param:
        enforced_params: nil,
        # Body param:
        guardrails: nil,
        # Body param:
        key_alias: nil,
        # Body param:
        max_budget: nil,
        # Body param:
        max_parallel_requests: nil,
        # Body param:
        metadata: nil,
        # Body param:
        model_max_budget: nil,
        # Body param:
        model_rpm_limit: nil,
        # Body param:
        model_tpm_limit: nil,
        # Body param:
        models: nil,
        # Body param:
        permissions: nil,
        # Body param:
        rpm_limit: nil,
        # Body param:
        spend: nil,
        # Body param:
        tags: nil,
        # Body param:
        team_id: nil,
        # Body param:
        temp_budget_expiry: nil,
        # Body param:
        temp_budget_increase: nil,
        # Body param:
        tpm_limit: nil,
        # Body param:
        user_id: nil,
        # Header param: The llm-changed-by header enables tracking of actions performed by
        #   authorized users on behalf of other users, providing an audit trail for
        #   accountability
        llm_changed_by: nil,
        request_options: {}
      )
      end

      # List all keys for a given user / team / organization.
      #
      #   Returns: { "keys": List[str] or List[UserAPIKeyAuth], "total_count": int,
      #   "current_page": int, "total_pages": int, }
      sig do
        params(
          include_team_keys: T::Boolean,
          key_alias: T.nilable(String),
          organization_id: T.nilable(String),
          page: Integer,
          return_full_object: T::Boolean,
          size: Integer,
          team_id: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(Hanzoai::Models::KeyListResponse)
      end
      def list(
        # Include all keys for teams that user is an admin of.
        include_team_keys: nil,
        # Filter keys by key alias
        key_alias: nil,
        # Filter keys by organization ID
        organization_id: nil,
        # Page number
        page: nil,
        # Return full key object
        return_full_object: nil,
        # Page size
        size: nil,
        # Filter keys by team ID
        team_id: nil,
        # Filter keys by user ID
        user_id: nil,
        request_options: {}
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
      sig do
        params(
          key_aliases: T.nilable(T::Array[String]),
          keys: T.nilable(T::Array[String]),
          llm_changed_by: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def delete(
        # Body param:
        key_aliases: nil,
        # Body param:
        keys: nil,
        # Header param: The llm-changed-by header enables tracking of actions performed by
        #   authorized users on behalf of other users, providing an audit trail for
        #   accountability
        llm_changed_by: nil,
        request_options: {}
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
      sig do
        params(
          key: String,
          llm_changed_by: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.nilable(Hanzoai::Models::KeyBlockResponse))
      end
      def block(
        # Body param:
        key:,
        # Header param: The llm-changed-by header enables tracking of actions performed by
        #   authorized users on behalf of other users, providing an audit trail for
        #   accountability
        llm_changed_by: nil,
        request_options: {}
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
      sig do
        params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(Hanzoai::Models::KeyCheckHealthResponse)
      end
      def check_health(request_options: {})
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
      sig do
        params(
          aliases: T.nilable(T.anything),
          allowed_cache_controls: T.nilable(T::Array[T.anything]),
          blocked: T.nilable(T::Boolean),
          budget_duration: T.nilable(String),
          budget_id: T.nilable(String),
          config: T.nilable(T.anything),
          duration: T.nilable(String),
          enforced_params: T.nilable(T::Array[String]),
          guardrails: T.nilable(T::Array[String]),
          key: T.nilable(String),
          key_alias: T.nilable(String),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          metadata: T.nilable(T.anything),
          model_max_budget: T.nilable(T.anything),
          model_rpm_limit: T.nilable(T.anything),
          model_tpm_limit: T.nilable(T.anything),
          models: T.nilable(T::Array[T.anything]),
          permissions: T.nilable(T.anything),
          rpm_limit: T.nilable(Integer),
          send_invite_email: T.nilable(T::Boolean),
          soft_budget: T.nilable(Float),
          spend: T.nilable(Float),
          tags: T.nilable(T::Array[String]),
          team_id: T.nilable(String),
          tpm_limit: T.nilable(Integer),
          user_id: T.nilable(String),
          llm_changed_by: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(Hanzoai::Models::GenerateKeyResponse)
      end
      def generate(
        # Body param:
        aliases: nil,
        # Body param:
        allowed_cache_controls: nil,
        # Body param:
        blocked: nil,
        # Body param:
        budget_duration: nil,
        # Body param:
        budget_id: nil,
        # Body param:
        config: nil,
        # Body param:
        duration: nil,
        # Body param:
        enforced_params: nil,
        # Body param:
        guardrails: nil,
        # Body param:
        key: nil,
        # Body param:
        key_alias: nil,
        # Body param:
        max_budget: nil,
        # Body param:
        max_parallel_requests: nil,
        # Body param:
        metadata: nil,
        # Body param:
        model_max_budget: nil,
        # Body param:
        model_rpm_limit: nil,
        # Body param:
        model_tpm_limit: nil,
        # Body param:
        models: nil,
        # Body param:
        permissions: nil,
        # Body param:
        rpm_limit: nil,
        # Body param:
        send_invite_email: nil,
        # Body param:
        soft_budget: nil,
        # Body param:
        spend: nil,
        # Body param:
        tags: nil,
        # Body param:
        team_id: nil,
        # Body param:
        tpm_limit: nil,
        # Body param:
        user_id: nil,
        # Header param: The llm-changed-by header enables tracking of actions performed by
        #   authorized users on behalf of other users, providing an audit trail for
        #   accountability
        llm_changed_by: nil,
        request_options: {}
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
      sig do
        params(
          path_key: String,
          aliases: T.nilable(T.anything),
          allowed_cache_controls: T.nilable(T::Array[T.anything]),
          blocked: T.nilable(T::Boolean),
          budget_duration: T.nilable(String),
          budget_id: T.nilable(String),
          config: T.nilable(T.anything),
          duration: T.nilable(String),
          enforced_params: T.nilable(T::Array[String]),
          guardrails: T.nilable(T::Array[String]),
          body_key: T.nilable(String),
          key_alias: T.nilable(String),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          metadata: T.nilable(T.anything),
          model_max_budget: T.nilable(T.anything),
          model_rpm_limit: T.nilable(T.anything),
          model_tpm_limit: T.nilable(T.anything),
          models: T.nilable(T::Array[T.anything]),
          new_master_key: T.nilable(String),
          permissions: T.nilable(T.anything),
          rpm_limit: T.nilable(Integer),
          send_invite_email: T.nilable(T::Boolean),
          soft_budget: T.nilable(Float),
          spend: T.nilable(Float),
          tags: T.nilable(T::Array[String]),
          team_id: T.nilable(String),
          tpm_limit: T.nilable(Integer),
          user_id: T.nilable(String),
          llm_changed_by: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.nilable(Hanzoai::Models::GenerateKeyResponse))
      end
      def regenerate_by_key(
        # Path param:
        path_key,
        # Body param:
        aliases: nil,
        # Body param:
        allowed_cache_controls: nil,
        # Body param:
        blocked: nil,
        # Body param:
        budget_duration: nil,
        # Body param:
        budget_id: nil,
        # Body param:
        config: nil,
        # Body param:
        duration: nil,
        # Body param:
        enforced_params: nil,
        # Body param:
        guardrails: nil,
        # Body param:
        body_key: nil,
        # Body param:
        key_alias: nil,
        # Body param:
        max_budget: nil,
        # Body param:
        max_parallel_requests: nil,
        # Body param:
        metadata: nil,
        # Body param:
        model_max_budget: nil,
        # Body param:
        model_rpm_limit: nil,
        # Body param:
        model_tpm_limit: nil,
        # Body param:
        models: nil,
        # Body param:
        new_master_key: nil,
        # Body param:
        permissions: nil,
        # Body param:
        rpm_limit: nil,
        # Body param:
        send_invite_email: nil,
        # Body param:
        soft_budget: nil,
        # Body param:
        spend: nil,
        # Body param:
        tags: nil,
        # Body param:
        team_id: nil,
        # Body param:
        tpm_limit: nil,
        # Body param:
        user_id: nil,
        # Header param: The llm-changed-by header enables tracking of actions performed by
        #   authorized users on behalf of other users, providing an audit trail for
        #   accountability
        llm_changed_by: nil,
        request_options: {}
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
      sig do
        params(
          key: T.nilable(String),
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def retrieve_info(
        # Key in the request parameters
        key: nil,
        request_options: {}
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
      sig do
        params(
          key: String,
          llm_changed_by: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def unblock(
        # Body param:
        key:,
        # Header param: The llm-changed-by header enables tracking of actions performed by
        #   authorized users on behalf of other users, providing an audit trail for
        #   accountability
        llm_changed_by: nil,
        request_options: {}
      )
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
