package test;

public class test implements Cloneable{

	public static void main(String[] args) {
		int size = 10000;
		int[] array = new int[size];
		int[] array2 = new int[size];
		for (int i = 0; i < array.length; i++) {
			array[i] = i;
		}
		for (int i = 0; i < array.length; i++) {
			System.err.print(array[i]+",");
		}
		System.err.println("\r\n");
			System.arraycopy(array, 1, array2, 0, 10);
		for (int i = 0; i < array2.length; i++) {
			System.err.print(array2[i]+",");	
		}
	}
}
