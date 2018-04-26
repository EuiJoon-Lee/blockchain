require 'digest' # 특정한 문자열을 소화해서 다른 문자열로 나타냄 = 암호화함.

class Blockchain 

	def initialize #initialize는 블록체인이라는 클래스가 생성이 될 때 무조건 실행 됨, 저장되는 값이 필요할때 initialize가 필요함. @들어가는 지워지지 않는 값들 생성.
	@number_of_blocks = 1 #@이가 붙으면 클래스 전체에서 쓰임.
	end

 def mining
 	@number_of_blocks += 1 #@이가 붙어서 영원히 지워지지 않고 계속감.
  # 브라우저에 찍을거라 puts 안씀 마지막은 결과로 바치는 것
   history = []
   if @number_of_blocks < 100 # 반감기 설정 헤헤
   begin
   	nonce = rand(1000000)
   	hashed = Digest::SHA256.hexdigest(nonce.to_s) #콜론 2개 Digest::SHA256 샤256 끌어오는것 루비는 hash key value로 쓰임 .hexdigest 는 암호화를 끌어오는 메소드 



   	history << nonce # history라는 리스트에 nonce 값을 밀어넣겠다. << 이 .push(nonce)랑 같음.
   end while hashed[0..3] != '0000' # =이 =>이런 뜻이라고 생각하셈. ==은 같냐고 물어보는 것. != 아니니까 한바퀴 도는거임 ==이면 끝남.
   # [0..3] 0부터 3번째 자리까지를 의미
   history
 end


 def my_blocks
 	@number_of_blocks
 end


end
