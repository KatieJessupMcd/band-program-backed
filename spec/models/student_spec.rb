require 'rails_helper'

RSpec.describe Student, :type => :model do
  subject {
    described_class.new(
      first_name: "Link"
      last_name: "Tothepast"
    )
  }
  it "is valid with valid attributes" 

  it "is not valid without a first name"
end