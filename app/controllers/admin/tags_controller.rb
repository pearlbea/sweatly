class Admin::TagsController < ApplicationController
  layout "admin"

  def index
    @tags = Tag.all
  end

  def new
    @tags = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to admin_tags_path
    else
      render 'new'
    end
  end

  def show
    @tag = Tag.find(params[:id])
  end

  private

  def tag_params
    params.require(:tag).permit(:tag)
  end

end
