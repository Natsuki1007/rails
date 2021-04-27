require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp.to_s

def make_memo
  csv = gets.to_s
end

def edit_memo
  csv = gets.to_s
end

if memo_type == '1'
  puts "拡張子を除いたファイルを入力していください"
  file = gets.to_s
  puts "メモしたい内容を記入してください"
  File.write("test.csv",make_memo)
elsif memo_type == '2'
  puts "編集するファイルを拡張子を除いて入力してください"
  file = gets.to_s
  puts "編集内容を入力してください"
  File.write("test.csv",make_memo)
else
  puts "1または2を入力してください"
end

CSV.foreach("test.csv") do |row|
  p row
end
