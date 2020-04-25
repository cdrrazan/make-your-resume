# frozen_string_literal: true

class ResumesController < ApplicationController
  before_action :authenticate_user!

  def index
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    @resume.user = current_user
    if @resume.save
      flash[:success] = 'Your CV has been successfully submitted!'
      redirect_to resume_path(@resume)
    else
      flash[:alert] = 'Woops! Looks like there has been an error!'
      redirect_to root_path
    end
  end

  def new
    @resume = Resume.new
  end

  def show
    if current_user.resume.nil?
      redirect_to new_resume_path
    else
      @resume = current_user.resume
      respond_to do |format|
        format.html
        format.json
        format.pdf do
          render pdf: "resume_#{@resume.fname}",
                 type: 'application/pdf',
                 template: 'resumes/resume.html.erb',
                 disposition: 'inline',
                 layout: 'pdf.html'
        end
      end
    end
  end

  def edit
    @resume = Resume.find(params[:id])
  end

  def update
    @resume = Resume.find(params[:id])
    if @resume.update(resume_params)
      flash[:success] = 'CV has been updated!'
      redirect_to resume_path(@resume)
    else
      redirect_to edit_resume_path
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    flash[:success] = 'CV was successfully deleted!'
    redirect_to root_path
  end

  private

  def resume_params
    params.require(:resume).permit(:email, :website, :skill, :interest, :fname, :mname, :lname, :street,
                                   :district, :land, :country, :mobile,
                                   educations_attributes: %i[
                                     id level institute year percentage _destroy
                                   ],

                                   experiences_attributes: [
                                     :id, :company, :position, :jobdetail, :startdate, :enddate, :_destroy,

                                     projects_attributes: %i[
                                       id pname description startdate enddate _destroy
                                     ]

                                   ])
  end
end
