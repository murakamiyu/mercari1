class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :purchase_pre_confirmation]

  def index
    @ladies = Item.limit(4).order("created_at DESC")
    @mens = Item.limit(4)
    @cosmes = Item.limit(4)
    @babies = Item.limit(4)
    @chanels = Item.limit(4)
    @supremes = Item.limit(4)
    @nikes = Item.limit(4)
  end

  def show
    @images = @item.images
  end

  def new
    @item = Item.new
    4.times { @item.images.build }
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to :root
    else
      redirect_to ({ action: new }), alert: '商品の登録はできませんでした。'
    end
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params) 
  end

  private

  def item_params
    params.require(:item).permit(
      :name,
      :text,
      :price,
      :seller_id,
      :buyer_id,
      images_attributes: [:image]
    )
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
