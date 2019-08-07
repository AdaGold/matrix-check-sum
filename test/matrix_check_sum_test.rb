require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/matrix_check_sum'

describe "matrix check sum" do
  describe "basic tests" do
    it "4 X 4 matrix check sum true" do
      # setup
      matrix = [[1, 2, 3, 4], # sum of 0th row = 10
                [9, 5, 3, 1], # sum of 1st row = 18
                [0, 3, 5, 6], # sum of 2nd row = 14
                [0, 8, 3, 6]] # sum of 3rd row = 17
      # sums = 10, 18, 14, 17 for columns 0 through 3

      # test and validate
      matrix_check_sum(matrix).must_equal true
    end

    it "5 X 5 matrix check sum true" do
      # setup
      matrix = [[0, 0, 4, 0, 0],
                [0, 0, 0, 0, 0],
                [4, 0, 0, 0, 0],
                [0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0]]

      # test and validate
      matrix_check_sum(matrix).must_equal true
    end

    it "3 X 3 matrix check sum false" do
      # setup
      matrix = [[1, 2, 3],
                [4, 5, 6],
                [10, 11, 12]]

      # test and validate
      matrix_check_sum(matrix).must_equal false
    end

    it "4 X 4 matrix check sum false" do
      # setup
      matrix = [[1, 10, 1, 32],
                [2, 3, 12, 4],
                [2, 3, 12, 4],
                [9, 4, 9, 5]]

      # test and validate
      matrix_check_sum(matrix).must_equal false
    end
  end
end
