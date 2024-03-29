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

let natNumber = [1, 2, 3, 4, 5, 6, 7, 8, 9];
console.log(natNumber.filter(x => x % 2 == 0)); // Filter The Elements that is even numbers. 
console.log(natNumber.map(x => x * 2)); // Map *2 to every element. 
console.log(natNumber.reduce((x, y) => x + y)); // Find the sum of every elements in array.

//Other Built-In Higher-Order Function. 
const people = [{
    name: "Josh",
    atk: 12
}, {
    name: "Macky",
    atk: 20
}, {
    name: "Bravo",
    atk: 50
}]

//forEach 
people.forEach(member => {
    console.log(`${member.name}: ${member.atk}`)
})

//find 
const highPeople = people.find(member => member.atk > 30);
console.log(highPeople);

//findIndex
const highPeopleIndex = people.findIndex(member => member.atk > 30);
console.log(highPeopleIndex);

//every
const isNoob = people.every(member => member.atk < 20);
console.log(isNoob);

//some 
const hasNoob = people.some(member => member.atk < 20);
console.log(hasNoob);

function myFilter(array, callBack) {
    const result = [];
    for (let i = 0; i < array.length; i++) {
        if (callBack() === true) {

        }
    }
}

function outer() {
    const name = "outer";
    return function inner() {
        console.log(`Outer Name: ${name}`);
    }
}

const innerFunction = outer();
innerFunction();

let counter = 0;

function useCounter() {
    counter++;
    console.log(`Counter: ${counter}`);
}

useCounter();
useCounter();