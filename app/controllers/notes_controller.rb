class NotesController < ApplicationController

    def create
        note = Note.create(note_params)
        render json: note
    end

    def update
        note = Note.find_by(id: params[:id])
        note.update(:status => 'done' )
        render json: note
    end

    def destroy
        note = Note.find_by(id: params[:id])
        note.destroy
        render json: note
    end

    private

    def note_params
        params.require(:note).permit(:description, :urgency, :status, :task_id, :user_id, :date, :time)
    end

end
