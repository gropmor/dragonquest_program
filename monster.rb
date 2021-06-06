require "./character.rb"

class Monster < Character
  def appear
    puts "#{@name}があらわれた！"
  end

  def attack(brave)
    puts "#{@name}の攻撃！"
    calculate_damage(brave)
    puts "#{brave.name}は#{@damage}のダメージを受けた！"
  end
end