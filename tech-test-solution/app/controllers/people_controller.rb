class PeopleController < ApplicationController

    def create
        @people = Person.new
        if @people.save
            redirect_to :back
        else
            redirect_to :back, notice: "Something went wrong"
        end
    end


    def bulk_create
        values = params["data"].values
        values.each do |person|
            id = person['id']
            p = Person.find_by(:id => id)
            p.firstname = person[:firstname]
            p.surname = person[:surname]
            p.save
        end
        render json:{status:"ok"}
    end

    def index
        @people = Person.all
    end

    def form

    #so here you're checking if the form has brought the params!

        if params

            @people = People.find(params[:id]) ##ID PART

            @people.update_attributes params[:people]

        end
    end

end