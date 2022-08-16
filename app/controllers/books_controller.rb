class BooksController < ApplicationController
  def index
   @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
   @book = Book.find(params[:id])
  end


  def create
    @book = Book.new
    if  @book.save
     redirect_to book_path(@book.id)
    else
      render :index
    end
  end

end

private
 def book_params
  params.permit(:body, :title)
 end
