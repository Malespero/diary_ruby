# frozen_string_literal: true

# Main notes controller. CRUD here.
class NotesController < ApplicationController
  def create
    diary = Diary.find(params[:diary_id])
    note = diary.notes.create(params[:note].permit(:text))
    render json: { status: 'SUCCESS', message: 'Note added', data: note }, status: :ok
  end

  def destroy
    diary = Diary.find(params[:diary_id])
    note = diary.notes.find(params[:id])
    note.destroy
    render json: { status: 'SUCCESS', message: 'Note deleted', data: note }, status: :ok
  end

  def update
    diary = Diary.find(params[:diary_id])
    note = diary.notes.find(params[:id])
    if diary.notes.update(params[:note].permit(:text))
      render json: { status: 'SUCCESS', message: 'Updated note', data: note }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Note not updated', data: note }, status: :unprocessable_entity
    end
  end

  def show
    diary = Diary.find(params[:diary_id])
    note = diary.notes.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Loaded note', data: note }, status: :ok
  end
end
