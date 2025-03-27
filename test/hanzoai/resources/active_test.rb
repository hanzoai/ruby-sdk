# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::ActiveTest < Hanzoai::Test::ResourceTest
  def test_list_callbacks
    response = @hanzo.active.list_callbacks

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
