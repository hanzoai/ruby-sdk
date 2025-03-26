# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Threads::MessagesTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.threads.messages.create("thread_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_list
    response = @hanzo.threads.messages.list("thread_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
