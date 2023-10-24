package data;

import com.github.javafaker.Faker;

public class Helper {
    static Faker fs = new Faker();

    public static String getFirstName() {
        return fs.name().firstName();
    }

    public static String getLastName() {
        return fs.name().lastName();
    }
}
