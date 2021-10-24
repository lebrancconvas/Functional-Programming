// 1.) Pure Function
function shell(a, b) {
    console.log(a * b);
}

shell(2, 5);

// 2.) Impure Function
const adder = 5;

function shellBean(a) {
    console.log(a * adder);
}

shellBean(10);

// 3.) First Class function
// 3.1) Assign Function in the variable. 
const counterRecall = function(a) {
    return a * 1000;
}

console.log(counterRecall(2))

// 4.) Higher-Order Function
// 4.1) Function Return Function. 
function higherOrder(a, b) {
    return function() {
        return a + b;
    }
}

const higher = higherOrder(1, 2);
console.log(higher());

// 4.2) Function as arguments of Function.
function addModifier(a, b) {
    return a + b;
}

function multiplier(add, a, b) {
    return add(a, b) * add(a, b);
}

console.log(multiplier(addModifier, 1, 2));