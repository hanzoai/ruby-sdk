# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Threads::RunsTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.threads.runs.create("thread_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
