pragma circom 2.0.0;

// [assignment] Modify the circuit below to perform a multiplication of three signals


template Multiplier2 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;  
   signal output c;  

   // Constraints.  
   c <== a * b;  
}

template Multiplier3 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;
   signal input c;
   signal output d; 
   component m1 = Multiplier2();
   component m2 = Multiplier2();

   // Constraints.  
   // d <== a * b * c;  
   m1.a <== a;
   m1.b <== b;
   m2.a <== m1.c;
   m2.b <== c;
   d <== m2.c;
}

component main = Multiplier3();