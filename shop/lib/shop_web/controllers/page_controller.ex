defmodule ShopWeb.PageController do
  use ShopWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def index(conn, _params) do
    # Render the index page with the default layout
    render(conn, :index , layout: false)
  end

  def products(conn, _params) do
    products = Shop.Catalog.list_products()
    render(conn, "products.html", products: products, layout: false)
  end
end
