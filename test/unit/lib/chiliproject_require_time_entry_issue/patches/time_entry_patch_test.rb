require File.dirname(__FILE__) + '/../../../../test_helper'

class ChiliprojectRequireTimeEntryIssue::Patches::TimeEntryTest < ActionController::TestCase

  context "TimeEntry" do
    subject { TimeEntry.new }

    should_validate_presence_of :issue_id

  end
end
