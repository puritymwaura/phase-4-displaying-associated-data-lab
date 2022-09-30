class ItemsController < ApplicationController
    def index
		item = Item.all.includes([:user])
		render json: item, include: :user
    end
end
