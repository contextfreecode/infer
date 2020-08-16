// See https://brianmckenna.org/blog/row_polymorphism_isnt_subtyping

type Ab = { a: number; b: number };

function main() {
  let abc = { a: 1, b: 2, c: 100 };
  let result = withSumAb(abc);
  console.log(result);

  let resultPlus = withSum(abc);
  console.log(resultPlus);

  let resultPlus2 = withSum2(abc);
  console.log(resultPlus2);
}

function withSumAb(ab: Ab) {
  return withSum(ab);
}

function withSum<AbPlus extends Ab>(abPlus: AbPlus) {
  return { ...abPlus, sum: abPlus.a + abPlus.b };
}

function withSum2<Plus>(abPlus: Ab & Plus) {
  return withSum(abPlus);
}

main();
