package file_iras;

//import java.io.FileWriter;
//import java.io.Writer;

import java.io.*;
import java.util.*;

public class fileiro {

	public static void main(String[] args) throws IOException {
		Writer wr = new FileWriter("munka.txt");
		Scanner olvass = new Scanner(System.in);
		int[] tomb = new int[5];
		int sum = 0;

		for (int i = 0; i < tomb.length; i++) {
			System.out.println("Adj meg szamokat ("+i+"): ");
			tomb[i] = olvass.nextInt();
		}

		for (int i = 0; i < tomb.length; i++) {
			sum += tomb[i];
		}

		System.out.println(sum);
		
		for (int i = 0; i < tomb.length; i++) {
			wr.write(i+".szam "+ tomb[i]+"\n");
		}
		
		wr.write("\nOsszeg: " + sum);
		wr.close();

	}

}
