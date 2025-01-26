public function someMethod():void {
  var myVariable:Number;
  // ... some code ...
  myVariable = someOtherMethod(); //Make sure someOtherMethod returns Number
  trace("value:"+ myVariable);
  // ... more code ...
}

//Ensure that someOtherMethod always returns a Number.
public function someOtherMethod():Number {
  // ... your logic here, it must return Number ...
  return 10;
}

//Handle potential errors
public function someMethod():void{
    var myVariable:* = someOtherMethod();
    if(myVariable is Number){
        trace("value:"+myVariable);
    }else{
        trace("Error: myVariable is not a Number");
    }
}