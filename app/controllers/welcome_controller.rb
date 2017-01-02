class WelcomeController < ApplicationController
  def index

  end

  def center
    @users = User.all
  end

  def addScrumMaster
    @user = User.find(params[:user])
    @user.add_role "ScrumMaster"

    respond_to do |format|
      if @user.save
        format.html { redirect_to action: "center", notice: 'Role was successfully added.' }
      else
        format.html { redirect_to action: "center", alert: 'Failed to add the role.' }
      end
    end
  end

  def addProductOwner
    @user = User.find(params[:user])
    @user.add_role "ProductOwner"

    respond_to do |format|
      if @user.save
        format.html { redirect_to action: "center", notice: 'Role was successfully added.' }
      else
        format.html { redirect_to action: "center", alert: 'Failed to add the role.' }
      end
    end
  end

  def addTeamMember
    @user = User.find(params[:user])
    @user.add_role "TeamMember"

    respond_to do |format|
      if @user.save
        format.html { redirect_to action: "center", notice: 'Role was successfully added.' }
      else
        format.html { redirect_to action: "center", alert: 'Failed to add the role.' }
      end
    end
  end
end
