require 'rails_helper'

RSpec.describe InstrumentInventoryItem, :type => :model do
  let(:school) { School.create(name: "test")}
  let(:instrument_family) { InstrumentFamily.create(name: "woodwind")}
  let(:instrument_type) { InstrumentType.create(name: "clarinet", instrument_family_id: instrument_family.id)}

  subject {
    described_class.new(
      condition: 2,
      date_bought: Date.today,
      serial_number: 12345,
      brand: "Yamaha", 
      model: "student", 
      estimated_value: 500.50, 
      school_id: school.id,
      instrument_type_id: instrument_type.id
    )
  }

  describe "Validations" do 
    it "is valid with valid attributes" do 
      expect(subject).to be_valid
    end
  end

  describe "Associations" do 
    it { should belong_to(:school) }
    it { should belong_to(:instrument_type) }
  end
end