def janken
  
  program_hand = rand(3)
  jankens = ["グー", "チョキ","パー"]

  puts "じゃんけん、、、"
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  my_hand = gets.to_i

  #０〜２の数字が入力された場合
  if my_hand == 0 || my_hand == 1 || my_hand == 2
    puts "ホイ！"
    puts "あなた：#{jankens[my_hand]}を出しました"
    puts "相手：#{jankens[program_hand]}を出しました"
    puts "---------------------------------------"

        #勝ちの場合
        if (my_hand == 0 && program_hand == 1) ||(my_hand == 1 && program_hand == 2) ||(my_hand == 2 && program_hand == 0) 
          puts "勝ち"
          $result_janken = "win"
          return false

        #負けの場合
        elsif (my_hand == 0 && program_hand == 2) ||(my_hand == 1 && program_hand == 0) ||(my_hand == 2 && program_hand == 1) 
          puts "負け"
          $result_janken = "lose"
          return false

        #あいこの場合
        elsif my_hand == program_hand
          puts "あいこで・・・"
          return true
        
        end  

  #３が入力された場合
  elsif my_hand == 3
    puts "戦わない" 
    exit
  end
  
  #０〜３以外が入力された時
  while my_hand >= 4
    puts "0~3の数字のみを入力してください" 
    puts "じゃんけん、、、"
    puts "0 (グー)、1 (チョキ)、2 (パー)、3 (戦わない)"
    my_hand = gets.to_i
  end

end  
  janken

def last_game

  program_direction = rand(4)
  directions = ["上","下","右","左"]

  puts "あっち向いて〜"
  puts "0(上),1(下),2(右),3(左)"
  my_direction = gets.to_i
  puts "ほい"
  puts "---------------------------------------"

  puts "あなた：#{directions[my_direction]}"
  puts "相手：#{directions[program_direction]}"

  #勝ちの場合
  if ($result_janken == "win" && my_direction == program_direction)
    puts "win!"
    exit

  #負けの場合  
  elsif ($result_janken == "lose" && program_direction == my_direction)
    puts "lose..."
    exit
    
  #勝敗がつかない場合  
  else 
    puts "もう一度じゃんけん"
    return janken
  end

end
last_game

def game
  if janken == true
    return true
    
  elsif last_game == true
    return true
    
  else
    return false
  end
end
    
next_game = true

while next_game 
  next_game = game
end