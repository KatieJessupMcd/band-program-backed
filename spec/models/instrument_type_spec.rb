require 'rails_helper'

RSpec.describe InstrumentType, :type => :model do
  let(:school) { School.create(name: "test")}

  subject {
    described_class.new(
      name: "clarinet"
    )
  }

  describe "Validations" do 
    it "is valid with valid attributes" do 
      expect(subject).to be_valid
    end
  end

  describe "Associations" do 
    it { should have_many(:students) }
  end
end