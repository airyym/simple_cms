class DemoController < ApplicationController
  def index
  end

  def hello
    @id = params[:id]
    @page = params[:page].to_i
  end
end
 