class Character < ApplicationRecord
  belongs_to :species

  has_many :person_jobs, dependent: :destroy
  has_many :jobs, through: :person_jobs
  has_many :companies, through: :jobs

  normalizes :first_name, :nick_name, :last_name, :given_name,
             with: ->(value) { value.strip }
end
