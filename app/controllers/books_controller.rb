class BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy]
  def index
    # @books = Book.all
    @books = current_user.books
    json_response(@books)
  end

  def create
    @book = current_user.books.create!(book_params)
    json_response(@book, :created)
  end

  def show
    json_response(@book)
  end

  def destroy
    @book.destroy
    head :no_content
  end

  private

  def book_params
    params.permit(:title, :category)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
