module ApplicationHelper
  def font_awesome_from_category(category)
    case category.name
    when "automotive"
      "fa-car"
    when "food"
      "fa-cutlery"
    when "facebook"
      "fa-facebook-official"
    when "messaging"
      "fa-commenting-o"
    when "home"
      "fa-home"
    when "email"
      "a-envelope-o"
    when "finance"
      "fa-money"
    when "music"
      "fa-music"
    else
      "fa-check-circle-o"
    end
  end
end
