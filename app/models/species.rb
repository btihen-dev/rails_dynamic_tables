class Species < ApplicationRecord
  normalizes :species_name, with: ->(value) { value.strip }
end
