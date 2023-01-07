class FavoritesController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: @book.id)
    favorite.save
    # いいねを押す前の画面に戻る
    #redirect_to request.referer
    #非同期化のためにコメントアウト
  end

  def destroy
    @book = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: @book.id)
    favorite.destroy
    #redirect_to request.referer
    #非同期化のためにコメントアウト
  end

end
