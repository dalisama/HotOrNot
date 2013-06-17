class StatsController < ApplicationController
  # GET /stats
  # GET /stats.xml
  def index
    @stats = Stat.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stats }
    end
  end

  # GET /stats/1
  # GET /stats/1.xml
  def show
    @stat = Stat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stat }
    end
  end

  # GET /stats/new
  # GET /stats/new.xml
  def new
 
@rand1=rand(33)+1
@rand2=rand(33)+1
while @rand1 == @rand2
   @rand2=rand(33)+1
  
end   

@v1=Stat.find(@rand1)
@v2=Stat.find(@rand2)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @stat }
    end

  end



def vote


@v=Stat.find(params[:id])
@v.update_attributes(:vote => @v.vote+1)
@v.update_attributes(:display => @v.display+1)


@v1=Stat.find(params[:id_display])
@v1.update_attributes(:display => @v1.display+1)

@rand1=rand(33)+1
@rand2=rand(33)+1
while @rand1 == @rand2
   @rand2=rand(33)+1
  
end
render :update do |page|

page.replace_html "vote_zone", :partial=>"foto"

	end
end

def affichage

k=params[:id]
if k=="i"
@kkk=Stat.find(:all)
end
if k=="v"
@kkk=Stat.find(:all, :order=> "vote")
end
if k=="d"
@kkk=Stat.find(:all, :order=> "display")
end
render :update do |page|

page.replace_html "zone_affichage", :partial=>"affichage"

	end
end



 
end
