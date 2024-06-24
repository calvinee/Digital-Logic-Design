// Ch07 two_com_gate.v
// 2's �ɼ� (�޿�h�y�z)

module two_com_gate (I, O);
input  [3:0] I;		// I �|�줸��J
output [3:0] O;		// O �|�줸��X
wire   I10, I210;	// �ŧiI10, I210 �s���u���

// �޿�h�y�z
buf (O[0], I[0]);
xor (O[1], I[1], I[0]);
or  (I10,  I[1], I[0]);
xor (O[2], I[2], I10);
or  (I210, I[2], I10);
xor (O[3], I[3], I210);

endmodule
