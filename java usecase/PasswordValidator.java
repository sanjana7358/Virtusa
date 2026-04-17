import java.util.Scanner;
public class PasswordValidator {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while (true) {
            System.out.print("Enter password: ");
            String password = sc.nextLine();
            boolean hasUpper = false;
            boolean hasDigit = false;
            for (int i = 0; i < password.length(); i++) {
                char ch = password.charAt(i);
                if (Character.isUpperCase(ch)) {
                    hasUpper = true;
                }
                if (Character.isDigit(ch)) {
                    hasDigit = true;
                }
            }
            if (password.length() < 8) {
                System.out.println("Too short (min 8 characters)");
            } else if (!hasUpper) {
                System.out.println("Missing uppercase letter");
            } else if (!hasDigit) {
                System.out.println("Missing digit");
            } else {
                System.out.println("✅ Password is strong!");
                break;
            }
        }
        sc.close();
    }
}