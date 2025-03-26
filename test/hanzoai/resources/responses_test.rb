# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::ResponsesTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.responses.create

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve
    response = @hanzo.responses.retrieve("response_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_delete
    response = @hanzo.responses.delete("response_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
