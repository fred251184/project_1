class MsGendersController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_ms_gender, only: [:show, :edit, :update, :destroy]

  # GET /ms_genders
  # GET /ms_genders.json
  def index
    @ms_genders = MsGender.all
  end

  # GET /ms_genders/1
  # GET /ms_genders/1.json
  def show
  end

  # GET /ms_genders/new
  def new
    @ms_gender = MsGender.new
  end

  # GET /ms_genders/1/edit
  def edit
  end

  # POST /ms_genders
  # POST /ms_genders.json
  def create
    @ms_gender = MsGender.new(ms_gender_params)

    respond_to do |format|
      if @ms_gender.save
        format.html { redirect_to @ms_gender, notice: 'Ms gender was successfully created.' }
        format.json { render :show, status: :created, location: @ms_gender }
      else
        format.html { render :new }
        format.json { render json: @ms_gender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ms_genders/1
  # PATCH/PUT /ms_genders/1.json
  def update
    respond_to do |format|
      if @ms_gender.update(ms_gender_params)
        format.html { redirect_to @ms_gender, notice: 'Ms gender was successfully updated.' }
        format.json { render :show, status: :ok, location: @ms_gender }
      else
        format.html { render :edit }
        format.json { render json: @ms_gender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ms_genders/1
  # DELETE /ms_genders/1.json
  def destroy
    @ms_gender.destroy
    respond_to do |format|
      format.html { redirect_to ms_genders_url, notice: 'Ms gender was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ms_gender
      @ms_gender = MsGender.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ms_gender_params
      params.require(:ms_gender).permit(:name, :is_active, :user_id)
    end
end
