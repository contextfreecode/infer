import java.util.*;

class Infer {

    public static void main(String[] args) {
        var colors = Arrays.asList("red", "yellow", "blue");
        var colors2 = new ArrayList<String>();
        colors2.addAll(colors);
        var index = 0;
        for (var color: colors2) {
            System.out.printf("Color %s: %s\n", index, color);
            index += 1;
        }
        // handle((String)(true ? "hi" : 1));
    }

    public static void handle(Object object) {
        System.out.printf("Object: %s\n", object);
    }

    public static void handle(String string) {
        System.out.printf("String: %s\n", string);
    }

}
