// Ch04 full_adder1.v
// �@�줸���[�k�� (�h�h�ԭz)

module full_add1(A, B, Ci, Co, S);
input  A, B, Ci;   // A, B, Ci �@�줸��J
output Co, S;      // S �M, Co �i��

and (AB, A, B);
and (ACi, A, Ci);
and (BCi, B, Ci);
or  (Co, AB, ACi, BCi);
xor (S, A, B, Ci);

endmodule
