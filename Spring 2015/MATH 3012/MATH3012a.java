public class MATH3012a {
    public static void main(String[] args) {
        for (int n = 0; n < 12; n++) {
            int sum = 0;
            for (int k = 0; k <= n; k++) {
                sum += comb(n, k) * comb(2 * n, n + k);
            }
            System.out.println(sum);
        }
    }
    
    public static long comb(long n, long k) {
        long ret = 1;
        for (int i = 0; i < k; i++) {
            ret *= (n - i);
            ret /= (i + 1);
        }
        return ret;
    }
}