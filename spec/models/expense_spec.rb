require 'rails_helper'

RSpec.describe Expense, type: :model do
  before :each do
    @user = User.new(name: 'rashid', email: 'rashid@gmail.com', password: 'password')

    @entity = Expense.new(name: 'entity', user_id: @user.id, amount: 100)
  end

  it 'name should be present' do
    @entity.name = ' '
    expect(@entity).not_to be_valid
  end

  it 'amount should be present' do
    @entity.amount = ''
    expect(@entity).not_to be_valid
  end
 
end
