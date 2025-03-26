# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::BudgetTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.budget.create

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_update
    response = @hanzo.budget.update

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_list
    response = @hanzo.budget.list

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_delete_required_params
    response = @hanzo.budget.delete(id: "id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_info_required_params
    response = @hanzo.budget.info(budgets: ["string"])

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_settings_required_params
    response = @hanzo.budget.settings(budget_id: "budget_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
