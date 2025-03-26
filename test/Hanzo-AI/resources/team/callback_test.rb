# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Team::CallbackTest < HanzoAI::Test::ResourceTest
  def test_retrieve
    response = @hanzo.team.callback.retrieve("team_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_add_required_params
    response =
      @hanzo.team.callback.add("team_id", callback_name: "callback_name", callback_vars: {foo: "string"})

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
