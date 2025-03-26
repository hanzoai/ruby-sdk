# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::AssistantsTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.assistants.create

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_list
    response = @hanzo.assistants.list

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_delete
    response = @hanzo.assistants.delete("assistant_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
