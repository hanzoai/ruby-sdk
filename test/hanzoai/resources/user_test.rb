# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::UserTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.user.create

    assert_pattern do
      response => Hanzoai::Models::UserCreateResponse
    end

    assert_pattern do
      response => {
        expires: Time | nil,
        key: String,
        token: String | nil,
        aliases: Hanzoai::Unknown | nil,
        allowed_cache_controls: ^(Hanzoai::ArrayOf[Hanzoai::Unknown]) | nil,
        blocked: Hanzoai::BooleanModel | nil,
        budget_duration: String | nil,
        budget_id: String | nil,
        config: Hanzoai::Unknown | nil,
        created_by: String | nil,
        duration: String | nil,
        enforced_params: ^(Hanzoai::ArrayOf[String]) | nil,
        guardrails: ^(Hanzoai::ArrayOf[String]) | nil,
        key_alias: String | nil,
        key_name: String | nil,
        llm_budget_table: Hanzoai::Unknown | nil,
        max_budget: Float | nil,
        max_parallel_requests: Integer | nil,
        metadata: Hanzoai::Unknown | nil,
        model_max_budget: Hanzoai::Unknown | nil,
        model_rpm_limit: Hanzoai::Unknown | nil,
        model_tpm_limit: Hanzoai::Unknown | nil,
        models: ^(Hanzoai::ArrayOf[Hanzoai::Unknown]) | nil,
        permissions: Hanzoai::Unknown | nil,
        rpm_limit: Integer | nil,
        spend: Float | nil,
        tags: ^(Hanzoai::ArrayOf[String]) | nil,
        team_id: String | nil,
        teams: ^(Hanzoai::ArrayOf[Hanzoai::Unknown]) | nil,
        token_id: String | nil,
        tpm_limit: Integer | nil,
        updated_by: String | nil,
        user_alias: String | nil,
        user_email: String | nil,
        user_id: String | nil,
        user_role: Hanzoai::Models::UserCreateResponse::UserRole | nil
      }
    end
  end

  def test_update
    response = @hanzo.user.update

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_list
    response = @hanzo.user.list

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_delete_required_params
    response = @hanzo.user.delete(user_ids: ["string"])

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve_info
    response = @hanzo.user.retrieve_info

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
