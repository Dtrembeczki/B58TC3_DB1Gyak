package feladat3;

import java.io.*;
import java.util.*;

public class fileIras {

	public static void main(String[] args) throws FileNotFoundException {
		String sor;
		String[] szavak;
		int sorid = 0;
		
		try {
			BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
			BufferedWriter bw = null;
			
			System.out.println("Adja meg a file nevet: ");
			
			while( sorid >= 0 ) {
				sor = br.readLine();
				if (sorid==0) {
					bw = new BufferedWriter(new FileWriter(sor));
				}else {
					bw.write(sor);
					bw.newLine();
				}
				
				sorid = sorid + 1;
				szavak = sor.split(" ");
				
				for(String sz : szavak) {
					System.out.println(sz);
					if(sz.compareTo("end") == 0) {
						br.close();
						sorid = -1;
					}
				}
				
			}
			
			bw.close();
			System.out.println("OK");
		}catch (Exception ee) {
			ee.printStackTrace();
		}
		
		File file = new File("munka.txt");
		Scanner scan = new Scanner(file);
		String str = null;
		//int i=0;
		
		while(scan.hasNextLine()) {
			str = (String) scan.next();
		}
		
		System.out.println(str.toUpperCase());

	}

}
