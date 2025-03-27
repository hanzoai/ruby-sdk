# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::ProviderTest < Hanzoai::Test::ResourceTest
  def test_list_budgets
    response = @hanzo.provider.list_budgets

    assert_pattern do
      response => Hanzoai::Models::ProviderListBudgetsResponse
    end

    assert_pattern do
      response => {
        providers: ^(Hanzoai::HashOf[Hanzoai::Models::ProviderListBudgetsResponse::Provider]) | nil
      }
    end
  end
end
