class BooksController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(book_params)
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :image, :text)
  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
