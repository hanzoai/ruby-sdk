# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::OrganizationTest < Hanzoai::Test::ResourceTest
  def test_create_required_params
    response = @hanzo.organization.create(organization_alias: "organization_alias")

    assert_pattern do
      response => Hanzoai::Models::OrganizationCreateResponse
    end

    assert_pattern do
      response => {
        budget_id: String,
        created_at: Time,
        created_by: String,
        models: ^(Hanzoai::ArrayOf[String]),
        organization_id: String,
        updated_at: Time,
        updated_by: String,
        metadata: Hanzoai::Unknown | nil,
        organization_alias: String | nil,
        spend: Float | nil
      }
    end
  end

  def test_update
    response = @hanzo.organization.update

    assert_pattern do
      response => Hanzoai::Models::OrganizationUpdateResponse
    end

    assert_pattern do
      response => {
        budget_id: String,
        created_at: Time,
        created_by: String,
        models: ^(Hanzoai::ArrayOf[String]),
        updated_at: Time,
        updated_by: String,
        llm_budget_table: Hanzoai::Models::OrganizationUpdateResponse::LlmBudgetTable | nil,
        members: ^(Hanzoai::ArrayOf[Hanzoai::Models::OrganizationUpdateResponse::Member]) | nil,
        metadata: Hanzoai::Unknown | nil,
        organization_alias: String | nil,
        organization_id: String | nil,
        spend: Float | nil,
        teams: ^(Hanzoai::ArrayOf[Hanzoai::Models::OrganizationUpdateResponse::Team]) | nil
      }
    end
  end

  def test_list
    response = @hanzo.organization.list

    assert_pattern do
      response => ^(Hanzoai::ArrayOf[Hanzoai::Models::OrganizationListResponseItem])
    end
  end

  def test_delete_required_params
    response = @hanzo.organization.delete(organization_ids: ["string"])

    assert_pattern do
      response => ^(Hanzoai::ArrayOf[Hanzoai::Models::OrganizationDeleteResponseItem])
    end
  end

  def test_add_member_required_params
    response =
      @hanzo.organization.add_member(member: [{role: :org_admin}], organization_id: "organization_id")

    assert_pattern do
      response => Hanzoai::Models::OrganizationAddMemberResponse
    end

    assert_pattern do
      response => {
        organization_id: String,
        updated_organization_memberships: ^(Hanzoai::ArrayOf[Hanzoai::Models::OrganizationAddMemberResponse::UpdatedOrganizationMembership]),
        updated_users: ^(Hanzoai::ArrayOf[Hanzoai::Models::OrganizationAddMemberResponse::UpdatedUser])
      }
    end
  end

  def test_delete_member_required_params
    response = @hanzo.organization.delete_member(organization_id: "organization_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_update_member_required_params
    response = @hanzo.organization.update_member(organization_id: "organization_id")

    assert_pattern do
      response => Hanzoai::Models::OrganizationUpdateMemberResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        organization_id: String,
        updated_at: Time,
        user_id: String,
        budget_id: String | nil,
        llm_budget_table: Hanzoai::Models::OrganizationUpdateMemberResponse::LlmBudgetTable | nil,
        spend: Float | nil,
        user: Hanzoai::Unknown | nil,
        user_role: String | nil
      }
    end
  end
end
