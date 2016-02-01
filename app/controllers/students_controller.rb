class StudentsController < ApplicationController
  before_action :set_selection

  # GET /students
  # GET /students.json
  def index
    @students = @selection.students
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = @selection.students.new
  end 

  # GET /students/1/edit
  def edit      
    @student = @selection.students.find(params[:id])
  end

  def evaluation
      @student=@selection.students.find(params[:id])
  end
   # POST /students
  # POST /students.json
  def create
    @student = @selection.students.new(student_params)

    respond_to do |format|
      if  @selection.save
        format.html { redirect_to root_path, notice: 'Inscrição Realizada com sucesso!' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    @student = @selection.students.find(params[:id])

    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to selection_path , notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selection
      @selection=Selection.find(params[:selection_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
  params.require(:student).permit(:name,:email,:resume,:history,:nota1, :nota2, :nota3)
    end
 
end