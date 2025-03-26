# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::ProviderTest < HanzoAI::Test::ResourceTest
  def test_list_budgets
    response = @hanzo.provider.list_budgets

    assert_pattern do
      response => HanzoAI::Models::ProviderListBudgetsResponse
    end

    assert_pattern do
      response => {
        providers: ^(HanzoAI::HashOf[HanzoAI::Models::ProviderListBudgetsResponse::Provider]) | nil
      }
    end
  end
end
