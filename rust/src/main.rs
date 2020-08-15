fn main() {
    let colors = vec!["red", "yellow", "blue"];
    let mut colors2 = vec![];
    colors2.extend(colors);
    for (index, color) in colors2.iter().enumerate() {
        println!("Color {}: {}", index, to_uppercase(*color));
    }
}

fn to_uppercase<Str: Into<String>>(color: Str) -> String {
    color.into().to_uppercase()
}
