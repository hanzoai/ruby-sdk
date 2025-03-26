# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Organization::InfoTest < Hanzoai::Test::ResourceTest
  def test_retrieve_required_params
    response = @hanzo.organization.info.retrieve(organization_id: "organization_id")

    assert_pattern do
      response => Hanzoai::Models::Organization::InfoRetrieveResponse
    end

    assert_pattern do
      response => {
        budget_id: String,
        created_at: Time,
        created_by: String,
        models: ^(Hanzoai::ArrayOf[String]),
        updated_at: Time,
        updated_by: String,
        llm_budget_table: Hanzoai::Models::Organization::InfoRetrieveResponse::LlmBudgetTable | nil,
        members: ^(Hanzoai::ArrayOf[Hanzoai::Models::Organization::InfoRetrieveResponse::Member]) | nil,
        metadata: Hanzoai::Unknown | nil,
        organization_alias: String | nil,
        organization_id: String | nil,
        spend: Float | nil,
        teams: ^(Hanzoai::ArrayOf[Hanzoai::Models::Organization::InfoRetrieveResponse::Team]) | nil
      }
    end
  end

  def test_deprecated_required_params
    response = @hanzo.organization.info.deprecated(organizations: ["string"])

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
