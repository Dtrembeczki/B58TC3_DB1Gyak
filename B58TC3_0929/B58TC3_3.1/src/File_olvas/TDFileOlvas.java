package File_olvas;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class TDFileOlvas {

	public static void main(String[] args) throws FileNotFoundException {
		
	File file = new File("munka.txt");
	Scanner sc = new Scanner(file);
	int [] szamok = new int [5];
	int i=0;
	int sum = 0;
	
	while(sc.hasNextInt()) {
		szamok[i++] = sc.nextInt();
	}
	
	for (i = 0; i < szamok.length; i++) {
		sum += szamok[i];
	}
	
	for (i = 0; i < szamok.length; i++) {
		System.out.printf("\n %d. szam: %d", i+1, szamok[i]);
	}
	
	System.out.printf("\n Osszeg: %d", sum);
	
	}

}
	
