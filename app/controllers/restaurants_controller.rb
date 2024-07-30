class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new # Needed to instantiate the form_with
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # No need for app/views/restaurants/create.html.erb
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    # No need for app/views/restaurants/update.html.erb
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to restaurants_path, status: :see_other #L'utilisation de status: :see_other est généralement recommandée pour les redirections après des opérations qui modifient les données (POST, DELETE) afin de garantir une gestion correcte des redirections et éviter des problèmes comme la re-soumission de formulaires.
  end


  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
