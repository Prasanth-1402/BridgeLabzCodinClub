public class JavaSample{
	private int firstNumber;
	private int secondNumber;
	private int addResult;
	public JavaSample(int firstNumber,int secondNumber){  //parameterized constructor
		this.firstNumber=firstNumber;
		this.secondNumber=secondNumber;
		addResult=firstNumber+secondNumber;
	}
		
	public JavaSample(){						//second constructor

	}

	public int add(int num1, int num2){
		return num1+num2;
	}

	public int add(){
		return this.firstNumber+this.secondNumber;
	}

public static void main(String[] args){
	for(int i=0;i<args.length;i++)
		System.out.println(args[i]);
	JavaSample javaSecondSampleObject = new JavaSample();		  	   //makes use of second constructor
	JavaSample javaFirstSampleObject = new JavaSample(4,5);			//makes use of parameterized Constructor
	
	int secondSampleValueOne=2;
	int secondSampleValueTwo=2;
   int firstSampleValueOne=1;
   int firstSampleValueTwo=1;

	int EmptyConstrResultWithoutArgs = javaSecondSampleObject.add();							
	int ParamConstrResultWithoutArgs = javaFirstSampleObject.add();
	int EmptyConstrResultWithArgs = javaSecondSampleObject.add(secondSampleValueOne, secondSampleValueTwo);
	int ParamConstrResultWithArgs =  javaFirstSampleObject.add(firstSampleValueOne, firstSampleValueTwo);

	System.out.println("Values already in Param COnstructor are : 4 and 5 ");
	System.out.println("Values passed inside Empty Constructor object's method are :"+secondSampleValueOne +" and "+secondSampleValueTwo);
   System.out.println("Values passed inside Param Constructor object's method  are :"+firstSampleValueOne +" and "+firstSampleValueTwo);
	System.out.println("Result from EmptyConstrWithoutArgs : "+EmptyConstrResultWithoutArgs);
   System.out.println("Result from EmptyConstrWithArgs : "+EmptyConstrResultWithArgs);
	System.out.println("Result from ParamConstrWithoutArgs : "+ParamConstrResultWithoutArgs);
	System.out.println("Result from ParamConstrWithArgs : "+ParamConstrResultWithArgs);
	System.out.println("Printing result value from Param constructor :"+ javaFirstSampleObject.addResult);
	}
}
