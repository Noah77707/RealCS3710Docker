require "test_helper"

class StudentTest < ActiveSupport::TestCase
  test "should raise error when saving student without first name" do
    assert_raises ActiveRecord::RecordInvalid do
      Student.create!(last_name: "Hoepfinger", school_email: "Eebu.wabu@msudenver.edu", major: "CS", minor: "MTH")
    end
  end

  test "Should not allow duplicate school emails" do
    students = students(:one)

    assert_raises ActiveRecord::RecordInvalid do
      Student.create!(first_name: "Please", last_name: "Dontwork", school_email: "wungy.wabu@msudenver.edu", major: "Major", minor: "Minor")
    end
  end
end
