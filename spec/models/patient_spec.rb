require 'rails_helper'

RSpec.describe Patient, type: :model do
  describe "test patient seed" do
    it "is valid with a firstname, lastname and status" do
      patient = Patient.new(
        first_name: "Jack",
        middle_name: "Martain",
        last_name: "Green",
        birthday: "1991-09-16",
        gender: "male",
        status: "treatment")
        expect(patient).to be_valid
    end
  end
end
