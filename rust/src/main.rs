fn main() {
    let colors = vec!["red", "yellow", "blue"];
    let mut colors2 = vec![];  // or Vec::new()
    colors2.extend(colors.clone());
    for (index, color) in colors2.iter().enumerate() {
        println!("Color {}: {}", index, color);
    }
}

// fn to_uppercase<Str: Into<String>>(color: Str) -> String {
//     color.into().to_uppercase()
// }
