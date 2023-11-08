// Exercise 1. Write a test method that calls your Max method from Exercise 0 and then asserts something about the result.
method Max(a:int, b:int) returns(c:int)
    //pre-condition
    ensures a < b ==> c == b
    ensures b <= a ==> c == a
{
    // actual defination
        if (a <b){
            return b;
        }else{
            return a;
    }
} 

method Testing()
{
	var v := Max(3, 5);
	assert v == 5;
}