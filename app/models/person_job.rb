class PersonJob < ApplicationRecord
  belongs_to :character
  belongs_to :job

  has_one :company, through: :job
end
