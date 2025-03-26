# typed: strong

module HanzoAI
  module Resources
    class Customer
      # Allow creating a new Customer
      #
      #   Parameters:
      #
      #   - user_id: str - The unique identifier for the user.
      #   - alias: Optional[str] - A human-friendly alias for the user.
      #   - blocked: bool - Flag to allow or disallow requests for this end-user. Default
      #     is False.
      #   - max_budget: Optional[float] - The maximum budget allocated to the user. Either
      #     'max_budget' or 'budget_id' should be provided, not both.
      #   - budget_id: Optional[str] - The identifier for an existing budget allocated to
      #     the user. Either 'max_budget' or 'budget_id' should be provided, not both.
      #   - allowed_model_region: Optional[Union[Literal["eu"], Literal["us"]]] - Require
      #     all user requests to use models in this specific region.
      #   - default_model: Optional[str] - If no equivalent model in the allowed region,
      #     default all requests to this model.
      #   - metadata: Optional[dict] = Metadata for customer, store information for
      #     customer. Example metadata = {"data_training_opt_out": True}
      #   - budget_duration: Optional[str] - Budget is reset at the end of specified
      #     duration. If not set, budget is never reset. You can set duration as seconds
      #     ("30s"), minutes ("30m"), hours ("30h"), days ("30d").
      #   - tpm_limit: Optional[int] - [Not Implemented Yet] Specify tpm limit for a given
      #     customer (Tokens per minute)
      #   - rpm_limit: Optional[int] - [Not Implemented Yet] Specify rpm limit for a given
      #     customer (Requests per minute)
      #   - model_max_budget: Optional[dict] - [Not Implemented Yet] Specify max budget
      #     for a given model. Example: {"openai/gpt-4o-mini": {"max_budget": 100.0,
      #     "budget_duration": "1d"}}
      #   - max_parallel_requests: Optional[int] - [Not Implemented Yet] Specify max
      #     parallel requests for a given customer.
      #   - soft_budget: Optional[float] - [Not Implemented Yet] Get alerts when customer
      #     crosses given budget, doesn't block requests.
      #
      #   - Allow specifying allowed regions
      #   - Allow specifying default model
      #
      #   Example curl:
      #
      #   ```
      #   curl --location 'http://0.0.0.0:4000/customer/new'         --header 'Authorization: Bearer sk-1234'         --header 'Content-Type: application/json'         --data '{
      #           "user_id" : "z-jaff-3",
      #           "allowed_region": "eu",
      #           "budget_id": "free_tier",
      #           "default_model": "azure/gpt-3.5-turbo-eu" <- all calls from this user, use this model?
      #       }'
      #
      #       # return end-user object
      #   ```
      #
      #   NOTE: This used to be called `/end_user/new`, we will still be maintaining
      #   compatibility for /end_user/XXX for these endpoints
      sig do
        params(
          user_id: String,
          alias_: T.nilable(String),
          allowed_model_region: T.nilable(HanzoAI::Models::CustomerCreateParams::AllowedModelRegion::OrSymbol),
          blocked: T::Boolean,
          budget_duration: T.nilable(String),
          budget_id: T.nilable(String),
          default_model: T.nilable(String),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          model_max_budget: T.nilable(
            T::Hash[Symbol, T.any(HanzoAI::Models::CustomerCreateParams::ModelMaxBudget, HanzoAI::Util::AnyHash)]
          ),
          rpm_limit: T.nilable(Integer),
          soft_budget: T.nilable(Float),
          tpm_limit: T.nilable(Integer),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def create(
        user_id:,
        alias_: nil,
        allowed_model_region: nil,
        blocked: nil,
        # Max duration budget should be set for (e.g. '1hr', '1d', '28d')
        budget_duration: nil,
        budget_id: nil,
        default_model: nil,
        # Requests will fail if this budget (in USD) is exceeded.
        max_budget: nil,
        # Max concurrent requests allowed for this budget id.
        max_parallel_requests: nil,
        # Max budget for each model (e.g. {'gpt-4o': {'max_budget': '0.0000001',
        #   'budget_duration': '1d', 'tpm_limit': 1000, 'rpm_limit': 1000}})
        model_max_budget: nil,
        # Max requests per minute, allowed for this budget id.
        rpm_limit: nil,
        # Requests will NOT fail if this is exceeded. Will fire alerting though.
        soft_budget: nil,
        # Max tokens per minute, allowed for this budget id.
        tpm_limit: nil,
        request_options: {}
      )
      end

      # Example curl
      #
      #   Parameters:
      #
      #   - user_id: str
      #   - alias: Optional[str] = None # human-friendly alias
      #   - blocked: bool = False # allow/disallow requests for this end-user
      #   - max_budget: Optional[float] = None
      #   - budget_id: Optional[str] = None # give either a budget_id or max_budget
      #   - allowed_model_region: Optional[AllowedModelRegion] = ( None # require all user
      #     requests to use models in this specific region )
      #   - default_model: Optional[str] = ( None # if no equivalent model in allowed
      #     region - default all requests to this model )
      #
      #   Example curl:
      #
      #   ```
      #   curl --location 'http://0.0.0.0:4000/customer/update'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data '{
      #       "user_id": "test-llm-user-4",
      #       "budget_id": "paid_tier"
      #   }'
      #
      #   See below for all params
      #   ```
      sig do
        params(
          user_id: String,
          alias_: T.nilable(String),
          allowed_model_region: T.nilable(HanzoAI::Models::CustomerUpdateParams::AllowedModelRegion::OrSymbol),
          blocked: T::Boolean,
          budget_id: T.nilable(String),
          default_model: T.nilable(String),
          max_budget: T.nilable(Float),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def update(
        user_id:,
        alias_: nil,
        allowed_model_region: nil,
        blocked: nil,
        budget_id: nil,
        default_model: nil,
        max_budget: nil,
        request_options: {}
      )
      end

      # [Admin-only] List all available customers
      #
      #   Example curl:
      #
      #   ```
      #   curl --location --request GET 'http://0.0.0.0:4000/customer/list'         --header 'Authorization: Bearer sk-1234'
      #   ```
      sig do
        params(request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)))
          .returns(T::Array[HanzoAI::Models::CustomerListResponseItem])
      end
      def list(request_options: {})
      end

      # Delete multiple end-users.
      #
      #   Parameters:
      #
      #   - user_ids (List[str], required): The unique `user_id`s for the users to delete
      #
      #   Example curl:
      #
      #   ```
      #   curl --location 'http://0.0.0.0:4000/customer/delete'         --header 'Authorization: Bearer sk-1234'         --header 'Content-Type: application/json'         --data '{
      #           "user_ids" :["z-jaff-5"]
      #   }'
      #
      #   See below for all params
      #   ```
      sig do
        params(
          user_ids: T::Array[String],
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def delete(user_ids:, request_options: {})
      end

      # [BETA] Reject calls with this end-user id
      #
      #   Parameters:
      #
      #   - user_ids (List[str], required): The unique `user_id`s for the users to block
      #
      #     (any /chat/completion call with this user={end-user-id} param, will be
      #     rejected.)
      #
      #     ```
      #     curl -X POST "http://0.0.0.0:8000/user/block"
      #     -H "Authorization: Bearer sk-1234"
      #     -d '{
      #     "user_ids": [<user_id>, ...]
      #     }'
      #     ```
      sig do
        params(
          user_ids: T::Array[String],
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def block(user_ids:, request_options: {})
      end

      # Get information about an end-user. An `end_user` is a customer (external user)
      #   of the proxy.
      #
      #   Parameters:
      #
      #   - end_user_id (str, required): The unique identifier for the end-user
      #
      #   Example curl:
      #
      #   ```
      #   curl -X GET 'http://localhost:4000/customer/info?end_user_id=test-llm-user-4'         -H 'Authorization: Bearer sk-1234'
      #   ```
      sig do
        params(
          end_user_id: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(HanzoAI::Models::CustomerRetrieveInfoResponse)
      end
      def retrieve_info(
        # End User ID in the request parameters
        end_user_id:,
        request_options: {}
      )
      end

      # [BETA] Unblock calls with this user id
      #
      #   Example
      #
      #   ```
      #   curl -X POST "http://0.0.0.0:8000/user/unblock"
      #   -H "Authorization: Bearer sk-1234"
      #   -d '{
      #   "user_ids": [<user_id>, ...]
      #   }'
      #   ```
      sig do
        params(
          user_ids: T::Array[String],
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def unblock(user_ids:, request_options: {})
      end

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
