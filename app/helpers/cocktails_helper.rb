module CocktailsHelper
  def cocktail_photo_path(cocktail)
    if cocktail.photo?
      cocktail.photo.path
    else
      "squccvli7ttfx3fa4jnm"
    end
  end
end
