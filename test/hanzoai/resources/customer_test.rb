# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::CustomerTest < Hanzoai::Test::ResourceTest
  def test_create_required_params
    response = @hanzo.customer.create(user_id: "user_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_update_required_params
    response = @hanzo.customer.update(user_id: "user_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_list
    response = @hanzo.customer.list

    assert_pattern do
      response => ^(Hanzoai::ArrayOf[Hanzoai::Models::CustomerListResponseItem])
    end
  end

  def test_delete_required_params
    response = @hanzo.customer.delete(user_ids: ["string"])

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_block_required_params
    response = @hanzo.customer.block(user_ids: ["string"])

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve_info_required_params
    response = @hanzo.customer.retrieve_info(end_user_id: "end_user_id")

    assert_pattern do
      response => Hanzoai::Models::CustomerRetrieveInfoResponse
    end

    assert_pattern do
      response => {
        blocked: Hanzoai::BooleanModel,
        user_id: String,
        alias_: String | nil,
        allowed_model_region: Hanzoai::Models::CustomerRetrieveInfoResponse::AllowedModelRegion | nil,
        default_model: String | nil,
        llm_budget_table: Hanzoai::Models::CustomerRetrieveInfoResponse::LlmBudgetTable | nil,
        spend: Float | nil
      }
    end
  end

  def test_unblock_required_params
    response = @hanzo.customer.unblock(user_ids: ["string"])

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
