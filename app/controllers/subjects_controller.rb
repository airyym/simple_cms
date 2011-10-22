class SubjectsController < ApplicationController
  
  def index
    list
    render('list')
  end
  
  def list
    @subjects = Subject.order("subjects.position ASC")
  end
  
  def show
    @subject = Subject.find_by_id(params[:id])
  end
  
  def new
    @subject = Subject.new(:name => "default")
  end
  
  def create
    @subject = Subject.new(params[:subject])
    if @subject.save
      redirect_to(:action => 'list')
    else
      render('new')
    end
  end
  
end
