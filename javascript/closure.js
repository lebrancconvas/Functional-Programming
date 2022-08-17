//Closure Function 
function outer() {
    const name = "Outer";

    return function inner() {
        console.log(name);
    }
}

const outFunction = outer();
outFunction();

//Stateful Function 
function adder(numAdd) {
    return function(a) {
        return a + numAdd;
    }
}

const addFive = adder(5);
const addTwenty = adder(20);
const addHundred = adder(100);

console.log(addHundred(1000));
console.log(addTwenty(1000));