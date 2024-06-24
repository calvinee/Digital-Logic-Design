// Ch09 ring_cnt.v
// ���p�ƾ�

module ring_cnt (Clk, Cr, Q);
input  Clk, Cr;		// �@�줸��J
output [3:0] Q;		// �|�줸��X

// �I�s����, �̶���
dff dff3 (Clk, Cr,  Q[2], Q[3]),		// �̶��ǩI�s�G�Ө���
    dff2 (Clk, Cr,  Q[1], Q[2]);		// (Ck, Clr, D ,Q)	

// �I�s����, �̦W�� (���ǥi�H����)
dff dff1 (.Ck(Clk), .D(Q[0]), .Q(Q[1]) , .Clr(Cr));
dff dff0 (.Clr(Cr), .Ck(Clk), .D(~Q[3]), .Q(Q[0]));
 
endmodule

