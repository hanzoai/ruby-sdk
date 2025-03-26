# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Organization::InfoTest < HanzoAI::Test::ResourceTest
  def test_retrieve_required_params
    response = @hanzo.organization.info.retrieve(organization_id: "organization_id")

    assert_pattern do
      response => HanzoAI::Models::Organization::InfoRetrieveResponse
    end

    assert_pattern do
      response => {
        budget_id: String,
        created_at: Time,
        created_by: String,
        models: ^(HanzoAI::ArrayOf[String]),
        updated_at: Time,
        updated_by: String,
        llm_budget_table: HanzoAI::Models::Organization::InfoRetrieveResponse::LlmBudgetTable | nil,
        members: ^(HanzoAI::ArrayOf[HanzoAI::Models::Organization::InfoRetrieveResponse::Member]) | nil,
        metadata: HanzoAI::Unknown | nil,
        organization_alias: String | nil,
        organization_id: String | nil,
        spend: Float | nil,
        teams: ^(HanzoAI::ArrayOf[HanzoAI::Models::Organization::InfoRetrieveResponse::Team]) | nil
      }
    end
  end

  def test_deprecated_required_params
    response = @hanzo.organization.info.deprecated(organizations: ["string"])

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
