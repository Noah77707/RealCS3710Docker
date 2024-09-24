require "test_helper"

class StudentTest < ActiveSupport::TestCase
  test "should raise error when saving student without first name" do
    assert_raises ActiveRecord::RecordInvalid do
      Student.create!(last_name: "Hoepfinger", school_email: "Eebu.wabu@msudenver.edu", major: "CS", minor: "MTH")
    end
  end
end
