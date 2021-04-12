class NotesController < ApplicationController
    
    def create
        @diary = Diary.find(params[:diary_id])
        @note = @diary.notes.create(params[:note].permit(:text))
        redirect_to diary_path(@diary)

    end

    def destroy
		@diary = Diary.find(params[:diary_id])
		@note = @diary.notes.find(params[:id])
		@note.destroy
		redirect_to diary_path(@diary)
    end
    
    def update
        @diary = Diary.find(params[:diary_id])
        @note = @diary.notes.find(params[:id])

        if @note.update(params[:note].permit(:text))
            redirect_to diary_path(@diary)
        else
            render 'edit'
        end
    end
    
    def edit
        @diary = Diary.find(params[:diary_id])
		@note = @diary.notes.find(params[:id])
    end

    def show
        @diary = Diary.find(params[:diary_id])
		@note = @diary.notes.find(params[:id])
    end
end
