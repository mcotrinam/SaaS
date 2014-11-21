class Dessert
  def initialize(name, calories)
    @name = name 
    @calories = calories
  end
  def name=(value)
      @name = value
  end
  def name
      @name
  end
  def calories=(value)
      @calories = value
  end
  def calories
      @calories
  end
  
  def healthy?
    @calories < 200?true:false
  end
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = flavor + " jelly bean"
  end
  def flavor=(value)
      @flavor = value
  end
  def flavor
      @flavor
  end
  def delicious?
    @flavor == "licorice"?false:true
  end
end

#nuevo = Dessert.new('apple', 75)
#puts nuevo.healthy?

#puts JellyBean.new('licorice').delicious?


