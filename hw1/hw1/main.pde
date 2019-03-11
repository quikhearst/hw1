void mySetup()
{
  STUDENT_ID="20150886";
}


void drawFlag (Country flag, int x, int y, float width, float height)
{
	/* YOUR CODE HERE */
  if(flag == Country.ITALY) italy (x, y, width, height);
  if(flag == Country.KUWAIT) kuwait (x, y, width, height);
  if(flag == Country.LIBERIA) liberia (x, y, width, height);
  if(flag == Country.USA) usa (x, y, width, height);
  if(flag == Country.CUBA) cuba (x, y, width, height);
  if(flag == Country.EUROPE) europe (x, y, width, height);
}


void italy (int x, int y, float width, float height)
{
	/* YOUR CODE HERE */
}


void kuwait (int x, int y, float width, float height)
{
	/* YOUR CODE HERE */
}


void liberia (int x, int y, float width, float height) 
{
	/* YOUR CODE HERE */
}


void usa (int x, int y, float width, float height) 
{
	/* YOUR CODE HERE */
}


void cuba (int x, int y, float width, float height) 
{
	/* YOUR CODE HERE */
}


void europe (int x, int y, float width, float height) 
{
	/* YOUR CODE HERE */
}

void star(float x, float y, float radius) {
  pushMatrix();
  translate(x, y);
  rotate(TWO_PI/4);
  float angle = TWO_PI / 5.0;
  float halfAngle = angle / 2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = cos(a) * radius/2;
    float sy = sin(a) * radius/2;
    vertex(sx, sy);
    sx = cos(a + halfAngle) * radius;
    sy = sin(a + halfAngle) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
  popMatrix();
}
