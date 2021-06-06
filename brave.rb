require "./character.rb"

class Brave < Character
  def attack(monster)
    puts "#{@name}の攻撃！"
    calculate_damage(monster)
    puts "#{monster.name}に#{@damage}のダメージを与えた！"
  end
end