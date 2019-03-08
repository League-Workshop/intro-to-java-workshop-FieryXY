package section2;

import java.awt.Color;

import org.jointheleague.graphical.robot.Robot;

/* Teacher’s note: before beginning, draw a pentagon and have students work out the angle that the robot will have to turn (360/5) */

public class PentagonCrazy {

	private void makePrettyThings() {
		// 1. Create a new Robot
			Robot pentabot = new Robot();
			pentabot.setSpeed(9000);
		// 3. Put the robot's pen down
			pentabot.penDown();
		// 8. Make the robot go at maximum speed (100)
			pentabot.setSpeed(90);
		// 9. Set the pen to a color that you like for the shape
			pentabot.setPenColor(Color.BLUE);
			pentabot.setRandomPenColor();
		// 4. Make a variable for the number of sides you want (can’t test this one)
			int sideCount = 6;
		// 5. Make a second variable for the angle you want the robot to turn. Hint: you can divide in Java using "/". Can’t test until step 6
			int angleMeasure = 360/sideCount;
		// 7. Use a for loop to repeat steps #2 to #11, 200 times. When this is done you should see a pentagon
		for(int i = 0; i<1000; i++) {
			// 2. Move the robot 200 pixels
			pentabot.move(i);
			// 10. Change the previous line of code to make the robot move "i" pixels instead of 200 
			
			// 6. Turn the robot the amount in your angle variable
			pentabot.turn(angleMeasure);
			// 11. Turn the robot one more degree
			pentabot.turn(1);
		}
	}

	// Variations:
	// *12. make the pattern really huge
		//Allow the loop to go for a longer time, or increase the pen width.
	// *13. randomize the color of the pattern 
		//set the pen color to the random pen color function
	// *14. experiment with different shapes
		//Change the angle measure variable
		

	public static void main(String[] args) {
		new PentagonCrazy().makePrettyThings();
	}
}
