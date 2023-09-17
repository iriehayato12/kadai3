class BooksController < ApplicationController
  def new
  @book = Book.new(book_params)
  end

  def index
  @books = Book.all
  @user = User.find(current_user.id)
  @book = Book.new
  end
  
  def edit 
  end 

  def show
  @book = Book.find(params[:id])
  @user = @book.user
  end
  
  def create
  @book = Book.new(book_params)
  @book.user_id = current_user.id
  @book.save
  redirect_to book_path(@book)
  
  end
  
  def destroy
  end
  
  private
  
  def book_params
      params.require(:book).permit(:title, :body)
  end
end
