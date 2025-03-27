# frozen_string_literal: true

module Hanzoai
  module Resources
    class Team
      # @return [Hanzoai::Resources::Team::Model]
      attr_reader :model

      # @return [Hanzoai::Resources::Team::Callback]
      attr_reader :callback

      # Allow users to create a new team. Apply user permissions to their team.
      #
      #   👉
      #   [Detailed Doc on setting team budgets](https://docs.hanzo.ai/docs/proxy/team_budgets)
      #
      #   Parameters:
      #
      #   - team_alias: Optional[str] - User defined team alias
      #   - team_id: Optional[str] - The team id of the user. If none passed, we'll
      #     generate it.
      #   - members_with_roles: List[{"role": "admin" or "user", "user_id":
      #     "<user-id>"}] - A list of users and their roles in the team. Get user_id when
      #     making a new user via `/user/new`.
      #   - metadata: Optional[dict] - Metadata for team, store information for team.
      #     Example metadata = {"extra_info": "some info"}
      #   - tpm_limit: Optional[int] - The TPM (Tokens Per Minute) limit for this team -
      #     all keys with this team_id will have at max this TPM limit
      #   - rpm_limit: Optional[int] - The RPM (Requests Per Minute) limit for this team -
      #     all keys associated with this team_id will have at max this RPM limit
      #   - max_budget: Optional[float] - The maximum budget allocated to the team - all
      #     keys for this team_id will have at max this max_budget
      #   - budget_duration: Optional[str] - The duration of the budget for the team. Doc
      #     [here](https://docs.hanzo.ai/docs/proxy/team_budgets)
      #   - models: Optional[list] - A list of models associated with the team - all keys
      #     for this team_id will have at most, these models. If empty, assumes all models
      #     are allowed.
      #   - blocked: bool - Flag indicating if the team is blocked or not - will stop all
      #     calls from keys with this team_id.
      #   - members: Optional[List] - Control team members via `/team/member/add` and
      #     `/team/member/delete`.
      #   - tags: Optional[List[str]] - Tags for
      #     [tracking spend](https://llm.vercel.app/docs/proxy/enterprise#tracking-spend-for-custom-tags)
      #     and/or doing
      #     [tag-based routing](https://llm.vercel.app/docs/proxy/tag_routing).
      #   - organization_id: Optional[str] - The organization id of the team. Default is
      #     None. Create via `/organization/new`.
      #   - model_aliases: Optional[dict] - Model aliases for the team.
      #     [Docs](https://docs.hanzo.ai/docs/proxy/team_based_routing#create-team-with-model-alias)
      #   - guardrails: Optional[List[str]] - Guardrails for the team.
      #     [Docs](https://docs.hanzo.ai/docs/proxy/guardrails) Returns:
      #   - team_id: (str) Unique team id - used for tracking spend across multiple keys
      #     for same team id.
      #
      #   \_deprecated_params:
      #
      #   - admins: list - A list of user_id's for the admin role
      #   - users: list - A list of user_id's for the user role
      #
      #   Example Request:
      #
      #   ```
      #   curl --location 'http://0.0.0.0:4000/team/new'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data '{
      #     "team_alias": "my-new-team_2",
      #     "members_with_roles": [{"role": "admin", "user_id": "user-1234"},
      #       {"role": "user", "user_id": "user-2434"}]
      #   }'
      #
      #   ```
      #
      #   ```
      #   curl --location 'http://0.0.0.0:4000/team/new'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data '{
      #              "team_alias": "QA Prod Bot",
      #              "max_budget": 0.000000001,
      #              "budget_duration": "1d"
      #          }'
      #   ```
      #
      # @param params [Hanzoai::Models::TeamCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Object>] :admins Body param:
      #
      #   @option params [Boolean] :blocked Body param:
      #
      #   @option params [String, nil] :budget_duration Body param:
      #
      #   @option params [Array<String>, nil] :guardrails Body param:
      #
      #   @option params [Float, nil] :max_budget Body param:
      #
      #   @option params [Array<Object>] :members Body param:
      #
      #   @option params [Array<Hanzoai::Models::Member>] :members_with_roles Body param:
      #
      #   @option params [Object, nil] :metadata Body param:
      #
      #   @option params [Object, nil] :model_aliases Body param:
      #
      #   @option params [Array<Object>] :models Body param:
      #
      #   @option params [String, nil] :organization_id Body param:
      #
      #   @option params [Integer, nil] :rpm_limit Body param:
      #
      #   @option params [Array<Object>, nil] :tags Body param:
      #
      #   @option params [String, nil] :team_alias Body param:
      #
      #   @option params [String, nil] :team_id Body param:
      #
      #   @option params [Integer, nil] :tpm_limit Body param:
      #
      #   @option params [String] :llm_changed_by Header param: The llm-changed-by header enables tracking of actions performed by
      #     authorized users on behalf of other users, providing an audit trail for
      #     accountability
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::TeamCreateResponse]
      def create(params = {})
        parsed, options = Hanzoai::Models::TeamCreateParams.dump_request(params)
        header_params = [:"llm-changed-by"]
        @client.request(
          method: :post,
          path: "team/new",
          headers: parsed.slice(*header_params),
          body: parsed.except(*header_params),
          model: Hanzoai::Models::TeamCreateResponse,
          options: options
        )
      end

      # Use `/team/member_add` AND `/team/member/delete` to add/remove new team members
      #
      #   You can now update team budget / rate limits via /team/update
      #
      #   Parameters:
      #
      #   - team_id: str - The team id of the user. Required param.
      #   - team_alias: Optional[str] - User defined team alias
      #   - metadata: Optional[dict] - Metadata for team, store information for team.
      #     Example metadata = {"team": "core-infra", "app": "app2", "email": "z@hanzo.ai"
      #     }
      #   - tpm_limit: Optional[int] - The TPM (Tokens Per Minute) limit for this team -
      #     all keys with this team_id will have at max this TPM limit
      #   - rpm_limit: Optional[int] - The RPM (Requests Per Minute) limit for this team -
      #     all keys associated with this team_id will have at max this RPM limit
      #   - max_budget: Optional[float] - The maximum budget allocated to the team - all
      #     keys for this team_id will have at max this max_budget
      #   - budget_duration: Optional[str] - The duration of the budget for the team. Doc
      #     [here](https://docs.hanzo.ai/docs/proxy/team_budgets)
      #   - models: Optional[list] - A list of models associated with the team - all keys
      #     for this team_id will have at most, these models. If empty, assumes all models
      #     are allowed.
      #   - blocked: bool - Flag indicating if the team is blocked or not - will stop all
      #     calls from keys with this team_id.
      #   - tags: Optional[List[str]] - Tags for
      #     [tracking spend](https://llm.vercel.app/docs/proxy/enterprise#tracking-spend-for-custom-tags)
      #     and/or doing
      #     [tag-based routing](https://llm.vercel.app/docs/proxy/tag_routing).
      #   - organization_id: Optional[str] - The organization id of the team. Default is
      #     None. Create via `/organization/new`.
      #   - model_aliases: Optional[dict] - Model aliases for the team.
      #     [Docs](https://docs.hanzo.ai/docs/proxy/team_based_routing#create-team-with-model-alias)
      #   - guardrails: Optional[List[str]] - Guardrails for the team.
      #     [Docs](https://docs.hanzo.ai/docs/proxy/guardrails) Example - update team TPM
      #     Limit
      #
      #   ```
      #   curl --location 'http://0.0.0.0:4000/team/update'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data-raw '{
      #       "team_id": "8d916b1c-510d-4894-a334-1c16a93344f5",
      #       "tpm_limit": 100
      #   }'
      #   ```
      #
      #   Example - Update Team `max_budget` budget
      #
      #   ```
      #   curl --location 'http://0.0.0.0:4000/team/update'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data-raw '{
      #       "team_id": "8d916b1c-510d-4894-a334-1c16a93344f5",
      #       "max_budget": 10
      #   }'
      #   ```
      #
      # @param params [Hanzoai::Models::TeamUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :team_id Body param:
      #
      #   @option params [Boolean, nil] :blocked Body param:
      #
      #   @option params [String, nil] :budget_duration Body param:
      #
      #   @option params [Array<String>, nil] :guardrails Body param:
      #
      #   @option params [Float, nil] :max_budget Body param:
      #
      #   @option params [Object, nil] :metadata Body param:
      #
      #   @option params [Object, nil] :model_aliases Body param:
      #
      #   @option params [Array<Object>, nil] :models Body param:
      #
      #   @option params [String, nil] :organization_id Body param:
      #
      #   @option params [Integer, nil] :rpm_limit Body param:
      #
      #   @option params [Array<Object>, nil] :tags Body param:
      #
      #   @option params [String, nil] :team_alias Body param:
      #
      #   @option params [Integer, nil] :tpm_limit Body param:
      #
      #   @option params [String] :llm_changed_by Header param: The llm-changed-by header enables tracking of actions performed by
      #     authorized users on behalf of other users, providing an audit trail for
      #     accountability
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(params)
        parsed, options = Hanzoai::Models::TeamUpdateParams.dump_request(params)
        header_params = [:"llm-changed-by"]
        @client.request(
          method: :post,
          path: "team/update",
          headers: parsed.slice(*header_params),
          body: parsed.except(*header_params),
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # ```
      #   curl --location --request GET 'http://0.0.0.0:4000/team/list'         --header 'Authorization: Bearer sk-1234'
      #   ```
      #
      #   Parameters:
      #
      #   - user_id: str - Optional. If passed will only return teams that the user_id is
      #     a member of.
      #   - organization_id: str - Optional. If passed will only return teams that belong
      #     to the organization_id. Pass 'default_organization' to get all teams without
      #     organization_id.
      #
      # @param params [Hanzoai::Models::TeamListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :organization_id
      #
      #   @option params [String, nil] :user_id Only return teams which this 'user_id' belongs to
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list(params = {})
        parsed, options = Hanzoai::Models::TeamListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "team/list",
          query: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # delete team and associated team keys
      #
      #   Parameters:
      #
      #   - team_ids: List[str] - Required. List of team IDs to delete. Example:
      #     ["team-1234", "team-5678"]
      #
      #   ```
      #   curl --location 'http://0.0.0.0:4000/team/delete'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data-raw '{
      #       "team_ids": ["8d916b1c-510d-4894-a334-1c16a93344f5"]
      #   }'
      #   ```
      #
      # @param params [Hanzoai::Models::TeamDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String>] :team_ids Body param:
      #
      #   @option params [String] :llm_changed_by Header param: The llm-changed-by header enables tracking of actions performed by
      #     authorized users on behalf of other users, providing an audit trail for
      #     accountability
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(params)
        parsed, options = Hanzoai::Models::TeamDeleteParams.dump_request(params)
        header_params = [:"llm-changed-by"]
        @client.request(
          method: :post,
          path: "team/delete",
          headers: parsed.slice(*header_params),
          body: parsed.except(*header_params),
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # [BETA]
      #
      #   Add new members (either via user_email or user_id) to a team
      #
      #   If user doesn't exist, new user row will also be added to User Table
      #
      #   Only proxy_admin or admin of team, allowed to access this endpoint.
      #
      #   ```
      #
      #   curl -X POST 'http://0.0.0.0:4000/team/member_add'     -H 'Authorization: Bearer sk-1234'     -H 'Content-Type: application/json'     -d '{"team_id": "45e3e396-ee08-4a61-a88e-16b3ce7e0849", "member": {"role": "user", "user_id": "dev247652@hanzo.ai"}}'
      #
      #   ```
      #
      # @param params [Hanzoai::Models::TeamAddMemberParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Hanzoai::Models::Member>, Hanzoai::Models::Member] :member
      #
      #   @option params [String] :team_id
      #
      #   @option params [Float, nil] :max_budget_in_team
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::TeamAddMemberResponse]
      def add_member(params)
        parsed, options = Hanzoai::Models::TeamAddMemberParams.dump_request(params)
        @client.request(
          method: :post,
          path: "team/member_add",
          body: parsed,
          model: Hanzoai::Models::TeamAddMemberResponse,
          options: options
        )
      end

      # Blocks all calls from keys with this team id.
      #
      #   Parameters:
      #
      #   - team_id: str - Required. The unique identifier of the team to block.
      #
      #   Example:
      #
      #   ```
      #   curl --location 'http://0.0.0.0:4000/team/block'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data '{
      #       "team_id": "team-1234"
      #   }'
      #   ```
      #
      #   Returns:
      #
      #   - The updated team record with blocked=True
      #
      # @param params [Hanzoai::Models::TeamBlockParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :team_id
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def block(params)
        parsed, options = Hanzoai::Models::TeamBlockParams.dump_request(params)
        @client.request(
          method: :post,
          path: "team/block",
          body: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # Disable all logging callbacks for a team
      #
      #   Parameters:
      #
      #   - team_id (str, required): The unique identifier for the team
      #
      #   Example curl:
      #
      #   ```
      #   curl -X POST 'http://localhost:4000/team/dbe2f686-a686-4896-864a-4c3924458709/disable_logging'         -H 'Authorization: Bearer sk-1234'
      #   ```
      #
      # @param team_id [String]
      #
      # @param params [Hanzoai::Models::TeamDisableLoggingParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def disable_logging(team_id, params = {})
        @client.request(
          method: :post,
          path: ["team/%0s/disable_logging", team_id],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # List Available Teams
      #
      # @param params [Hanzoai::Models::TeamListAvailableParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Object] :response_model
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list_available(params = {})
        parsed, options = Hanzoai::Models::TeamListAvailableParams.dump_request(params)
        @client.request(
          method: :get,
          path: "team/available",
          query: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # [BETA]
      #
      #   delete members (either via user_email or user_id) from a team
      #
      #   If user doesn't exist, an exception will be raised
      #
      #   ```
      #   curl -X POST 'http://0.0.0.0:8000/team/member_delete'
      #   -H 'Authorization: Bearer sk-1234'
      #   -H 'Content-Type: application/json'
      #   -d '{
      #       "team_id": "45e3e396-ee08-4a61-a88e-16b3ce7e0849",
      #       "user_id": "dev247652@hanzo.ai"
      #   }'
      #   ```
      #
      # @param params [Hanzoai::Models::TeamRemoveMemberParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :team_id
      #
      #   @option params [String, nil] :user_email
      #
      #   @option params [String, nil] :user_id
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def remove_member(params)
        parsed, options = Hanzoai::Models::TeamRemoveMemberParams.dump_request(params)
        @client.request(
          method: :post,
          path: "team/member_delete",
          body: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # get info on team + related keys
      #
      #   Parameters:
      #
      #   - team_id: str - Required. The unique identifier of the team to get info on.
      #
      #   ```
      #   curl --location 'http://localhost:4000/team/info?team_id=your_team_id_here'     --header 'Authorization: Bearer your_api_key_here'
      #   ```
      #
      # @param params [Hanzoai::Models::TeamRetrieveInfoParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :team_id Team ID in the request parameters
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve_info(params = {})
        parsed, options = Hanzoai::Models::TeamRetrieveInfoParams.dump_request(params)
        @client.request(
          method: :get,
          path: "team/info",
          query: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # Blocks all calls from keys with this team id.
      #
      #   Parameters:
      #
      #   - team_id: str - Required. The unique identifier of the team to unblock.
      #
      #   Example:
      #
      #   ```
      #   curl --location 'http://0.0.0.0:4000/team/unblock'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data '{
      #       "team_id": "team-1234"
      #   }'
      #   ```
      #
      # @param params [Hanzoai::Models::TeamUnblockParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :team_id
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def unblock(params)
        parsed, options = Hanzoai::Models::TeamUnblockParams.dump_request(params)
        @client.request(
          method: :post,
          path: "team/unblock",
          body: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # [BETA]
      #
      #   Update team member budgets and team member role
      #
      # @param params [Hanzoai::Models::TeamUpdateMemberParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :team_id
      #
      #   @option params [Float, nil] :max_budget_in_team
      #
      #   @option params [Symbol, Hanzoai::Models::TeamUpdateMemberParams::Role, nil] :role
      #
      #   @option params [String, nil] :user_email
      #
      #   @option params [String, nil] :user_id
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::TeamUpdateMemberResponse]
      def update_member(params)
        parsed, options = Hanzoai::Models::TeamUpdateMemberParams.dump_request(params)
        @client.request(
          method: :post,
          path: "team/member_update",
          body: parsed,
          model: Hanzoai::Models::TeamUpdateMemberResponse,
          options: options
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @model = Hanzoai::Resources::Team::Model.new(client: client)
        @callback = Hanzoai::Resources::Team::Callback.new(client: client)
      end
    end
  end
end
