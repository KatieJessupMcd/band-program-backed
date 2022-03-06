require 'rails_helper'

RSpec.describe Student, :type => :model do
  let(:school) { School.create(name: "test")}

  subject {
    described_class.new(
      first_name: "Link",
      last_name: "Tothepast",
      school_id: school.id
    )
  }

  describe "Validations" do 
    it "is valid with valid attributes" do 
      expect(subject).to be_valid
    end

    it "is not valid without a first name" do
      subject.first_name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a last name" do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a grade" do
      subject.grade = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do 
    it { should belong_to(:school) }
  end
end