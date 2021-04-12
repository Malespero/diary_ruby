class DiarysController < ApplicationController
    def index
        @diarys = Diary.all.order("created_at DESC")

    end

    def new
        @diary = Diary.new
    end

    def create
        @diary = Diary.new(diary_params)

        if @diary.save
            redirect_to @diary
        else
            render 'new'
        end
    end

    def show 
        @diary = Diary.find(params[:id])
    end

    def update
        @diary = Diary.find(params[:id])

        if @diary.update(diary_params)
            redirect_to @diary
        else
            render 'edit'
        end
    end

    def edit
        @diary = Diary.find(params[:id])
    end

    def destroy
		@diary = Diary.find(params[:id])
		@diary.destroy

		redirect_to diarys_path

	end

    private

    def diary_params
        params.require(:diary).permit(:title, :expiration, :kind)
    end
end
