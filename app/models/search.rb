class Search < ActiveRecord::Base
  attr_accessible :search_id

  def facebook_page_contents(input)
    HTTParty.get("https://graph.facebook.com/#{input}?fields=feed&limit=1&access_token=AAADFZAIL8xY8BAHp4AJCDQLQpyWuOypnZCrNmLuPn5BgEBRqKw3P46ayW1JQE6zeVrntE95GDZAr7etd5PO3MWr3JqlBnAZD")
  end
  
end
