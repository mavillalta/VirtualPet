void setup()
{
  size(1000,1000);
}

void draw(){
  //ellipse(500,500,1000,1000);
  int a=12;
  int b=500;
  double c=PI/6;
  int cx=500;
  int cy=500;
  int[] xnums = new int[a];
  int[] ynums = new int[a];

  for(int i=0;i<a; i++){
    xnums[i]=int(Math.round(cx+b*Math.cos(i*(2*(3.14159265))/a+c)));
    ynums[i]=int(Math.round(cy+b*Math.sin(i*(2*(3.14159265))/a+c)));  
  }

  for (int i=0;i<a-1; i++){
    noStroke();
    fill(255,0,0);
    triangle(cx,cy,xnums[i],ynums[i],xnums[i+1],ynums[i+1]);
  }

  noStroke();
  fill(255,0,0);
  triangle(cx,cy,xnums[a-1],ynums[a-1],xnums[0],ynums[0]);

  for (int i=0;i<a-2; i=i+2){
    noStroke();
    fill(0,255,0);
    triangle(cx,cy,xnums[i],ynums[i],xnums[i+2],ynums[i+2]);
  }

  noStroke();
  fill(0,255,0);
  triangle(cx,cy,xnums[a-2],ynums[a-2],xnums[0],ynums[0]);

  for (int i=0;i<a-4; i=i+4){
    noStroke();
    fill(0,0,255);
    triangle(cx,cy,xnums[i],ynums[i],xnums[i+4],ynums[i+4]);
  }

  noStroke();
  fill(0,0,255);
  triangle(cx,cy,xnums[a-4],ynums[a-4],xnums[0],ynums[0]);
  fill(0,0,0);
  arc(500,380,500,280,5*PI/4,7*PI/4);
  fill(0,0,255);
  ellipse(500,500,200,200);
  fill(255,255,255);
  ellipse(500,500,150,150);
  fill(0,0,0);
  ellipse(500,500,100,100);

  int[] ran= new int[20];
  for(int i=0;i<20;i++){
    ran[i]=(i+1);
    System.out.println(ran[i]);
  }
  textSize(240);
  text(20,350,650);
}
