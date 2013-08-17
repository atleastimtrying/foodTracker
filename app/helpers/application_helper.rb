module ApplicationHelper
  def items_collection_as_options collection
    response = []
    collection.each do |item|
      response << [item.name, item.name, :"data-points" => item.points, :"data-weight" => item.weight]
    end
    response
  end
end
