# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::ModelsTest < Hanzoai::Test::ResourceTest
  def test_list
    response = @hanzo.models.list

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
