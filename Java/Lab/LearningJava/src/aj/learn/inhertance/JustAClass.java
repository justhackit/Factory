package aj.learn.inhertance;

import java.util.ArrayList;

public class JustAClass extends Object{

	public static void main(String args[]){
		ATest obj=new ATest();
		obj.returnSomething(obj);
		ArrayList<ATest> myList=new ArrayList<ATest>();
		
	}
}

class ATest{
	public Object returnSomething(Object that_thing){
		Object this_thing=that_thing;
		return this_thing;
	}
}
