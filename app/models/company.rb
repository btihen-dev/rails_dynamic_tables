class Company < ApplicationRecord
  has_many :jobs, dependent: :destroy
  has_many :person_jobs, through: :jobs
  has_many :people, through: :person_jobs

  normalizes :company_name,  with: ->(value) { value.strip }
end
