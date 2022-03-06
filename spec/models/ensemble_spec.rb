require 'rails_helper'

RSpec.describe Ensemble, :type => :model do
  let(:school) { School.create(name: "test")}
  subject {
    described_class.new(
      name: "Test Ensemble Name",
      school_id: school.id
    )
  }
 
  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do 
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
  
  describe "Associations" do 
    it { should belong_to(:school) }
  end
 
end

