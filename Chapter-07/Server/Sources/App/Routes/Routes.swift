import Vapor

extension Droplet {
  func setupRoutes() throws {
    get() { req in
      Response(redirect: "/shopping_lists")
    }
    resource("shopping_lists", ShoppingListController(view))
    resource("items", ItemController(view))
  }
}
