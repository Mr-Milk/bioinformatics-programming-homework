public class CountBase {
    public static void main(String[] args) {
        String testSeq = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC";
        int numA = 0;
        int numT = 0;
        int numC = 0;
        int numG = 0;
        for (int i = 0; i < testSeq.length(); i++) {
            char temp = testSeq.charAt(i);
            switch (temp) {
                case 'A':
                    numA++;
                    break;
                case 'T':
                    numT++;
                    break;
                case 'C':
                    numC++;
                    break;
                case 'G':
                    numG++;
                    break;
                default:
                    break;
            }
        }
        System.out.printf("A: %d \n T: %d \n C: %d \n G: %d \n", numA, numT, numC, numG);
    }
}