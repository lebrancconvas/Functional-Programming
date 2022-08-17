//Example 1: Hello World N Times. 
function helloWorldNTimes(n) {
    if (n < 1) return;
    console.log("Hello World");
    helloWorldNTimes(n - 1);
}

helloWorldNTimes(10);

//Example 2: Reverse String. 
function reverseString(word) {
    if (word.length == 1) return word;
    const [firstString] = word;
    const remaindingString = word.substring(1);
    return reverseString(remaindingString) + firstString;
}

console.log(reverseString("Hello World"));