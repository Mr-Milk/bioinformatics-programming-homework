import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class CountGC {
    private CountGC() {}

    public static void main(String[] args) throws FileNotFoundException{
        int countA = 0, countC = 0, countT = 0, countG = 0;
        try {
            File file = new File("/home/echo/Programming/java/chr1.fa");
            Scanner seq = new Scanner(new FileInputStream(file));
            while (seq.hasNext()) {
                String line = seq.nextLine();
                if (line.startsWith(">")) continue;
                for (int i = 0; i < line.length(); i++) {
                    char base = line.charAt(i);
                    switch (base){
                        case 'A':
                            countA++; break;
                        case 'C':
                            countC++; break;
                        case 'T':
                            countT++; break;
                        case 'G':
                            countG++; break;
                        case 'a':
                            countA++; break;
                        case 't':
                            countT++; break;
                        case 'c':
                            countC++; break;
                        case 'g':
                            countG++; break;
                        default:
                            break;
                    }
                }
            }
        } catch (FileNotFoundException e) {
            e = new FileNotFoundException("No such file!");
            throw e;
        }
        double CGratio = (double) (countC + countG) / (double) (countC + countA + countG +countT);
        System.out.println(CGratio);

    }

}
