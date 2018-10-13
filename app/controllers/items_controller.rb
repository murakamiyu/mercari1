class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :purchase_pre_confirmation]

  def index
    @ladies = Item.order("created_at DESC").limit(4)
    @mens = Item.order("created_at DESC").limit(4)
    @cosmes = Item.order("created_at DESC").limit(4)
    @babies = Item.order("created_at DESC").limit(4)
    @chanels = Item.order("created_at DESC").limit(4)
    @supremes = Item.order("created_at DESC").limit(4)
    @nikes = Item.order("created_at DESC").limit(4)
  end

  def show
    @images = @item.images
  end

  def index
    # 以下、Topページでの商品出品を仮置き
    # TdDo：(１)変数名の意味がわかるように修正（２）配列を作成し繰り返し処理で対応
    @item1s = Item.all
    @item2s = Item.limit(4)
    @item3s = Item.limit(4)
    @item4s = Item.limit(4)
    @item5s = Item.limit(4)
    @item6s = Item.limit(4)
    @item7s = Item.limit(4)
  end

  def new
    @item = Item.new
    4.times { @item.images.build }  # 1つのitemにつき最大4つの画像を持たせる
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to :root
    else
      redirect_to ({ action: new }), alert: '出品に失敗しました'
    end
  end

  def show
    @item = Item.find(params[:id])
    @images = @item.images
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
      :condition,
      :shipping_payer,
      :shipping_method,
      :days_to_ship,
      :trading_status,
      :shipping_fee,
      :category_id,
      :brand_id,
      :size_id,
      :area_id,
      :seller_id,
      :buyer_id,
      images_attributes: [:id, :image, :item_id, :_destroy]
    )
  end

  def set_item
    @item = Item.find(params[:id])
  end
end

