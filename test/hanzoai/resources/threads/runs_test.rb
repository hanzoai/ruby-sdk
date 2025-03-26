# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Threads::RunsTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.threads.runs.create("thread_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
