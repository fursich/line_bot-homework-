class ChatsController < ApplicationController
    def index
        @chats = Chat.all
        @new_chat = Chat.new
    end
    def create
        @chat = Chat.new(chat_params)

        @answers=['なるほど','それで？','めっちゃわかる〜','ありえへんやろ','その話１００回聞いたわ','エエこと言うなあ','オモロ','激アツ','なんでやねん','なめとったら痛い目にあうで！','何その眠たい話']
        @chat.partner = @answers[rand(0..(@answers.size-1))]

        @chat.save
        redirect_to '/chats'
    end
    def destroy
        Chat.find(Chat.size-1).destroy
        
        redirect_to '/chats'
    end

    private

    def chat_params
        params.require(:chat).permit(:myself)
    end
end
