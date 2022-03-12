require 'rails_helper'

module Mutations
  module Students
    RSpec.describe CreateStudent, type: :request do
      let(:school) { School.create(id: 1, name: "test")}
      let(:instrument_family) { InstrumentFamily.create(name: "brass")}
      let(:instrument_type) { InstrumentType.create(name: "trumpet", instrument_family_id: instrument_family.id) }

      subject {
        described_class.new(
          object: {}, 
          field: {
            first_name: "Link",
            last_name: "Tothepast",
            grade: 4,
            school_id: school.id,
            instrument_type_id: instrument_type.id
          }, 
          context: nil
        )
      }

      describe '.resolve' do
        it 'creates a student' do
          expect do
            post '/graphql', params: { query: query(input: subject) }
          end.to change { Student.count }.by(1)
        end
      end

      def query(input)
        <<~GQL
          mutation {
            createStudent(input: {
              firstName:"Bob", 
              lastName: "Iger",
              grade: 6, 
              instrumentTypeId: 1, 
              schoolId: 1 
             }
           ) {
          student {
            firstName
            lastName
            grade
           }
         }
        }
        GQL
      end
    end
  end
end