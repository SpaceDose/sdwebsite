class ShopController < ApplicationController

    def inventory
    end

    def buy
      @itemname = params[:item]
      @itemcost = params[:cost].to_i
      @maximum = params[:maximum].to_i

      @useritems = InventoryItem.where(uniqueid: current_user.uniqueid).all
      @useritem = @useritems.where(item: @itemname).first

      @userpoi = Point.where(uniqueid: current_user.uniqueid).first

      if @userpoi.currency > @itemcost

        if @useritem == nil
          # Create UserItem
          @item = InventoryItem.new
          @item.uniqueid = current_user.uniqueid
          @item.item = @itemname
          @item.quantity = 0
          @useritem = @item
        end

        if @maximum == 0 || @useritem.quantity < @maximum
          @userpoi.currency = @userpoi.currency - @itemcost
          @useritem.quantity = @useritem.quantity + 1
          @userpoi.save
          @useritem.save
          flash[:warning] = "Item successfully bought!"
        else
          flash[:warning] = "Already got the maximum amount of that item in your inventory!"
        end

      else
          flash[:warning] = "You don't have enough POI!"
      end
      redirect_to shop_path
    end

end
