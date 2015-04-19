# 初期化
input_line = gets.split("\s")
x_num = input_line[0].to_i
y_num = input_line[1].to_i
split_num = input_line[2].to_i

# value
val_matrix = Array.new(y_num) {Array.new()}
(0..y_num - 1).each do |y|
  gets.split("\s").each do |value|
    val_matrix[y] << value.to_i
  end
end

# check
check_matrix = Array.new(y_num, 0){Array.new(x_num, 0)}

# Slove
x_s = 0
y_s = 0
x_e = 0
y_e = 0

(0..split_num - 1).each do |num|
  matrix_strs = gets.split("\s")

  x_s = matrix_strs[0].to_i - 1
  y_s = matrix_strs[1].to_i - 1
  x_e = matrix_strs[2].to_i - 1
  y_e = matrix_strs[3].to_i - 1

  (x_s..x_e).each do |x|
    (y_s..y_e).each do |y|
      check_matrix[y][x] = 1
    end
  end
end

# 出力
result = 0
(0..y_num - 1).each do |y|
  (0..x_num - 1).each do |x|
    result += check_matrix[y][x] == 1 ? val_matrix[y][x] : 0
  end
end

puts result
