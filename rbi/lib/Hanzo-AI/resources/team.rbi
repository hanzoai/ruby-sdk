# typed: strong

module HanzoAI
  module Resources
    class Team
      sig { returns(HanzoAI::Resources::Team::Model) }
      attr_reader :model

      sig { returns(HanzoAI::Resources::Team::Callback) }
      attr_reader :callback

      # Allow users to create a new team. Apply user permissions to their team.
      #
      #   👉
      #   [Detailed Doc on setting team budgets](https://docs.llm.ai/docs/proxy/team_budgets)
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
      #     [here](https://docs.llm.ai/docs/proxy/team_budgets)
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
      #     [Docs](https://docs.llm.ai/docs/proxy/team_based_routing#create-team-with-model-alias)
      #   - guardrails: Optional[List[str]] - Guardrails for the team.
      #     [Docs](https://docs.llm.ai/docs/proxy/guardrails) Returns:
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
      sig do
        params(
          admins: T::Array[T.anything],
          blocked: T::Boolean,
          budget_duration: T.nilable(String),
          guardrails: T.nilable(T::Array[String]),
          max_budget: T.nilable(Float),
          members: T::Array[T.anything],
          members_with_roles: T::Array[T.any(HanzoAI::Models::Member, HanzoAI::Util::AnyHash)],
          metadata: T.nilable(T.anything),
          model_aliases: T.nilable(T.anything),
          models: T::Array[T.anything],
          organization_id: T.nilable(String),
          rpm_limit: T.nilable(Integer),
          tags: T.nilable(T::Array[T.anything]),
          team_alias: T.nilable(String),
          team_id: T.nilable(String),
          tpm_limit: T.nilable(Integer),
          llm_changed_by: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(HanzoAI::Models::TeamCreateResponse)
      end
      def create(
        # Body param:
        admins: nil,
        # Body param:
        blocked: nil,
        # Body param:
        budget_duration: nil,
        # Body param:
        guardrails: nil,
        # Body param:
        max_budget: nil,
        # Body param:
        members: nil,
        # Body param:
        members_with_roles: nil,
        # Body param:
        metadata: nil,
        # Body param:
        model_aliases: nil,
        # Body param:
        models: nil,
        # Body param:
        organization_id: nil,
        # Body param:
        rpm_limit: nil,
        # Body param:
        tags: nil,
        # Body param:
        team_alias: nil,
        # Body param:
        team_id: nil,
        # Body param:
        tpm_limit: nil,
        # Header param: The llm-changed-by header enables tracking of actions performed by
        #   authorized users on behalf of other users, providing an audit trail for
        #   accountability
        llm_changed_by: nil,
        request_options: {}
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
      #     [here](https://docs.llm.ai/docs/proxy/team_budgets)
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
      #     [Docs](https://docs.llm.ai/docs/proxy/team_based_routing#create-team-with-model-alias)
      #   - guardrails: Optional[List[str]] - Guardrails for the team.
      #     [Docs](https://docs.llm.ai/docs/proxy/guardrails) Example - update team TPM
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
      sig do
        params(
          team_id: String,
          blocked: T.nilable(T::Boolean),
          budget_duration: T.nilable(String),
          guardrails: T.nilable(T::Array[String]),
          max_budget: T.nilable(Float),
          metadata: T.nilable(T.anything),
          model_aliases: T.nilable(T.anything),
          models: T.nilable(T::Array[T.anything]),
          organization_id: T.nilable(String),
          rpm_limit: T.nilable(Integer),
          tags: T.nilable(T::Array[T.anything]),
          team_alias: T.nilable(String),
          tpm_limit: T.nilable(Integer),
          llm_changed_by: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def update(
        # Body param:
        team_id:,
        # Body param:
        blocked: nil,
        # Body param:
        budget_duration: nil,
        # Body param:
        guardrails: nil,
        # Body param:
        max_budget: nil,
        # Body param:
        metadata: nil,
        # Body param:
        model_aliases: nil,
        # Body param:
        models: nil,
        # Body param:
        organization_id: nil,
        # Body param:
        rpm_limit: nil,
        # Body param:
        tags: nil,
        # Body param:
        team_alias: nil,
        # Body param:
        tpm_limit: nil,
        # Header param: The llm-changed-by header enables tracking of actions performed by
        #   authorized users on behalf of other users, providing an audit trail for
        #   accountability
        llm_changed_by: nil,
        request_options: {}
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
      sig do
        params(
          organization_id: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def list(
        organization_id: nil,
        # Only return teams which this 'user_id' belongs to
        user_id: nil,
        request_options: {}
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
      sig do
        params(
          team_ids: T::Array[String],
          llm_changed_by: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def delete(
        # Body param:
        team_ids:,
        # Header param: The llm-changed-by header enables tracking of actions performed by
        #   authorized users on behalf of other users, providing an audit trail for
        #   accountability
        llm_changed_by: nil,
        request_options: {}
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
      sig do
        params(
          member: T.any(
            T::Array[T.any(HanzoAI::Models::Member, HanzoAI::Util::AnyHash)],
            HanzoAI::Models::Member,
            HanzoAI::Util::AnyHash
          ),
          team_id: String,
          max_budget_in_team: T.nilable(Float),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(HanzoAI::Models::TeamAddMemberResponse)
      end
      def add_member(member:, team_id:, max_budget_in_team: nil, request_options: {})
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
      sig do
        params(
          team_id: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def block(team_id:, request_options: {})
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
      sig do
        params(
          team_id: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def disable_logging(team_id, request_options: {})
      end

      # List Available Teams
      sig do
        params(
          response_model: T.anything,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def list_available(response_model: nil, request_options: {})
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
      sig do
        params(
          team_id: String,
          user_email: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def remove_member(team_id:, user_email: nil, user_id: nil, request_options: {})
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
      sig do
        params(
          team_id: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def retrieve_info(
        # Team ID in the request parameters
        team_id: nil,
        request_options: {}
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
      sig do
        params(
          team_id: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def unblock(team_id:, request_options: {})
      end

      # [BETA]
      #
      #   Update team member budgets and team member role
      sig do
        params(
          team_id: String,
          max_budget_in_team: T.nilable(Float),
          role: T.nilable(HanzoAI::Models::TeamUpdateMemberParams::Role::OrSymbol),
          user_email: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(HanzoAI::Models::TeamUpdateMemberResponse)
      end
      def update_member(
        team_id:,
        max_budget_in_team: nil,
        role: nil,
        user_email: nil,
        user_id: nil,
        request_options: {}
      )
      end

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
