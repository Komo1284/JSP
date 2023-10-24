package singleton;

public class SingletonMain {

	public static void main(String[] args) {


		Singleton sing1 = new Singleton();
		Singleton sing2 = new Singleton();
		
		System.out.println(sing1);
		System.out.println(sing2);
		
		if(sing1 == sing2) {
			System.out.println("같은 객체");
		}else {
			System.out.println("다른 객체");
		}

	}

}
