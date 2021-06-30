defmodule GetmoreApiWeb.ProductView do
  use GetmoreApiWeb, :view
  alias GetmoreApiWeb.ProductView

  def render("index.json", %{products: products}) do
    %{data: render_many(products, ProductView, "product.json")}
  end

  def render("show.json", %{product: product}) do
    %{data: render_one(product, ProductView, "product.json")}
  end

  def render("product.json", %{product: product}) do
    %{id: product.id,
      product_id: product.product_id,
      product_category: product.product_category,
      product_name: product.product_name,
      product_image: product.product_image,
      product_stock: product.product_stock,
      product_price: product.product_price}
  end
end
