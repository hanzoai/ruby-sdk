# frozen_string_literal: true

module Hanzoai
  module Resources
    class Organization
      # @return [Hanzoai::Resources::Organization::Info]
      attr_reader :info

      # Allow orgs to own teams
      #
      #   Set org level budgets + model access.
      #
      #   Only admins can create orgs.
      #
      #   # Parameters
      #
      #   - organization_alias: _str_ - The name of the organization.
      #   - models: _List_ - The models the organization has access to.
      #   - budget_id: _Optional[str]_ - The id for a budget (tpm/rpm/max budget) for the
      #     organization.
      #
      #   ### IF NO BUDGET ID - CREATE ONE WITH THESE PARAMS
      #
      #   - max_budget: _Optional[float]_ - Max budget for org
      #   - tpm_limit: _Optional[int]_ - Max tpm limit for org
      #   - rpm_limit: _Optional[int]_ - Max rpm limit for org
      #   - max_parallel_requests: _Optional[int]_ - [Not Implemented Yet] Max parallel
      #     requests for org
      #   - soft_budget: _Optional[float]_ - [Not Implemented Yet] Get a slack alert when
      #     this soft budget is reached. Don't block requests.
      #   - model_max_budget: _Optional[dict]_ - Max budget for a specific model
      #   - budget_duration: _Optional[str]_ - Frequency of reseting org budget
      #   - metadata: _Optional[dict]_ - Metadata for organization, store information for
      #     organization. Example metadata - {"extra_info": "some info"}
      #   - blocked: _bool_ - Flag indicating if the org is blocked or not - will stop all
      #     calls from keys with this org_id.
      #   - tags: _Optional[List[str]]_ - Tags for
      #     [tracking spend](https://llm.vercel.app/docs/proxy/enterprise#tracking-spend-for-custom-tags)
      #     and/or doing
      #     [tag-based routing](https://llm.vercel.app/docs/proxy/tag_routing).
      #   - organization_id: _Optional[str]_ - The organization id of the team. Default is
      #     None. Create via `/organization/new`.
      #   - model_aliases: Optional[dict] - Model aliases for the team.
      #     [Docs](https://docs.llm.ai/docs/proxy/team_based_routing#create-team-with-model-alias)
      #
      #   Case 1: Create new org **without** a budget_id
      #
      #   ```bash
      #   curl --location 'http://0.0.0.0:4000/organization/new'
      #   --header 'Authorization: Bearer sk-1234'
      #   --header 'Content-Type: application/json'
      #   --data '{
      #       "organization_alias": "my-secret-org",
      #       "models": ["model1", "model2"],
      #       "max_budget": 100
      #   }'
      #
      #
      #   ```
      #
      #   Case 2: Create new org **with** a budget_id
      #
      #   ```bash
      #   curl --location 'http://0.0.0.0:4000/organization/new'
      #   --header 'Authorization: Bearer sk-1234'
      #   --header 'Content-Type: application/json'
      #   --data '{
      #       "organization_alias": "my-secret-org",
      #       "models": ["model1", "model2"],
      #       "budget_id": "428eeaa8-f3ac-4e85-a8fb-7dc8d7aa8689"
      #   }'
      #   ```
      #
      # @param params [Hanzoai::Models::OrganizationCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :organization_alias
      #
      #   @option params [String, nil] :budget_duration
      #
      #   @option params [String, nil] :budget_id
      #
      #   @option params [Float, nil] :max_budget
      #
      #   @option params [Integer, nil] :max_parallel_requests
      #
      #   @option params [Object, nil] :metadata
      #
      #   @option params [Object, nil] :model_max_budget
      #
      #   @option params [Array<Object>] :models
      #
      #   @option params [String, nil] :organization_id
      #
      #   @option params [Integer, nil] :rpm_limit
      #
      #   @option params [Float, nil] :soft_budget
      #
      #   @option params [Integer, nil] :tpm_limit
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::OrganizationCreateResponse]
      def create(params)
        parsed, options = Hanzoai::Models::OrganizationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "organization/new",
          body: parsed,
          model: Hanzoai::Models::OrganizationCreateResponse,
          options: options
        )
      end

      # Update an organization
      #
      # @param params [Hanzoai::Models::OrganizationUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :budget_id
      #
      #   @option params [Object, nil] :metadata
      #
      #   @option params [Array<String>, nil] :models
      #
      #   @option params [String, nil] :organization_alias
      #
      #   @option params [String, nil] :organization_id
      #
      #   @option params [Float, nil] :spend
      #
      #   @option params [String, nil] :updated_by
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::OrganizationUpdateResponse]
      def update(params = {})
        parsed, options = Hanzoai::Models::OrganizationUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "organization/update",
          body: parsed,
          model: Hanzoai::Models::OrganizationUpdateResponse,
          options: options
        )
      end

      # ```
      #   curl --location --request GET 'http://0.0.0.0:4000/organization/list'         --header 'Authorization: Bearer sk-1234'
      #   ```
      #
      # @param params [Hanzoai::Models::OrganizationListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<Hanzoai::Models::OrganizationListResponseItem>]
      def list(params = {})
        @client.request(
          method: :get,
          path: "organization/list",
          model: Hanzoai::ArrayOf[Hanzoai::Models::OrganizationListResponseItem],
          options: params[:request_options]
        )
      end

      # Delete an organization
      #
      #   # Parameters:
      #
      #   - organization_ids: List[str] - The organization ids to delete.
      #
      # @param params [Hanzoai::Models::OrganizationDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String>] :organization_ids
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<Hanzoai::Models::OrganizationDeleteResponseItem>]
      def delete(params)
        parsed, options = Hanzoai::Models::OrganizationDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: "organization/delete",
          body: parsed,
          model: Hanzoai::ArrayOf[Hanzoai::Models::OrganizationDeleteResponseItem],
          options: options
        )
      end

      # [BETA]
      #
      #   Add new members (either via user_email or user_id) to an organization
      #
      #   If user doesn't exist, new user row will also be added to User Table
      #
      #   Only proxy_admin or org_admin of organization, allowed to access this endpoint.
      #
      #   # Parameters:
      #
      #   - organization_id: str (required)
      #   - member: Union[List[Member], Member] (required)
      #     - role: Literal[LLMUserRoles] (required)
      #     - user_id: Optional[str]
      #     - user_email: Optional[str]
      #
      #   Note: Either user_id or user_email must be provided for each member.
      #
      #   Example:
      #
      #   ```
      #   curl -X POST 'http://0.0.0.0:4000/organization/member_add'     -H 'Authorization: Bearer sk-1234'     -H 'Content-Type: application/json'     -d '{
      #       "organization_id": "45e3e396-ee08-4a61-a88e-16b3ce7e0849",
      #       "member": {
      #           "role": "internal_user",
      #           "user_id": "dev247652@hanzo.ai"
      #       },
      #       "max_budget_in_organization": 100.0
      #   }'
      #   ```
      #
      #   The following is executed in this function:
      #
      #   1. Check if organization exists
      #   2. Creates a new Internal User if the user_id or user_email is not found in
      #      LLM_UserTable
      #   3. Add Internal User to the `LLM_OrganizationMembership` table
      #
      # @param params [Hanzoai::Models::OrganizationAddMemberParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Hanzoai::Models::OrgMember>, Hanzoai::Models::OrgMember] :member
      #
      #   @option params [String] :organization_id
      #
      #   @option params [Float, nil] :max_budget_in_organization
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::OrganizationAddMemberResponse]
      def add_member(params)
        parsed, options = Hanzoai::Models::OrganizationAddMemberParams.dump_request(params)
        @client.request(
          method: :post,
          path: "organization/member_add",
          body: parsed,
          model: Hanzoai::Models::OrganizationAddMemberResponse,
          options: options
        )
      end

      # Delete a member from an organization
      #
      # @param params [Hanzoai::Models::OrganizationDeleteMemberParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :organization_id
      #
      #   @option params [String, nil] :user_email
      #
      #   @option params [String, nil] :user_id
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete_member(params)
        parsed, options = Hanzoai::Models::OrganizationDeleteMemberParams.dump_request(params)
        @client.request(
          method: :delete,
          path: "organization/member_delete",
          body: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # Update a member's role in an organization
      #
      # @param params [Hanzoai::Models::OrganizationUpdateMemberParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :organization_id
      #
      #   @option params [Float, nil] :max_budget_in_organization
      #
      #   @option params [Symbol, Hanzoai::Models::OrganizationUpdateMemberParams::Role, nil] :role Admin Roles: PROXY_ADMIN: admin over the platform PROXY_ADMIN_VIEW_ONLY: can
      #     login, view all own keys, view all spend ORG_ADMIN: admin over a specific
      #     organization, can create teams, users only within their organization
      #
      #     Internal User Roles: INTERNAL_USER: can login, view/create/delete their own
      #     keys, view their spend INTERNAL_USER_VIEW_ONLY: can login, view their own keys,
      #     view their own spend
      #
      #     Team Roles: TEAM: used for JWT auth
      #
      #     Customer Roles: CUSTOMER: External users -> these are customers
      #
      #   @option params [String, nil] :user_email
      #
      #   @option params [String, nil] :user_id
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::OrganizationUpdateMemberResponse]
      def update_member(params)
        parsed, options = Hanzoai::Models::OrganizationUpdateMemberParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "organization/member_update",
          body: parsed,
          model: Hanzoai::Models::OrganizationUpdateMemberResponse,
          options: options
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @info = Hanzoai::Resources::Organization::Info.new(client: client)
      end
    end
  end
end
