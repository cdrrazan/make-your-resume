class CvmsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cvm=Cvm.all
  end

  def create
    @cvm=Cvm.new(cvm_params)
    if @cvm.save
      flash[:success] = "Your CV has been successfully submitted!"
      redirect_to cvm_path(@cvm)
    else
      flash[:alert] = "Woops! Looks like there has been an error!"
      redirect_to root_path
    end
  end

  def new
  end

  def edit
    @cvm=Cvm.find(params[:id])
  end

  def show
    @cvm=Cvm.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf do
      render pdf: "resume_#{@cvm.name}",
            type: "application/pdf",
            template: "cvms/resume.html.erb",
            disposition: "inline",
            layout: "pdf.html"
       end
    end
  end

  def update
    @cvm=Cvm.find(params[:id])
      if @cvm.update(params[:id])
        flash[:success] = "CV has been updated!"
        redirect_to root_path
      else
        redirect_to edit_cvm_path(cvm)
      end
  end

  def destroy
    @cvm = cvm.find(params[:id])
    @cvm.destroy
    flash[:success] = "CV was successfully deleted!"
    redirect_to root_path
  end

  private
    def cvm_params
      params.require(:cvm).permit(:name, :address, :phone, :email, :website,:skill, :project, :interest)
    end
  end
