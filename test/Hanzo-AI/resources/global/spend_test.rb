# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Global::SpendTest < HanzoAI::Test::ResourceTest
  def test_list_tags
    response = @hanzo.global.spend.list_tags

    assert_pattern do
      response => ^(HanzoAI::ArrayOf[HanzoAI::Models::Global::SpendListTagsResponseItem])
    end
  end

  def test_reset
    response = @hanzo.global.spend.reset

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_retrieve_report
    response = @hanzo.global.spend.retrieve_report

    assert_pattern do
      response => ^(HanzoAI::ArrayOf[HanzoAI::Models::Global::SpendRetrieveReportResponseItem])
    end
  end
end
