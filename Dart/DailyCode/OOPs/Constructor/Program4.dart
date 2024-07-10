class Demo {

	final int? a;
	final String?  b;

	const Demo(this.a,this.b);
}

//Used to Create Only 1 object Like Singleton DP

void main() {

	Demo obj1 = new Demo(1,"Umesh");
	Demo obj2 = new Demo(1,"Umesh");

	// obj1 and obj2 are different objects

	print(obj1.hashCode);
	print(obj2.hashCode);

	Demo obj3 = const Demo(3,"ECcentric");
	Demo obj4 = const Demo(3,"ECcentric");
	
	// obj3 and obj4 are same object
	
	print(obj3.hashCode);
	print(obj4.hashCode);

	//Demo obj5 = new const Demo(2,"OG"); //Error 2 keyword can't be used together new nad const
}
