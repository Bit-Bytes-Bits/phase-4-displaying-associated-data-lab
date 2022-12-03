class ItemsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

def index
    item = Item.all
    render json:item, include: :user
end
end
