class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :ensure_correct_user, only: [:edit, :update]




  def index
    @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
  
  end

  def create
    @item = current_user.items.build(item_params)
    tag_list = params[:item][:tag_ids].split(',')
    if @item.save
      @item.save_tags(tag_list)
      redirect_to root_path
    else
      render 'new'
    end
  end


  def show
  end

  def edit
  end

  def update
    @item = Item.find(params[:id])
    tag_list = params[:item][:tag_ids].split(',')
    if @item.update_attributes(item_params)
      @item.save_tags(tag_list)
      redirect_to @item
    else
    render 'edit'
    end
  end

  def destroy
    if current_user.id == @item.user_id
      @item.destroy
      redirect_to root_path
    else
      redirect :show
    end
  end

  private

  def item_params
    params.require(:item).permit(:category_id, :type_id, :image,{ tag_ids: [] }).merge(user_id: current_user.id)
  end


  def set_product
    @item = Item.find(params[:id])
  end

  def ensure_correct_user
    redirect_to root_path unless @item.user.id == current_user.id
  end
 
end


