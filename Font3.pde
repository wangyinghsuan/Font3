/**
     A 'O' drawn by verticle lines following the profile of 2 bezier curves.
     wang ying hsuan 26/08/2012
     ying_hsuan52@hotmail.com
  */

size(400,400);
background(255);
noFill();
strokeWeight(1);
//bezier(100,200,100,50,300,50,300,200);

for (int i = 0; i <= 50; i++) {
  float t = i / 50.0 ;
  float x = bezierPoint(100,100, 300,300, t);
  float y = bezierPoint(200, 50, 50, 200, t);
  line(x, y, x, y-30);
}

//bezier(100,200,100,350,300,350,300,200);
for (int a = 0; a <= 50; a++) {
  float b = a / 50.0 ;
  float c = bezierPoint(100,100, 300,300, b);
  float d = bezierPoint(200, 350, 350, 200, b);
  line(c, d, c, d+30);
}

save("FONT03.jpg");
