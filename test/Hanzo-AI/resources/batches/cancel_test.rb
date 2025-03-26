# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Batches::CancelTest < HanzoAI::Test::ResourceTest
  def test_cancel
    response = @hanzo.batches.cancel.cancel("batch_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
