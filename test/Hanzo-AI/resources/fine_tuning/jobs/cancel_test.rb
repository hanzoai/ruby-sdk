# frozen_string_literal: true

require_relative "../../../test_helper"

class HanzoAI::Test::Resources::FineTuning::Jobs::CancelTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.fine_tuning.jobs.cancel.create("fine_tuning_job_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
