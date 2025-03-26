# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Team::ModelTest < HanzoAI::Test::ResourceTest
  def test_add_required_params
    response = @hanzo.team.model.add(models: ["string"], team_id: "team_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_remove_required_params
    response = @hanzo.team.model.remove(models: ["string"], team_id: "team_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
