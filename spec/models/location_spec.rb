require 'rails_helper'

RSpec.describe Location, type: :model do
  describe "test location seed" do
    it "is valid with a code, name and locationable" do
      location = Location.new(
        code: "021120",
        name: "Test location 1",
        locationable_id: 1,
        locationable_type: "Patient")
        expect(location).to be_valid
    end
  end
end
