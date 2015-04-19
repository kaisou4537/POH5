# 初期化
input_line = gets.split("\s")
x_num = input_line[0].to_i
y_num = input_line[1].to_i

val_matrix = Array.new(y_num) { Array.new() }
check_arr = Array.new(x_num, 0)
(0..y_num - 1).each do |y|
  x_count = 0
  gets.split("\s").each do |value|
    if value == "2"
      val_matrix[y] << "0"
    else
      val_matrix[y] << value
      check_arr[x_count] += value == "1" ? 1 : 0
    end
    x_count += 1
  end
end

# 格納
result_matrix = Array.new(y_num, "0") {Array.new(x_num, "0")}
x_count = 0
(0..y_num - 1).reverse_each do |y|
  (0..x_num - 1).each do |x|
    if check_arr[x] > 0 && check_arr[x] > x_count
      result_matrix[y][x] = "1"
    end
  end
  x_count += 1
end

# 出力
(0..y_num - 1).each do |y|
  puts result_matrix[y].join("\s")
end
