int initialX = 100;
int initialY = 20;
int foodX = 100;
int foodY = 20;
int gravity = 10;
int gravityIncrement = 2;
int score = 0;
boolean makeFood = true;
boolean won = false;
boolean poisonous = false;
boolean poisonCostume = false;
int winningScore = 5;
int isPoison;


void setup() {
  
  size(1920, 1800);
  
}


void draw() {
    
    background(141,233,237);
    if(won == false) {
      
    if(poisonous == true) {
      fill(0,0,0);
    }
    else {
      fill(255,255,255);
    }
    
    noStroke();
    ellipse(foodX, foodY, 30, 30);
    
    foodY = foodY + gravity;
    if(foodY == height) {
      makeFood = true;
      
      if(poisonous == false) {
        if(score>0) {
        score--;
      }
      }
      
    }
    
    if(makeFood == true) {
      
      isPoison = (int) random(0,5);
      if(isPoison == 3) {
        poisonous = true;
      }
      else {
       poisonous = false;
       
      }
      
      foodX = (int) random(0, width);
      foodY = initialY;
      
      
    makeFood = false;
    }
        drawFish();
        foodCheck(foodX, foodY);
        fill(0, 0, 0);
textSize(16);

    }

  
    
textSize(30);
text("Score: " + score, 20, 20);

if(score >= winningScore) {
   textSize(200); //if it’s not big enough
text("Cool you won", 0, 900);
won = true;
gravity = gravity + gravityIncrement;
}

}

void drawFish() {
  noStroke();
     fill(255,255,255);
     ellipse(mouseX-17,mouseY-17,20,20); //back side eye
     if(poisonCostume == true) {
       fill(0,0,100);
     }
     else {
     fill(255,200,88);
     }
     
     ellipse(mouseX,mouseY,90,50); //body
     triangle(mouseX+30,mouseY,mouseX+70,mouseY+30,mouseX+70,mouseY-30); //tail
     stroke(0);
     triangle(mouseX,mouseY,mouseX+15,mouseY+10,mouseX+15,mouseY-10); //side fin
     noStroke();
     fill(255,200,88);
     ellipse(mouseX,mouseY,15,15); //side fin cover
     noStroke();
     fill(255,255,255);
     ellipse(mouseX-25,mouseY-15,20,20); //front eye
     fill(0,0,0);
     ellipse(mouseX-25,mouseY-15,5,5); //pupil
     fill(141,233,237);
     ellipse(mouseX-45,mouseY,25,25); //mouth
}

void foodCheck(int xCoordinate, int yCoordinate) {
    
  if(xCoordinate > mouseX && xCoordinate < mouseX+70) {
    if(yCoordinate > mouseY-17 && yCoordinate < mouseY + 30) {
      if(poisonous == true) {
        if(score > 0) {
          score = score - 1;
        }
        
        poisonCostume = true;
      }
      else {
      score = score +1;
      poisonCostume = false;
      }
      
      makeFood = true;
    }
  }
  
  
}