# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Batches::CancelTest < Hanzoai::Test::ResourceTest
  def test_cancel
    response = @hanzo.batches.cancel.cancel("batch_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
