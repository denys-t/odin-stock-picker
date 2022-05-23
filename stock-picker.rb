def stock_picker(prices)
  if prices.length < 2
    return "You cannot buy and sell within same day!"
  end

  day1 = 0
  day2 = 0
  diff = 0

  for i in 0..(prices.length - 2) do
    for j in (i+1)..(prices.length-1) do
      if prices[j]-prices[i] > diff then
        diff = prices[j] - prices[i]
        day1 = i
        day2 = j
      end
    end
  end

  if diff == 0
    "No profit here"
  else 
    "Buy on day #{day1}, sell on day #{day2} with a profit of $#{prices[day2]} - $#{prices[day1]} = $#{diff}"
  end
end