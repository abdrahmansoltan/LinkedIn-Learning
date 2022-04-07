package headfirst.designpatterns.strategy;

// fly behavior implementation (duck can't fly)
public class FlyNoWay implements FlyBehavior {
	public void fly() {
		System.out.println("I can't fly");
	}
}
