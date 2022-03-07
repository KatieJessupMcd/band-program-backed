require 'rails_helper'

RSpec.describe InstrumentFamily, :type => :model do
  subject {
    described_class.new(
      name: "woodwind"
    )
  }

  describe "Validations" do 
    it "is valid with valid attributes" do 
      expect(subject).to be_valid
    end
  end

  describe "Associations" do 
    it { should have_many(:instrument_types) }
  end
end