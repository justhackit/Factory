package aj.learn.inhertance;

public abstract class Animal {
	
	public abstract void eat();
	public abstract void makeNoise();
	public abstract void sleep();
	public abstract void roam();

}

abstract class Feline extends Animal{
	public void roam(){
		System.out.println("Feline roaming");
	}
}

abstract class Canine extends Animal{
	public void roam(){
		System.out.println("Canine roaming");
	}
}