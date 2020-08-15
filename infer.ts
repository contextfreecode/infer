// See https://brianmckenna.org/blog/row_polymorphism_isnt_subtyping

type Ab = { a: number; b: number };

function f<AbPlus extends Ab>(thing: AbPlus) {
  return { ...thing, sum: thing.a + thing.b };
}

function g(thing: Ab) {
  return f(thing);
}

function main() {

  let answer = f({ a: 1, b: 2, c: 100 });
  console.log(answer);

  let answer2 = g({ a: 1, b: 2, c: 100 } as Ab);
  console.log(answer2);

}

main();
