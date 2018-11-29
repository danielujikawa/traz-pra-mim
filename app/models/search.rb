class Search < ApplicationRecord

  def search_routes
    routes = Route.all

    routes = routes.where(["type LIKE ?", type]) if category.present?
    routes = routes.where(["origin ILIKE ?", origin]) if origin.present?
    routes = routes.where(["destination ILIKE ?", destination]) if destination.present?
    routes = routes.where(["date ILIKE ?", date]) if date.present?

    return searches

end
