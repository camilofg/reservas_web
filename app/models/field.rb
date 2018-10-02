class Field < ApplicationRecord
    belongs_to :place
    default_scope -> { order(number: :asc) }
    validates :size, :presence => true,
                     :numericality => { :greater_than => 4, :less_than => 12 }
end
