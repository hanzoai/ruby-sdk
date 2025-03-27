# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Global::SpendTest < Hanzoai::Test::ResourceTest
  def test_list_tags
    response = @hanzo.global.spend.list_tags

    assert_pattern do
      response => ^(Hanzoai::ArrayOf[Hanzoai::Models::Global::SpendListTagsResponseItem])
    end
  end

  def test_reset
    response = @hanzo.global.spend.reset

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve_report
    response = @hanzo.global.spend.retrieve_report

    assert_pattern do
      response => ^(Hanzoai::ArrayOf[Hanzoai::Models::Global::SpendRetrieveReportResponseItem])
    end
  end
end
