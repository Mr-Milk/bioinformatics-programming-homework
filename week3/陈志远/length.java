import java.io.*;

public class length {
    public static void main(String[] args) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(new File("E:\\SCU49845.gb")));
        BufferedReader reader = new BufferedReader(new InputStreamReader(bufferedInputStream, "utf-8"), 10485760);
        int length = 0;
        boolean open = false;
        String line;
        String word;

        while (reader.ready()){
            line = reader.readLine();
            if (line.length() >= 5){
                word = line.substring(0,6);
            }
            else {
                word = line;
            }

            if (word.equals("ORIGIN")){
                open = true;
                continue;
            }
            if(open){
                char[] chars = line.toCharArray();
                for (char ch = 'a'; ch <= 'z'; ch++){
                    int count;
                    for (count = 0; count < line.length(); count++){
                        if (ch == chars[count]){
                            length++;
                        }
                    }
                }
            }
        }
        System.out.printf("Length: %d", length);
    }
}
