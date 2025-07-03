# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Shop.Repo.insert!(%Shop.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Shop.Repo
alias Shop.Catalog.Product

Repo.insert!(%Product{
  name: "Long Chair",
  sku: "23432252",
  price: Decimal.new("25.99"),
  image_url: "index.jpg"
})

Repo.insert!(%Product{
  name: "Cozy Sofa",
  sku: "23432253",
  price: Decimal.new("129.50"),
  image_url: "index.jpg"
})

Repo.insert!(%Product{
  name: "Modern Lamp",
  sku: "23432254",
  price: Decimal.new("45.00"),
  image_url: "index.jpg"
})
