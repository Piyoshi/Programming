public class MyExceptionTest{

	public static void main(String argv[]){
		String[] myarray = new String[2];
		try{
			System.out.println("代入します");
			myAssign(myarray, 100, "100番目の文字列");
			System.out.println("代入しました");
		}catch(ArrayIndexOutOfBoundsException e){
			System.out.println("代入できませんでした");
			System.out.println("例外は"+ e + "です");
		}
	}

	static void myAssign(String[] arr, int index, String s){
		System.out.println("myAssignに来ました");
		arr[index] = s;
		System.out.println("myAssignから帰ります");
	}
}
