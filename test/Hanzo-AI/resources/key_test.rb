# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::KeyTest < HanzoAI::Test::ResourceTest
  def test_update_required_params
    response = @hanzo.key.update(key: "key")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_list
    response = @hanzo.key.list

    assert_pattern do
      response => HanzoAI::Models::KeyListResponse
    end

    assert_pattern do
      response => {
        current_page: Integer | nil,
        keys: ^(HanzoAI::ArrayOf[union: HanzoAI::Models::KeyListResponse::Key]) | nil,
        total_count: Integer | nil,
        total_pages: Integer | nil
      }
    end
  end

  def test_delete
    response = @hanzo.key.delete

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_block_required_params
    response = @hanzo.key.block(key: "key")

    assert_pattern do
      response => HanzoAI::Models::KeyBlockResponse
    end

    assert_pattern do
      response => {
        token: String | nil,
        aliases: HanzoAI::Unknown | nil,
        allowed_cache_controls: ^(HanzoAI::ArrayOf[HanzoAI::Unknown]) | nil,
        blocked: HanzoAI::BooleanModel | nil,
        budget_duration: String | nil,
        budget_reset_at: Time | nil,
        config: HanzoAI::Unknown | nil,
        created_at: Time | nil,
        created_by: String | nil,
        expires: HanzoAI::Models::KeyBlockResponse::Expires | nil,
        key_alias: String | nil,
        key_name: String | nil,
        llm_budget_table: HanzoAI::Unknown | nil,
        max_budget: Float | nil,
        max_parallel_requests: Integer | nil,
        metadata: HanzoAI::Unknown | nil,
        model_max_budget: HanzoAI::Unknown | nil,
        model_spend: HanzoAI::Unknown | nil,
        models: ^(HanzoAI::ArrayOf[HanzoAI::Unknown]) | nil,
        org_id: String | nil,
        permissions: HanzoAI::Unknown | nil,
        rpm_limit: Integer | nil,
        soft_budget_cooldown: HanzoAI::BooleanModel | nil,
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
      response => HanzoAI::Models::KeyCheckHealthResponse
    end

    assert_pattern do
      response => {
        key: HanzoAI::Models::KeyCheckHealthResponse::Key | nil,
        logging_callbacks: HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks | nil
      }
    end
  end

  def test_generate
    response = @hanzo.key.generate

    assert_pattern do
      response => HanzoAI::Models::GenerateKeyResponse
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
      response => HanzoAI::Models::GenerateKeyResponse
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
      response => HanzoAI::Unknown
    end
  end

  def test_unblock_required_params
    response = @hanzo.key.unblock(key: "key")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
