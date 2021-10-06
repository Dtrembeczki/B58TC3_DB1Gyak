package File_olvas;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class TDFileOlvas {

	public static void main(String[] args) throws FileNotFoundException {
		
		File file = new File("test.txt");
		Scanner sc = new Scanner(file);
		//int tomb[];

		while(sc.hasNextLine()) {
			System.out.println(sc.nextLine());
		}
		
	}

}
