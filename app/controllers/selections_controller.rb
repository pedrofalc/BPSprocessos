class SelectionsController < ApplicationController  
  before_action :set_selection, only: [:show, :edit, :ranking,:update, :destroy]
  before_action :authenticate_teacher!, only:[:show, :create, :new , :edit, :update, :destroy]

  # GET /selections
  # GET /selections.json
  def index
    @selections = Selection.all
  end
  
  def home
    @selections=Selection.all
  end

  # GET /selections/1
  # GET /selections/1.json
  def show
    @students = @selection.students
  end

  # GET /selections/new
  def new
    @selection = Selection.new
  end

  def ranking
     @students = @selection.students
  end

  # GET /selections/1/edit
  def edit
  end

  # POST /selections
  # POST /selections.json
  def create
    @selection = Selection.new(selection_params)
    @selection.owner = current_teacher.id
    
    respond_to do |format|
      if @selection.save
        format.html { redirect_to selections_path , notice: 'Selection was successfully created.' }
        format.json { render :show, status: :created, location: @selection }
      else
        format.html { render :new }
        format.json { render json: @selection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selections/1
  # PATCH/PUT /selections/1.json
  def update
      if @selection.owner == current_teacher.id
    respond_to do |format|
      if @selection.update(selection_params)
        format.html { redirect_to selections_path, notice: 'Selection was successfully updated.' }
        format.json { render :show, status: :ok, location: @selection }
      else
        format.html { render :edit }
        format.json { render json: @selection.errors, status: :unprocessable_entity }
      end
    end
    else
        redirect_to selections_url, notice: 'Você não é proprietário desse processo!'
      end

  end
  
  # DELETE /selections/1
  # DELETE /selections/1.json
  def destroy
    if @selection.owner == current_teacher.id
    @selection.destroy
    respond_to do |format|
      format.html { redirect_to selections_path, notice: 'Selection was successfully destroyed.' }
      format.json { head :no_content }
    end
       else
        redirect_to selections_url, notice: 'Você não é proprietário desse processo!'
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selection
      @selection = Selection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selection_params
      params.require(:selection).permit(:name,:description,:end, :notice )
    end
end
