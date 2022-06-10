class ListsController < ApplicationController

  def new
    @list = List.new
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end
  
  def index
  end

  def show
  end

  def edit
  end
  
  
  private 
  #priveteより下に書くことでメソッドに制限をかけることができる
 
  def list_params　　#privateメソッドの名前は、「モデル名_params」とすることが多い
    params.require(:list).permit(:title, :body)
  end
end
