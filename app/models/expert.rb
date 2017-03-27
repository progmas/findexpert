class Expert < ApplicationRecord
  belongs_to :city
  belongs_to :university
  belongs_to :expertise
  belongs_to :title
end
