/*
  DO NOT MODIFY THIS CODE
  Any change to this code will be ignored
*/

import java.util.*;


public enum Country {
    USA, EUROPE, CUBA, KUWAIT, ITALY, LIBERIA 
}

Country [] countries={Country.USA, Country.EUROPE, Country.CUBA, Country.KUWAIT, Country.ITALY, Country.LIBERIA};

static String STUDENT_ID="";
static public int COLUMNS = 3;
static public int ROWS = 2;



void setup()
{
  size(1200, 400);
  mySetup();
  rectMode(CORNER);

  // Shuffle flags
  Collections.shuffle(Arrays.asList(countries));
}

void draw()
{
   noStroke();
   background(0);
   float flagWidth= width/COLUMNS;
   float flagHeight= height/ROWS;

   int x=0, y=0;
   for (int i=0; i<countries.length; i++)
   {
   	if (i==COLUMNS)
    	{
    		x=0;
    		y= (int) flagHeight;
    	}
   		drawFlag (countries[i], x, y, flagWidth, flagHeight);
   		// draw rect
		stroke(255);
		strokeWeight(2);
		noFill();
		rect(x,y,width,height);
    	
    	// update location
    	x+= (int) flagWidth;
    }
}

void mousePressed()
{
	saveFrame(STUDENT_ID+".jpeg");
}