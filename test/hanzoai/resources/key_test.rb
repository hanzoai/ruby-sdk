# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::KeyTest < Hanzoai::Test::ResourceTest
  def test_update_required_params
    response = @hanzo.key.update(key: "key")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_list
    response = @hanzo.key.list

    assert_pattern do
      response => Hanzoai::Models::KeyListResponse
    end

    assert_pattern do
      response => {
        current_page: Integer | nil,
        keys: ^(Hanzoai::ArrayOf[union: Hanzoai::Models::KeyListResponse::Key]) | nil,
        total_count: Integer | nil,
        total_pages: Integer | nil
      }
    end
  end

  def test_delete
    response = @hanzo.key.delete

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_block_required_params
    response = @hanzo.key.block(key: "key")

    assert_pattern do
      response => Hanzoai::Models::KeyBlockResponse
    end

    assert_pattern do
      response => {
        token: String | nil,
        aliases: Hanzoai::Unknown | nil,
        allowed_cache_controls: ^(Hanzoai::ArrayOf[Hanzoai::Unknown]) | nil,
        blocked: Hanzoai::BooleanModel | nil,
        budget_duration: String | nil,
        budget_reset_at: Time | nil,
        config: Hanzoai::Unknown | nil,
        created_at: Time | nil,
        created_by: String | nil,
        expires: Hanzoai::Models::KeyBlockResponse::Expires | nil,
        key_alias: String | nil,
        key_name: String | nil,
        llm_budget_table: Hanzoai::Unknown | nil,
        max_budget: Float | nil,
        max_parallel_requests: Integer | nil,
        metadata: Hanzoai::Unknown | nil,
        model_max_budget: Hanzoai::Unknown | nil,
        model_spend: Hanzoai::Unknown | nil,
        models: ^(Hanzoai::ArrayOf[Hanzoai::Unknown]) | nil,
        org_id: String | nil,
        permissions: Hanzoai::Unknown | nil,
        rpm_limit: Integer | nil,
        soft_budget_cooldown: Hanzoai::BooleanModel | nil,
        spend: Float | nil,
        team_id: String | nil,
        tpm_limit: Integer | nil,
        updated_at: Time | nil,
        updated_by: String | nil,
        user_id: String | nil
      }
    end
  end

  def test_check_health
    response = @hanzo.key.check_health

    assert_pattern do
      response => Hanzoai::Models::KeyCheckHealthResponse
    end

    assert_pattern do
      response => {
        key: Hanzoai::Models::KeyCheckHealthResponse::Key | nil,
        logging_callbacks: Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks | nil
      }
    end
  end

  def test_generate
    response = @hanzo.key.generate

    assert_pattern do
      response => Hanzoai::Models::GenerateKeyResponse
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
        token_id: String | nil,
        tpm_limit: Integer | nil,
        updated_by: String | nil,
        user_id: String | nil
      }
    end
  end

  def test_regenerate_by_key
    response = @hanzo.key.regenerate_by_key("key")

    assert_pattern do
      response => Hanzoai::Models::GenerateKeyResponse
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
        token_id: String | nil,
        tpm_limit: Integer | nil,
        updated_by: String | nil,
        user_id: String | nil
      }
    end
  end

  def test_retrieve_info
    response = @hanzo.key.retrieve_info

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_unblock_required_params
    response = @hanzo.key.unblock(key: "key")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
