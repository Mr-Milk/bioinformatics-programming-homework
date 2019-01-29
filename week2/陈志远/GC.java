
import java.io.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class GC {
    public static void main(String[] args) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(new File("E:\\homework\\chr.fa")));
        BufferedReader in = new BufferedReader(new InputStreamReader(bufferedInputStream, "utf-8"), 10*1024*1024);
        Integer count = 0;
        /*while (in.ready()){
            String line = in.readLine();
            String match = "[GC]";
            Pattern pattern = Pattern.compile(match);
            Matcher matcher = pattern.matcher(line);
            while (matcher.find())
            {
                count++;
            }
        }*/

        while (in.ready())
        {
            String line = in.readLine();
            int i = line.length();
            for (int j = 0; j < i; j++)
            {
                char c = line.charAt(j);
               if (c == 'G' || c == 'C')
                {
                    count++;
                }
            }
        }
        System.out.printf("GC: %d",count);
    }
}
