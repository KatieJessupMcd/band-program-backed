require 'rails_helper'

RSpec.describe InstrumentType, :type => :model do
  let(:school) { School.create(name: "test")}
  let(:instrument_family) { InstrumentFamily.create(name: "woodwind")}

  subject {
    described_class.new(
      name: "clarinet",
      instrument_family_id: instrument_family.id
    )
  }

  describe "Validations" do 
    it "is valid with valid attributes" do 
      expect(subject).to be_valid
    end
  end

  describe "Associations" do 
    it { should have_many(:students) }
    it { should have_many(:instrument_inventory_items) }
    it { should belong_to(:instrument_family) }
  end
end