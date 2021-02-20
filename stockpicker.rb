def stock_picker(prices)
    maxprofit=0
    days=[]
    prices.each.with_index do |buy,indexbuy|
      prices.each.with_index do |sell,indexsell|
        if (sell-buy)>maxprofit && indexsell>indexbuy
          maxprofit=sell-buy
          days=[indexbuy,indexsell]
        end
      end
    end
    print days
  end
  
  stock_picker([17,3,6,9,15,8,6,1,10])