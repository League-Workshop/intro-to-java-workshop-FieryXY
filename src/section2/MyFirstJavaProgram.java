package section2;

import java.awt.Color;
import org.jointheleague.graphical.robot.Robot;

public class MyFirstJavaProgram {
	
	public static void main(String[] args) {
		
		// START HERE
		Robot chocobot = new Robot();
		
		
		chocobot.penDown();
		
		chocobot.setSpeed(9000);
		
		//Draws Square
		for(int i = 0; i < 4; i++) {
			chocobot.move(70);
			chocobot.turn(90);
			
		}
		
		
		
		
		
	}
}
