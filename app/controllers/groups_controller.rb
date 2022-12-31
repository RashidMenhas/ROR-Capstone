class GroupsController < ApplicationController
  before_action :set_user
  
  def index
    @groups = @user.groups
  end

  def Show
    @groups = @user.groups
    @expenses = []
    @group.group_expenses.order(:id).each do |group_expense|
      @expenses << group_expense.expense
    end
  end

  def new
    @group = Group.new
  end
  
  def create
    @group = Group.new(group_params)
    @group.user = @User
    if @group.save
      redirect_to groups_path
    else
      render :new
    end

    private

    def set_user
      @user = current_user
    end

    def group_params
      params.require(:group).permit(:name, :icon)
    end

  end
end
