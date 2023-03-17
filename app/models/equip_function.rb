class EquipFunction < ApplicationRecord
  belongs_to :thing
  has_many :functional_failures
end
