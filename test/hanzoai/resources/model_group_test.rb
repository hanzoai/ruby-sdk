# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::ModelGroupTest < Hanzoai::Test::ResourceTest
  def test_retrieve_info
    response = @hanzo.model_group.retrieve_info

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
