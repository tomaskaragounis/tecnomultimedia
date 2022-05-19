  
int py, py1,py2, py3,py4,py5,py6, px1,px2,px3, px4,px5;
int segundos, inicio;
float  ix, iy,ix1,iy1;
PImage fondo, pantallainicio,pantalla3,pantalla4,pantalla5,pantallafinal;
PImage  ewon,natalie,qui,sabe,estrella;
PFont fuente;
void setup () {
  size(400, 400);
  fill(255);
  pantallainicio = loadImage("pantallainicio1.jpg");
  fondo = loadImage("espacio.jpg");
  ewon = loadImage("ewon.png");
  natalie = loadImage("natalie.png");
  qui = loadImage("qui.png");
  sabe = loadImage("sabe.png");
  fuente = loadFont("STARWARS1.vlw");
  pantalla3 = loadImage("pantalla3.jpg");
  pantalla4 = loadImage("pantalla4.jpg");
  pantalla5 = loadImage("pantalla5.jpg");
  pantallafinal = loadImage("pantallafinal.jpg");
  estrella = loadImage("estrella.png");
  textFont (fuente);
  py = 600;
  py1 = 600;
  py2 = 600;
  py3 = 600;
  py4 = 600;
  py5 = 600;
  py6 = 600;
  px1 = 500;
  px2 = 500;
  px3 = 500;
  px4 =  0;
  px5 = 600;
  inicio = 0;
  ix = random  (50,100);
  iy = random(50,100);
  ix1 = random(200,250);
  iy1 = random(200,220);
 
}
  
  void draw () {
    size(400,400);
    if (frameCount%60 == 0) {
    segundos++;
  }
    
  println (mouseX);
/////pantalla1 de  inicio//////
 
 if(inicio == 0){
 image(pantallainicio,0,0,400,400);
 textFont (fuente);
    textSize (25);
    fill(23,250,104);
    text ("apretar espacio para    empezar",70,250,300,300);
 frameCount = 5;

 /////arrancan los creditos//
 
 if (keyPressed == true){
 inicio = inicio + 1;}
 
 }
  
 ///////pantalla 2///////
  if ( frameCount<=2800 && inicio >= 1) {
    image(fondo, 0,0, width, height);
    if (frameCount>=0 || frameCount<=1500)
        textFont (fuente);
    textSize (60);
    fill(238,255,15);
    text ("STARWARS",30,py-200);
    py --;
    
    ///texto/////
    
      if (frameCount>=180) {
    if (frameCount > 180 || frameCount  == 180){
     textSize (40);
     fill(70,179,232);
    text ("Dirección:      George Lucas ",40,py1-200,400,600);
    py1 --;}
  }

    if (frameCount > 300 || frameCount  == 300){
     textSize (40);
    fill(70,179,232);
    text ("Producción:      George Lucas      Rick McCallum",40,py2-200,400,600);
    py2 --;
    
  }      
    if (frameCount > 470 || frameCount  == 470){
     textSize (40);
     fill(70,179,232); 
    text ("Guion:                      George Lucas",40,py3-200,400,600);
    py3 --;
        
          }
    if (frameCount > 590 || frameCount  == 590){
     textSize (40);
     fill(70,179,232); 
    text ("Montaje:                 Ben Burtt",40,py4-200,400,600);
    py4 --;
    
          }
    if (frameCount > 700 || frameCount  == 700){
     textSize (40);
    fill(70,179,232);
    text ("Música:                 John Williams",40,py5-200,400,600);
    py5 --;
   
         }
 
    if (frameCount > 805 || frameCount  == 805){
     textSize (40);
     fill(70,179,232);
    text ("Vestuario:         Trisha Biggar",40,py6-200,400,600);
    py6 --;
 
  
        }
  }
    ////////pantalla 3///////
  
    if (frameCount > 1500  && frameCount <= 2800){
      
    image(pantalla3,0,0,400,400);

  
  ////personajes /////
  
  
          if (frameCount>=1800 && frameCount<=2300) {

      image(ewon,ix,iy,200,200);
    
          textSize (30);
     fill(70,179,232);
       text ("Ewon Mcgregon como: Obi wan kenobi ",px1,300,400,600);
       px1--;
       if(px1 <=50){
       px1 = 50;
       }
  }
  
   if(frameCount >= 2300 && frameCount <= 2800){
     image(natalie,ix1,iy1,200,200 );
           textSize (30);
     fill(70,179,232);
       text ("Natalie Portman como: Padme Amidala ",px2,100,400,600);
       px2--;
      if(px2 <=50){
       px2 = 50;
       }
   
  }
    }
///////pantalla4/////
if(frameCount >= 2800 && frameCount <= 3700){
    image(pantalla4, 0,0,400,400);
    
    /////personajes/////
    
    if (frameCount>=2800 && frameCount<=3300) {

      image( qui   ,ix,iy,200,200);
    
          textSize (30);
     fill(70,179,232);
       text ("Liam Neeson como:Qui-Gon Jinn    ",100,px3 ,400,600);
       px3--;
       if(px3 <=   300){
       px3 =300;
       }
  }
  
   if(frameCount >= 3300 && frameCount <= 3700){
     image(sabe,ix1,iy1,200,200 );
           textSize (30);
     fill(70,179,232);
       text ("Keira Knightley como: sabe",50,px4,400,600);
       px4++;
      if(px4 >= 100){
       px4 =  100;
       }
   
  }
    
   }
   ///// pantalla 5//////
    if(frameCount >= 3700 && frameCount <= 4300){
    image(pantalla5, 0,0,400,400);         
    
    /////personajes secundarios//////
    
       textSize (30);
     fill(70,179,232);
       text ("Ahmed Best como: Jar Jar Binks",px5, 50,300,600);
      text ("Samuel L. Jackson como: Mace Windu ",px5,50+100  ,300,600);
         text (" Ray Park   como: Darth   Maul  ",px5,50+240,300,600);
       
       
       px5--;
       if( px5 <= 50){
       px5=50;
       }







}
    /////pantalla 6 final reseteo//////
         if(frameCount >= 4300 ){
    image(pantallafinal, 0,0,400,400);  
 
       textSize (90);
     fill(238,255,15);
       text ("FIN",140,110,300,600);
        textSize (25);
        fill(70,179,232);
        text("apreta click izquierdo para reiniciar",50,250,300,600);
        image(estrella,mouseX-50 ,mouseY-50 ,50,50);
      
        
        
        
        
        
        /////reseteo//////
       
       if ( mousePressed == true){
       
         
         if(frameCount >=4360 && inicio >=1){
        inicio = inicio - inicio;
        frameCount = 0 ;
          py = 600;
  py1 = 600;
  py2 = 600;
  py3 = 600;
  py4 = 600;
  py5 = 600;
  py6 = 600;
  px1 = 500;
  px2 = 500;
  px3 = 500;
  px4 =  0;
  px5 = 600;
              
         }
              
         }      
              ////void draw/////
   }

  }
