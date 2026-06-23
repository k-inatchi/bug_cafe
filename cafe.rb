#!/usr/bin/env ruby
# frozen_string_literal: true

DRINKS = [
  { name: 'コーヒー', price: 300 },
  { name: 'カフェラテ', price: 400 },
  { name: 'チャイ', price: 460 },
  { name: 'エスプレッソ', price: 340 },
  { name: '緑茶', price: 450 }
].freeze

FOODS = [
  { name: 'チーズケーキ', price: 470 },
  { name: 'アップルパイ', price: 520 },
  { name: 'ホットサンド', price: 410 }
].freeze

def take_order(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  order_number = nil
  loop do
    print '>'
    order_number = gets.to_i - 1
    break if order_number >= 0 && order_number < menus.size

    puts 'メニュー内の番号を入力してください'
  end
  puts "#{menus[order_number][:name]}(#{menus[order_number][:price]}円)ですね。"
  menus[order_number]
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
order1 = take_order(DRINKS)
puts 'フードメニューはいかがですか?'
order2 = take_order(FOODS)
total = order1[:price] + order2[:price]
puts "お会計は#{total}円になります。ありがとうございました！"
