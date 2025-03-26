# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::UserTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.user.create

    assert_pattern do
      response => HanzoAI::Models::UserCreateResponse
    end

    assert_pattern do
      response => {
        expires: Time | nil,
        key: String,
        token: String | nil,
        aliases: HanzoAI::Unknown | nil,
        allowed_cache_controls: ^(HanzoAI::ArrayOf[HanzoAI::Unknown]) | nil,
        blocked: HanzoAI::BooleanModel | nil,
        budget_duration: String | nil,
        budget_id: String | nil,
        config: HanzoAI::Unknown | nil,
        created_by: String | nil,
        duration: String | nil,
        enforced_params: ^(HanzoAI::ArrayOf[String]) | nil,
        guardrails: ^(HanzoAI::ArrayOf[String]) | nil,
        key_alias: String | nil,
        key_name: String | nil,
        llm_budget_table: HanzoAI::Unknown | nil,
        max_budget: Float | nil,
        max_parallel_requests: Integer | nil,
        metadata: HanzoAI::Unknown | nil,
        model_max_budget: HanzoAI::Unknown | nil,
        model_rpm_limit: HanzoAI::Unknown | nil,
        model_tpm_limit: HanzoAI::Unknown | nil,
        models: ^(HanzoAI::ArrayOf[HanzoAI::Unknown]) | nil,
        permissions: HanzoAI::Unknown | nil,
        rpm_limit: Integer | nil,
        spend: Float | nil,
        tags: ^(HanzoAI::ArrayOf[String]) | nil,
        team_id: String | nil,
        teams: ^(HanzoAI::ArrayOf[HanzoAI::Unknown]) | nil,
        token_id: String | nil,
        tpm_limit: Integer | nil,
        updated_by: String | nil,
        user_alias: String | nil,
        user_email: String | nil,
        user_id: String | nil,
        user_role: HanzoAI::Models::UserCreateResponse::UserRole | nil
      }
    end
  end

  def test_update
    response = @hanzo.user.update

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_list
    response = @hanzo.user.list

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_delete_required_params
    response = @hanzo.user.delete(user_ids: ["string"])

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_retrieve_info
    response = @hanzo.user.retrieve_info

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
