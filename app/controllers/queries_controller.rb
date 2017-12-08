class QueriesController < ApplicationController
def index

end

def new
end

def selectrng
end


def showrng
end

def searchque
end

def showres
end

def complete
	@arr = params[:include]
	puts @arr
	redirect_to root_path

end


def changecat
	@entry = Entry.find(params[:id])
	@arr = ["dinosaur","apple","vehicle"]
	@cat = Category.all
end

end
