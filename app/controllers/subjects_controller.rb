class SubjectsController < ApplicationController
  def index
    @subjects = Subject.order("position ASC")
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end                   

  def create
    @subject = Subject.new(subject_paramstt)

    if @subject.save
      redirect_to(subjects_path)
    else
      render("new")
    end



  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])

    if @subject.update(subject_paramstt)
      redirect_to(subject_path(@subject))
    else
      render("edit")
    end

  end

  def delete
  end

  def destroy
  end

  private

    def subject_paramstt
      params.require(:subject).permit(:name, :visible, :position)
    end

end