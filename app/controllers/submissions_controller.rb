class SubmissionsController < ApplicationController
  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)

    respond_to do |format|
      if @submission.save
        format.html { redirect_to new_submission_path, notice: 'Your slogan was successfully added into our database.' }
      else
        format.html { render 'new' }
      end
    end
  end

  private

  def submission_params
    params.require(:submission).permit(:first_name, :last_name, :email, :slogan)
  end
end
