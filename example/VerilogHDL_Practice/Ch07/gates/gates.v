// Ch07 gates.v
// �޿�h (�h�h�y�z�Passign�y�z)

module gates (I1, I0, Not_0, Not_1, And_0, And_1, Nand_0, Nand_1,
       Or_0, Or_1, Nor_0, Nor_1, Xor_0, Xor_1, Xnor_0, Xnor_1);
input  I1,I0;
output Not_0, Not_1, And_0, And_1, Nand_0, Nand_1,
       Or_0, Or_1, Nor_0, Nor_1, Xor_0, Xor_1, Xnor_0, Xnor_1;

// �Ϲh
not (Not_0, I0);
assign Not_1 = ~I0;

// �ιh
and (And_0, I1, I0);
assign And_1 = I1 & I0;

// �Ϥιh
nand (Nand_0, I1, I0);
assign Nand_1 = ~(I1 & I0);

// �ιh
or (Or_0, I1, I0);
assign Or_1 = I1 | I0;

// �ϩιh
nor (Nor_0, I1, I0);
assign Nor_1 = ~(I1 | I0);

// �����ιh
xor (Xor_0, I1, I0);
assign Xor_1 = I1 ^ I0;

// �����ϩιh
xnor (Xnor_0, I1, I0);
assign Xnor_1 = I1 ~^ I0;

endmodule
