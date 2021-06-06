require "./brave.rb"
require "./monster.rb"

brave = Brave.new(name: "ゆうしゃ", hp: 400, offense: 240, defense: 350)
monster = Monster.new(name: "シドー", hp: 200, offense: 170, defense: 100)

monster.appear
while brave.hp.positive? && monster.hp.positive?
  brave.attack(monster)
  monster.attack(brave) if monster.hp.positive?
  puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
  TEXT
end
puts brave.hp.positive? ? "#{monster.name}をやっつけた！" : "#{brave.name}はしんでしまった！"