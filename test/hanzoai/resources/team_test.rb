# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::TeamTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.team.create

    assert_pattern do
      response => Hanzoai::Models::TeamCreateResponse
    end

    assert_pattern do
      response => {
        team_id: String,
        admins: ^(Hanzoai::ArrayOf[Hanzoai::Unknown]) | nil,
        blocked: Hanzoai::BooleanModel | nil,
        budget_duration: String | nil,
        budget_reset_at: Time | nil,
        created_at: Time | nil,
        llm_model_table: Hanzoai::Models::TeamCreateResponse::LlmModelTable | nil,
        max_budget: Float | nil,
        max_parallel_requests: Integer | nil,
        members: ^(Hanzoai::ArrayOf[Hanzoai::Unknown]) | nil,
        members_with_roles: ^(Hanzoai::ArrayOf[Hanzoai::Models::Member]) | nil,
        metadata: Hanzoai::Unknown | nil,
        model_id: Integer | nil,
        models: ^(Hanzoai::ArrayOf[Hanzoai::Unknown]) | nil,
        organization_id: String | nil,
        rpm_limit: Integer | nil,
        spend: Float | nil,
        team_alias: String | nil,
        tpm_limit: Integer | nil
      }
    end
  end

  def test_update_required_params
    response = @hanzo.team.update(team_id: "team_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_list
    response = @hanzo.team.list

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_delete_required_params
    response = @hanzo.team.delete(team_ids: ["string"])

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_add_member_required_params
    response = @hanzo.team.add_member(member: [{role: :admin}], team_id: "team_id")

    assert_pattern do
      response => Hanzoai::Models::TeamAddMemberResponse
    end

    assert_pattern do
      response => {
        team_id: String,
        updated_team_memberships: ^(Hanzoai::ArrayOf[Hanzoai::Models::TeamAddMemberResponse::UpdatedTeamMembership]),
        updated_users: ^(Hanzoai::ArrayOf[Hanzoai::Models::TeamAddMemberResponse::UpdatedUser]),
        admins: ^(Hanzoai::ArrayOf[Hanzoai::Unknown]) | nil,
        blocked: Hanzoai::BooleanModel | nil,
        budget_duration: String | nil,
        budget_reset_at: Time | nil,
        created_at: Time | nil,
        llm_model_table: Hanzoai::Models::TeamAddMemberResponse::LlmModelTable | nil,
        max_budget: Float | nil,
        max_parallel_requests: Integer | nil,
        members: ^(Hanzoai::ArrayOf[Hanzoai::Unknown]) | nil,
        members_with_roles: ^(Hanzoai::ArrayOf[Hanzoai::Models::Member]) | nil,
        metadata: Hanzoai::Unknown | nil,
        model_id: Integer | nil,
        models: ^(Hanzoai::ArrayOf[Hanzoai::Unknown]) | nil,
        organization_id: String | nil,
        rpm_limit: Integer | nil,
        spend: Float | nil,
        team_alias: String | nil,
        tpm_limit: Integer | nil
      }
    end
  end

  def test_block_required_params
    response = @hanzo.team.block(team_id: "team_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_disable_logging
    response = @hanzo.team.disable_logging("team_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_list_available
    response = @hanzo.team.list_available

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_remove_member_required_params
    response = @hanzo.team.remove_member(team_id: "team_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve_info
    response = @hanzo.team.retrieve_info

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_unblock_required_params
    response = @hanzo.team.unblock(team_id: "team_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_update_member_required_params
    response = @hanzo.team.update_member(team_id: "team_id")

    assert_pattern do
      response => Hanzoai::Models::TeamUpdateMemberResponse
    end

    assert_pattern do
      response => {
        team_id: String,
        user_id: String,
        max_budget_in_team: Float | nil,
        user_email: String | nil
      }
    end
  end
end
