# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Threads::MessagesTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.threads.messages.create("thread_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_list
    response = @hanzo.threads.messages.list("thread_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
