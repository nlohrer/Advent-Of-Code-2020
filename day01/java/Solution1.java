import java.util.Scanner;
import java.nio.file.Paths;
import java.util.ArrayList;

public class Solution1 {
    public static void main(String[] args) {
        ArrayList<Integer> nums = new ArrayList<>();

        try (Scanner scanner = new Scanner(Paths.get("input.txt"))) {
            while (scanner.hasNextLine()) {
                int num = Integer.valueOf(scanner.nextLine());
                nums.add(num);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
        System.out.println(checkAndReturnResult(nums));
    }

    public static int checkAndReturnResult(ArrayList<Integer> nums) {
        for (int num1 : nums) {
            for (int num2 : nums) {
                if (num1 + num2 == 2020) {
                    return num1 * num2;
                }
            }
        }
        return 1;
    }
}