require 'sinatra'
require './blockchain' #./는 같은 디렉토리에 있다는 뜻. 같은 디렉토리에 있어야 작동이 된다. 복사해서 넣는거랑 똑같음.

b = Blockchain.new

get '/' do 
	"지금 전체 블럭수는 :" + b.my_blocks.to_s
end

get '/mine' do
	"논스값을 찾았습니다!(레알!)" + b.mining.to_s # to_s숫자와 문자로 계산할때 숫자나 문자로 통일해야지 계산이 됨, to striong의 약자. 다 문자로 바꾸는것.

end
