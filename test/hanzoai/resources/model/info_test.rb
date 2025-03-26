# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Model::InfoTest < Hanzoai::Test::ResourceTest
  def test_list
    response = @hanzo.model.info.list

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
