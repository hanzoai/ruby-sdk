# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::SpendTest < Hanzoai::Test::ResourceTest
  def test_calculate_spend
    response = @hanzo.spend.calculate_spend

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_list_logs
    response = @hanzo.spend.list_logs

    assert_pattern do
      response => ^(Hanzoai::ArrayOf[Hanzoai::Models::SpendListLogsResponseItem])
    end
  end

  def test_list_tags
    response = @hanzo.spend.list_tags

    assert_pattern do
      response => ^(Hanzoai::ArrayOf[Hanzoai::Models::SpendListTagsResponseItem])
    end
  end
end
