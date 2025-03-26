# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::SpendTest < HanzoAI::Test::ResourceTest
  def test_calculate_spend
    response = @hanzo.spend.calculate_spend

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_list_logs
    response = @hanzo.spend.list_logs

    assert_pattern do
      response => ^(HanzoAI::ArrayOf[HanzoAI::Models::SpendListLogsResponseItem])
    end
  end

  def test_list_tags
    response = @hanzo.spend.list_tags

    assert_pattern do
      response => ^(HanzoAI::ArrayOf[HanzoAI::Models::SpendListTagsResponseItem])
    end
  end
end
