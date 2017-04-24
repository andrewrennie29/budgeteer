class ExpenseOwnersController < ApplicationController
  before_action :set_expense_owner, only: [:show, :edit, :update, :destroy]

  # GET /expense_owners
  # GET /expense_owners.json
  def index
    @expense_owners = ExpenseOwner.all
  end

  # GET /expense_owners/1
  # GET /expense_owners/1.json
  def show
  end

  # GET /expense_owners/new
  def new
    @expense_owner = ExpenseOwner.new
  end

  # GET /expense_owners/1/edit
  def edit
  end

  # POST /expense_owners
  # POST /expense_owners.json
  def create
    @expense_owner = ExpenseOwner.new(expense_owner_params)

    respond_to do |format|
      if @expense_owner.save
        format.html { redirect_to @expense_owner, notice: 'Expense owner was successfully created.' }
        format.json { render :show, status: :created, location: @expense_owner }
      else
        format.html { render :new }
        format.json { render json: @expense_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expense_owners/1
  # PATCH/PUT /expense_owners/1.json
  def update
    respond_to do |format|
      if @expense_owner.update(expense_owner_params)
        format.html { redirect_to @expense_owner, notice: 'Expense owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense_owner }
      else
        format.html { render :edit }
        format.json { render json: @expense_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_owners/1
  # DELETE /expense_owners/1.json
  def destroy
    @expense_owner.destroy
    respond_to do |format|
      format.html { redirect_to expense_owners_url, notice: 'Expense owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_owner
      @expense_owner = ExpenseOwner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_owner_params
      params.require(:expense_owner).permit(:name, :allocation)
    end
end
