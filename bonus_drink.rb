class BonusDrink
  def self.total_count_for(amount)
    trade_drink = TradeDrink.new(amount)
    trade_drink.show
  end
end

class TradeDrink
  TRADABLE_BOTTLE = 3

  def initialize(amount)
    raise StandardError unless amount.is_a?(Integer)
    raise StandardError if amount < 0
    @drinkable_bottle = amount
    @empty_bottle = 0
    @drinked = 0
    drink
    solve
  end

  def show
  	drink
  	@drinked
  end

private

  def solve
    while @empty_bottle >= TRADABLE_BOTTLE
      trade
      drink
    end
  end

  def trade
    tradable = @empty_bottle / TRADABLE_BOTTLE
    @drinkable_bottle += tradable
    @empty_bottle -= tradable * TRADABLE_BOTTLE
  end

  def drink
    @empty_bottle += @drinkable_bottle
    @drinked += @drinkable_bottle
    @drinkable_bottle = 0
  end
end
