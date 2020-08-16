// See https://brianmckenna.org/blog/row_polymorphism_isnt_subtyping

type Ab = { a: number; b: number };

function main() {
  let abc = { a: 1, b: 2, c: 100 };
  let result = withSumAb(abc);
  console.log(result);

  let resultPlus = withSum(abc);
  console.log(resultPlus);
}

function withSumAb(ab: Ab) {
  return withSum(ab);
}

function withSum<AbPlus extends Ab>(abPlus: AbPlus) {
  return { ...abPlus, sum: abPlus.a + abPlus.b };
}

main();
