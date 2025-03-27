# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::ThreadsTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.threads.create

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve
    response = @hanzo.threads.retrieve("thread_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
