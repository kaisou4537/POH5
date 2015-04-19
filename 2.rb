days = gets

# 初期化
week = ["mon", "tue", "wed", "thu", "fri", "sat", "sun"]
week_proceeds = {}
week.each do |w|
  week_proceeds[w] = 0
end

# 計算
(1..days.to_i/7).each do |d|
  week.each do |w|
    week_proceeds[w] += gets.to_i
  end
end

# 出力
week_proceeds.each_value do |value|
  puts value
end