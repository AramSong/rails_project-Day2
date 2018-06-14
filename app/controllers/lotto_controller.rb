class LottoController < ApplicationController
    def index 
        if Lotto.all.nil?
            number = (1..45).to_a.sample(6).sort.to_s
            @new_number = Lotto.new
            @new_number.numbers = number
            @new_number.save
           
        else
            @new_number = Lotto.last

            
        end
        @numbers = Lotto.all
    end
    
    def new
        number = (1..45).to_a.sample(6).sort.to_s
        lotto = Lotto.new       #Lotto라는 클래스에 껍데기 생성
        lotto.numbers = number  #numbers column에 number 저장
        lotto.save              #실제 테이블에 저장될 수 있도록 save
       
        redirect_to "/lotto"    #완성된후 /lotto로 되돌아간다.
    end
    

end
