//Pure Function
function shell(a, b) {
    console.log(a * b);
}

shell(2, 5);

//Impure Function
const adder = 5;

function shellBean(a) {
    console.log(a * adder);
}

shellBean(10);

//Function Return Function. 
function higherOrder(a, b) {
    return function() {
        return a + b;
    }
}

const higher = higherOrder(1, 2);
console.log(higher());