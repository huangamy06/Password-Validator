import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PasswordValidator {

    public static void main(String[] args) {
        //input from user;
        Scanner myObj = new Scanner(System.in);
        System.out.print("Please enter a password: ");
        String input = myObj.nextLine();

        while (!isPasswordValid(input)) {
            System.out.print("Please enter a valid password: ");
            input = myObj.nextLine();
        }
        myObj.close();

    }

    public static boolean isPasswordValid(String password) {

        boolean isValid = false;
        boolean ansLen = false, hasNum = false, hasUpper = false,
                hasLower = false, hasSymbol = false;

        //checking length
        if (password.length() >= 8) {
            ansLen = true;
        } else {
            System.out.println("Password length cannot be less than 8");
        }

        for (int i = 0; i < password.length(); i++) {
            char letter = password.charAt(i);

            //checking if Upper-case count met
            if (Character.isUpperCase(letter)) {
                hasUpper = true;
            }

            //checking if number count met
            else if (Character.isDigit(letter)) {
                hasNum = true;
            }
            //checking if lower-case count met
            else if (Character.isLowerCase(letter)) {
                hasLower = true;

            }

        }
        //checking if a symbol present

        Pattern pattern = Pattern.compile("[^a-zA-Z0-9]");
        Matcher matcher = pattern.matcher(password);
        hasSymbol = matcher.find();

        //Printing Error message
        if (!hasSymbol) {
            System.out.println("Password needs a special character");
        }

        if (!hasNum) {
            System.out.println("Password needs a digit");
        }

        if (!hasUpper) {
            System.out.println("Password needs a Upper-case letter");
        }

        if (!hasLower) {
            System.out.println("Password needs a lower-case letter");
        }

        if (ansLen && hasUpper && hasLower && hasSymbol) {
            isValid = true;
            System.out.println("Password is Strong");
        }

        return isValid;

    }
}

