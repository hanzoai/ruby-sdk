# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::TeamTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.team.create

    assert_pattern do
      response => HanzoAI::Models::TeamCreateResponse
    end

    assert_pattern do
      response => {
        team_id: String,
        admins: ^(HanzoAI::ArrayOf[HanzoAI::Unknown]) | nil,
        blocked: HanzoAI::BooleanModel | nil,
        budget_duration: String | nil,
        budget_reset_at: Time | nil,
        created_at: Time | nil,
        llm_model_table: HanzoAI::Models::TeamCreateResponse::LlmModelTable | nil,
        max_budget: Float | nil,
        max_parallel_requests: Integer | nil,
        members: ^(HanzoAI::ArrayOf[HanzoAI::Unknown]) | nil,
        members_with_roles: ^(HanzoAI::ArrayOf[HanzoAI::Models::Member]) | nil,
        metadata: HanzoAI::Unknown | nil,
        model_id: Integer | nil,
        models: ^(HanzoAI::ArrayOf[HanzoAI::Unknown]) | nil,
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
      response => HanzoAI::Unknown
    end
  end

  def test_list
    response = @hanzo.team.list

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_delete_required_params
    response = @hanzo.team.delete(team_ids: ["string"])

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_add_member_required_params
    response = @hanzo.team.add_member(member: [{role: :admin}], team_id: "team_id")

    assert_pattern do
      response => HanzoAI::Models::TeamAddMemberResponse
    end

    assert_pattern do
      response => {
        team_id: String,
        updated_team_memberships: ^(HanzoAI::ArrayOf[HanzoAI::Models::TeamAddMemberResponse::UpdatedTeamMembership]),
        updated_users: ^(HanzoAI::ArrayOf[HanzoAI::Models::TeamAddMemberResponse::UpdatedUser]),
        admins: ^(HanzoAI::ArrayOf[HanzoAI::Unknown]) | nil,
        blocked: HanzoAI::BooleanModel | nil,
        budget_duration: String | nil,
        budget_reset_at: Time | nil,
        created_at: Time | nil,
        llm_model_table: HanzoAI::Models::TeamAddMemberResponse::LlmModelTable | nil,
        max_budget: Float | nil,
        max_parallel_requests: Integer | nil,
        members: ^(HanzoAI::ArrayOf[HanzoAI::Unknown]) | nil,
        members_with_roles: ^(HanzoAI::ArrayOf[HanzoAI::Models::Member]) | nil,
        metadata: HanzoAI::Unknown | nil,
        model_id: Integer | nil,
        models: ^(HanzoAI::ArrayOf[HanzoAI::Unknown]) | nil,
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
      response => HanzoAI::Unknown
    end
  end

  def test_disable_logging
    response = @hanzo.team.disable_logging("team_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_list_available
    response = @hanzo.team.list_available

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_remove_member_required_params
    response = @hanzo.team.remove_member(team_id: "team_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_retrieve_info
    response = @hanzo.team.retrieve_info

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_unblock_required_params
    response = @hanzo.team.unblock(team_id: "team_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_update_member_required_params
    response = @hanzo.team.update_member(team_id: "team_id")

    assert_pattern do
      response => HanzoAI::Models::TeamUpdateMemberResponse
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
