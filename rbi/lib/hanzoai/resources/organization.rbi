# typed: strong

module Hanzoai
  module Resources
    class Organization
      sig { returns(Hanzoai::Resources::Organization::Info) }
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
      #     [Docs](https://docs.hanzo.ai/docs/proxy/team_based_routing#create-team-with-model-alias)
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
      sig do
        params(
          organization_alias: String,
          budget_duration: T.nilable(String),
          budget_id: T.nilable(String),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          metadata: T.nilable(T.anything),
          model_max_budget: T.nilable(T.anything),
          models: T::Array[T.anything],
          organization_id: T.nilable(String),
          rpm_limit: T.nilable(Integer),
          soft_budget: T.nilable(Float),
          tpm_limit: T.nilable(Integer),
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(Hanzoai::Models::OrganizationCreateResponse)
      end
      def create(
        organization_alias:,
        budget_duration: nil,
        budget_id: nil,
        max_budget: nil,
        max_parallel_requests: nil,
        metadata: nil,
        model_max_budget: nil,
        models: nil,
        organization_id: nil,
        rpm_limit: nil,
        soft_budget: nil,
        tpm_limit: nil,
        request_options: {}
      )
      end

      # Update an organization
      sig do
        params(
          budget_id: T.nilable(String),
          metadata: T.nilable(T.anything),
          models: T.nilable(T::Array[String]),
          organization_alias: T.nilable(String),
          organization_id: T.nilable(String),
          spend: T.nilable(Float),
          updated_by: T.nilable(String),
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(Hanzoai::Models::OrganizationUpdateResponse)
      end
      def update(
        budget_id: nil,
        metadata: nil,
        models: nil,
        organization_alias: nil,
        organization_id: nil,
        spend: nil,
        updated_by: nil,
        request_options: {}
      )
      end

      # ```
      #   curl --location --request GET 'http://0.0.0.0:4000/organization/list'         --header 'Authorization: Bearer sk-1234'
      #   ```
      sig do
        params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(T::Array[Hanzoai::Models::OrganizationListResponseItem])
      end
      def list(request_options: {})
      end

      # Delete an organization
      #
      #   # Parameters:
      #
      #   - organization_ids: List[str] - The organization ids to delete.
      sig do
        params(
          organization_ids: T::Array[String],
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T::Array[Hanzoai::Models::OrganizationDeleteResponseItem])
      end
      def delete(organization_ids:, request_options: {})
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
      sig do
        params(
          member: T.any(
            T::Array[T.any(Hanzoai::Models::OrgMember, Hanzoai::Util::AnyHash)],
            Hanzoai::Models::OrgMember,
            Hanzoai::Util::AnyHash
          ),
          organization_id: String,
          max_budget_in_organization: T.nilable(Float),
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(Hanzoai::Models::OrganizationAddMemberResponse)
      end
      def add_member(member:, organization_id:, max_budget_in_organization: nil, request_options: {})
      end

      # Delete a member from an organization
      sig do
        params(
          organization_id: String,
          user_email: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def delete_member(organization_id:, user_email: nil, user_id: nil, request_options: {})
      end

      # Update a member's role in an organization
      sig do
        params(
          organization_id: String,
          max_budget_in_organization: T.nilable(Float),
          role: T.nilable(Hanzoai::Models::OrganizationUpdateMemberParams::Role::OrSymbol),
          user_email: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(Hanzoai::Models::OrganizationUpdateMemberResponse)
      end
      def update_member(
        organization_id:,
        max_budget_in_organization: nil,
        # Admin Roles: PROXY_ADMIN: admin over the platform PROXY_ADMIN_VIEW_ONLY: can
        #   login, view all own keys, view all spend ORG_ADMIN: admin over a specific
        #   organization, can create teams, users only within their organization
        #
        #   Internal User Roles: INTERNAL_USER: can login, view/create/delete their own
        #   keys, view their spend INTERNAL_USER_VIEW_ONLY: can login, view their own keys,
        #   view their own spend
        #
        #   Team Roles: TEAM: used for JWT auth
        #
        #   Customer Roles: CUSTOMER: External users -> these are customers
        role: nil,
        user_email: nil,
        user_id: nil,
        request_options: {}
      )
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
