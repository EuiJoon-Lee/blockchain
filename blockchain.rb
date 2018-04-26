require 'digest' # 특정한 문자열을 소화해서 다른 문자열로 나타냄 = 암호화함.

class Blockchain 

	def initialize #initialize는 블록체인이라는 클래스가 생성이 될 때 무조건 실행 됨, 저장되는 값이 필요할때 initialize가 필요함. @들어가는 지워지지 않는 값들 생성.
	# @number_of_blocks = 1 #@이가 붙으면 클래스 전체에서 쓰임.
	@chain = []
	end

 def mining
 	# @number_of_blocks += 1 #@이가 붙어서 영원히 지워지지 않고 계속감.
  # 브라우저에 찍을거라 puts 안씀 마지막은 결과로 바치는 것
 
   begin
   	nonce = rand(100)
   	end while nonce != 0

block = {
	'index' => @chain.length + 1,
	'time' => Time.now, # Time.now = 현재시간 
	'nonce' => nonce,
	'previous_block' => Digest::SHA256.hexdigest(JSON.dump(last_block)) #루비는 데이터 자체가 아니라 데이터의 위치 주소만 기억한다, = (last_block.to_s) 둘다 똑같은 메소드로 통일!
}
  @chain << block
end

 def current_chain
 	@chain
 end

 def last_block
 	@chain[-1]
 end


end
