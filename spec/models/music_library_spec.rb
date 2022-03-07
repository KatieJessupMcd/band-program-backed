require 'rails_helper'

RSpec.describe MusicLibrary, :type => :model do
  let(:school) { School.create(name: "test")}

  subject {
    described_class.new(
      title: "Test Title",
      category: "Tothepast",
      difficulty: 4,
      composer: "composer", 
      arranger: "arranger", 
      publisher: "publisher", 
      genre: "string", 
      is_hard_copy: true, 
      is_digital: false,
      is_out_of_print: false, 
      purchase_price: 100.50,
      acquisition_date: Date.today,
      serial_number: 12345,
      school_id: school.id

    )
  }

  describe "Validations" do 
    it "is valid with valid attributes" do 
      expect(subject).to be_valid
    end
  end

  describe "Associations" do 
    it { should belong_to(:school) }
  end
end