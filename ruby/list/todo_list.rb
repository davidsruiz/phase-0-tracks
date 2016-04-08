class TodoList
  def initialize(array)
    @list = array
  end

  def get_items
    @list
  end

  def add_item(string)
    @list << string
  end

  def delete_item(string)
    @list.delete(string)
  end

  def get_item(integer)
    @list[integer]
  end
end