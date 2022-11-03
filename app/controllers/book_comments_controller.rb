class BookCommentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(book_comment_params)
    comment.book_id = @book.id
    comment.save
    # render :create
  end

  def destroy
    # refroute = Rails.application.routes.recognize_path(request.referrer)
    # @book = Book.find(params[:book_id])
    # @BookComment.find(params[:id]).destroy
    # @comment = BookComment.find_by(book_id: @book.id])
    @comment = BookComment.find(params[:id]).
    @comment.destroy
    # render :destroy
  end

  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end

end
