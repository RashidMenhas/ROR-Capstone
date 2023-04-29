class Expense < ApplicationRecord
    belongs_to :user
    has_many :group_expenses
    has_many :groups, through: :group_expenses
    validates :name, presence: true, length: { maximum: 40 }
    validates :amount, presence: true, numericality: { greater_than_or_equal: 0 }
end
