class PracticeBlogsController < ApplicationController
  before_action :set_practice_blog, only: [:show, :edit, :update, :destroy]

  def index
    @practice_blogs = PracticeBlog.all
  end

  def show
  end

  def new
    if params[:back]
     @practice_blog = PracticeBlog.new(practice_blog_params)
    else
     @practice_blog = PracticeBlog.new
    end
  end

  def edit
  end

  def confirm
    @practice_blog = PracticeBlog.new(practice_blog_params)
    if @practice_blog.invalid?
      render :new
    end
  end

  def create
    @practice_blog = PracticeBlog.new(practice_blog_params)

    if @practice_blog.save
      redirect_to practice_blogs_path, notice: '投稿しました。'
    else
      render :new
    end
  end

  def update
    if @practice_blog.update(practice_blog_params)
     redirect_to practice_blogs_path,notice:'編集しました。'
    else
     render 'edit' 
    end
  end

  def destroy
    @practice_blog.destroy
    redirect_to practice_blogs_path, notice: '削除しました' 
  end

  private

    def set_practice_blog
      @practice_blog = PracticeBlog.find(params[:id])
    end

    def practice_blog_params
      params.require(:practice_blog).permit(:title, :content)
    end
end
