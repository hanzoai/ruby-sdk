# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::ThreadsTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.threads.create

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_retrieve
    response = @hanzo.threads.retrieve("thread_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
