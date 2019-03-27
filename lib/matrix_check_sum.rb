# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
# Time complexity: O(rows * columns), where rows is the number of rows and columns is the number 
#                  of columns in the input matrix
#                  rows * columns will be the number of times the nested loop statements get executed
# Space complexity: O(1) rows and columns are auxiliary variables that won't change as matrix size changes
def matrix_check_sum(matrix)
  rows = matrix.length
  columns = matrix[0].length
  return false if rows != columns

  rows.times do |i|
    sum_rows = 0
    sum_columns = 0
    columns.times do |j|
      sum_rows += matrix[i][j]
      sum_columns += matrix[j][i]
    end
    if sum_rows != sum_columns
      return false
    end
  end

  return true
end
