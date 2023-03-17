class Thing < ApplicationRecord
  # validates :parent_id, numericality: {allow_blank: true}
  has_many :equip_functions
  has_many :failure_modes
  has_many :components, class_name: 'Thing', foreign_key: :parent_id
  belongs_to :parent, class_name: 'Thing', foreign_key: :parent_id

  # def tree_data
  #   output = []
  #   Thing.first do |emp|
  #     output << data(emp)
  #   end
  #   output.to_json
  # end

end
