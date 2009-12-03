class DormAccountsController < ApplicationController
  layout 'admin_edit'

  # GET /dorm_accounts
  # GET /dorm_accounts.xml
  def index
    @last_five_presses = Press.find(:all, :limit => 5, :order => "created_at DESC")

    @dorm_accounts = DormAccount.all

    render :layout => 'application'
  end

  # GET /dorm_accounts/1
  # GET /dorm_accounts/1.xml
  def show
    @last_five_presses = Press.find(:all, :limit => 5, :order => "created_at DESC")

    @dorm_account = DormAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dorm_account }
    end
  end

  # GET /dorm_accounts/new
  # GET /dorm_accounts/new.xml
  def new
    @dorm_account = DormAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dorm_account }
    end
  end

  # GET /dorm_accounts/1/edit
  def edit
    @dorm_account = DormAccount.find(params[:id])
  end

  # POST /dorm_accounts
  # POST /dorm_accounts.xml
  def create
    @dorm_account = DormAccount.new(params[:dorm_account])

    respond_to do |format|
      if @dorm_account.save
        flash[:notice] = 'DormAccount was successfully created.'
        format.html { redirect_to(@dorm_account) }
        format.xml  { render :xml => @dorm_account, :status => :created, :location => @dorm_account }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dorm_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dorm_accounts/1
  # PUT /dorm_accounts/1.xml
  def update
    @dorm_account = DormAccount.find(params[:id])

    respond_to do |format|
      if @dorm_account.update_attributes(params[:dorm_account])
        flash[:notice] = 'DormAccount was successfully updated.'
        format.html { redirect_to(@dorm_account) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dorm_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dorm_accounts/1
  # DELETE /dorm_accounts/1.xml
  def destroy
    @dorm_account = DormAccount.find(params[:id])
    @dorm_account.destroy

    respond_to do |format|
      format.html { redirect_to(dorm_accounts_url) }
      format.xml  { head :ok }
    end
  end
end

