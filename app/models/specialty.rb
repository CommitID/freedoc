class Specialty < ApplicationRecord
  has_many :specialties, through: :join_doctors_specialties
end
