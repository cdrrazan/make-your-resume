class CvmsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cvm=Cvm.new
  end

  def create
    @cvm=Cvm.new(cvm_params)
    @cvm.user=current_user
    if @cvm.save
      flash[:success] = "Your CV has been successfully submitted!"
      redirect_to cvm_path(@cvm)
    else
      flash[:alert] = "Woops! Looks like there has been an error!"
      redirect_to root_path
    end
  end

  def new
    @cvm=Cvm.new
  end

  def show
    @cvm=current_user.cvm
    respond_to do |format|
      format.html
      format.json
      format.pdf do
      render pdf: "resume_#{@cvm.fname}",
            type: "application/pdf",
            template: "cvms/resume.html.erb",
            disposition: "inline",
            layout: "pdf.html"
       end
    end
  end

  def edit
    @cvm=Cvm.find(params[:id])
  end

  def update
    @cvm=Cvm.find(params[:id])
      if @cvm.update(cvm_params)
        flash[:success] = "CV has been updated!"
        redirect_to cvm_path(@cvm)
      else
        redirect_to edit_cvm_path(cvm)
      end
  end

  def destroy
    @cvm = Cvm.find(params[:id])
    @cvm.destroy
    flash[:success] = "CV was successfully deleted!"
    redirect_to root_path
  end


  private
    def cvm_params
      params.require(:cvm).permit(:email, :website, :skill, :interest, :fname, :mname, :lname, :street,
                                  :district, :land, :country, :mobile,
                                  educations_attributes: [:id, :level, :institute, :year, :percentage, :_destroy],
                                  experiences_attributes: [:id, :company, :position, :jobdetail, :startdate, :enddate, :_destroy ,projects_attributes: [:id, :pname, :description, :startdate, :enddate, :_destroy] ])
    end
end
