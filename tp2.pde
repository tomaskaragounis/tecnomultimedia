
// https://youtu.be/9duSARjeyeM

int  nz, bs,a,b;
float tam, tam1, tam2;


void setup(){
size(400,400);
 tam = 45;
 tam1 = random(35,45);
 tam2 = 35;
 
}

void draw(){

 nz = 1;
bs = 0;
a = 0;
b = 0;

 ///////// lineas rojas //////// 
  for (int i = 0; i < 150; i = i+6) {
strokeWeight(nz);
 stroke(255,0,0);
  line(0, i, 400, i);
}
///// lineas verdes ///////
 for (int j = 4; j < 150; j = j+6) {
strokeWeight(nz);
 stroke(0,255,0);
  line(0, j, 400, j);
}
/// pelotas beige que aprecen azules /////
 
 
 for (int k = 50; k < 400; k = k+50) {
   for (int m = 50; m < 150; m = m+50) {
    stroke(232, 195, 158);
    fill(232, 195, 158);
     circle(k, m, tam    );
   }
   
   }
   ///// lineas azules //////
 for (int f = 8; f < 150; f = f+6) {
 strokeWeight(nz);
 stroke(0,0,255);
  line(0, f, 400, f);


//////////////////////////////////////////////////////////////////////////////////////

}
///// lineas azules //////
 for (int k1 = 158; k1 < 258; k1 = k1+6) {
 strokeWeight(nz);
 stroke(0,0,255);
  line(0, k1, 400, k1);
}
///// lineas verdes ///////
 for (int j1 = 154; j1 < 254; j1 = j1+6) {
strokeWeight(nz);
 stroke(0,255,0);
  line(0, j1, 400, j1);
}

/// pelotas beige que aprecen rojas /////
 
 
 for (int k = 50; k < 400; k = k+50) {
   for (int m = 175; m < 250; m = m+50) {
    stroke(232, 195, 158);
    fill(232, 195, 158);
     circle(k, m, tam1);
   
   }
 }

 ///////// lineas rojas //////// 
  for (int i1 = 150; i1 < 250; i1 = i1+6) {
strokeWeight(nz);
 stroke(255,0,0);
  line(0, i1, 400, i1);
}
//////////////////////////////////////////////////////////////////////////////////////

///// lineas azules //////
 for (int k2 = 254; k2 < 400; k2 = k2+6) {
 strokeWeight(nz);
 stroke(0,0,255);
  line(0, k2, 400, k2);
  
 }
   ///////// lineas rojas //////// 
  for (int i2 = 250; i2 < 400; i2 = i2+6) {
strokeWeight(nz);
 stroke(255,0,0);
  line(0, i2, 400, i2);
}

 /// pelotas beige que aprecen verdes /////
 
 
 for (int k = 50; k < 400; k = k+50) {
   for (int m = 275; m < 400; m = m+50) {
    stroke(232, 195, 158);
    fill(232, 195, 158);
     circle(k, m, tam2);
   
   }
 }
 ///// lineas verdes ///////
 for (int j2 = 252; j2 < 400; j2 = j2+6) {
strokeWeight(nz);
 stroke(0,255,0);
  line(0, j2, 400, j2);
}

//////////////////////////////////////////////////////////////////////////////////////////

/////////// eferas por delante de las lineas ////////////////////
  if ( mousePressed == true){ 
  bs = 1;
    
 
  }else if (bs == 1){

bs = 0;

  }
if (bs == 1){
 

 for (int k = 50; k < 400; k = k+50) {
   for (int m = 275; m < 400; m = m+50) {
    stroke(232, 195, 158);
    fill(232, 195, 158);
     circle(k, m, tam2);
   
   }
 }
for (int k = 50; k < 400; k = k+50) {
   for (int m = 175; m < 250; m = m+50) {
    stroke(232, 195, 158);
    fill(232, 195, 158);
     circle(k, m, tam1);
   
   }
 }
 for (int k = 50; k < 400; k = k+50) {
   for (int m = 50; m < 150; m = m+50) {
    stroke(232, 195, 158);
    fill(232, 195, 158);
     circle(k, m+a , tam);
   }
   
   }
}
/////// mover las esferas
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
 a = a+1;
 b = b-1;
 tam = tam + a;
 tam2 = tam2 + b;

    }
}
 if (keyPressed) {
    if (key == 'D' || key == 'd') {
  a = a-1;
  b = b+1;
  tam = tam +a;
  tam2 = tam2 + b;
}
 }
 if (keyPressed) {
    if (key == 's' || key == 'S') {
   
   tam = 45;  
   tam2 = 35;

 }
}

}
