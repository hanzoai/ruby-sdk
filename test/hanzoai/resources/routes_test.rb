# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::RoutesTest < Hanzoai::Test::ResourceTest
  def test_list
    response = @hanzo.routes.list

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
