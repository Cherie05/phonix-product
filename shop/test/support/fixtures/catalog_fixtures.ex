defmodule Shop.CatalogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Shop.Catalog` context.
  """

  @doc """
  Generate a product.
  """
  def product_fixture(attrs \\ %{}) do
    {:ok, product} =
      attrs
      |> Enum.into(%{
        image_url: "some image_url",
        name: "some name",
        price: "120.5",
        sku: "some sku"
      })
      |> Shop.Catalog.create_product()

    product
  end
end
