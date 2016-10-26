size(1000, 1000);
background(255);
noStroke();



//Antena

//fill(32,97,175);
//rect(390,50,10,150);

fill(147,111,13);
ellipse(395,50,50,50);

//head

noStroke();
fill(23,96,131);
ellipse(400,200,200,200);

quad (350,250,  450,250,  450, 350, 350,350  );  // order is mixed but working...

fill(23,96,131);

quad (300,200,   320,300,   480,300,   500,200);




//rolls

fill(93,136,188);

ellipse(350,810,80,80);
ellipse(450,810,80,80);

fill(50,93,144);

ellipse(275,760,60,60);
ellipse(525,760,60,60);

fill(5,44,98);

ellipse(290,700,40,40);
ellipse(500,700,40,40);



//body
fill(44,108,147);

quad (350,370,   300,500,   500,500,   450,370);

rect(300,500,200,200);

ellipse(400,700,200,100);


//arms

fill(105,154,183);

triangle(250,430,300,450,250,570);

triangle(500,480,540,430,550,570);

ellipse(245,600,50,50);

ellipse(555,600,50,50);

//shoulders

fill(147,111,13);

ellipse(280,450,80,80);
ellipse(520,450,80,80);

//eye

fill(255);
ellipse(395,200,100,45);

fill(147,111,13);
ellipse(395,200,40,40);