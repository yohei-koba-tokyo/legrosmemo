class MemosController < ApplicationController


  def index
    @memos = Memo.all.order("created_at DESC").includes(:user)
  end

  def new
    @memo = Memo.new
    @memos = Memo.all.order("created_at DESC").includes(:user)
  end

  def create
    memo = Memo.create(memo_params)
    redirect_to root_path
  end

  def show
    @memo = Memo.find(params[:id])
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    memo.update(memo_params)
    redirect_to edit_memo_path
  end

  def destroy
    tweet = Memo.find(params[:id])
    tweet.destroy
    redirect_to root_path
  end

private
  def memo_params
    params.require(:memo).permit(:content, :rate).merge(user_id: current_user.id)
  end



end
