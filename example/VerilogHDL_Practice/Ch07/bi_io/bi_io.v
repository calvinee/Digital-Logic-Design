// Ch07 bi_io.v
// ���V��X�J��

module bi_io (C,Di1,Di2,Do,Dio1,Dio2);
input  C,Do;		// �@�줸��J
output Di1,Di2;		// �@�줸��X
inout  Dio1,Dio2;	// �@�줸���V��X�J

// �ϥ��޿�h�h���ԭz
bufif1 (Dio1, Do, C);
buf    (Di1, Dio1); 

// �ϥ� assign �ԭz
assign Dio2 = C ? Do : 1'bz;
assign Di2 = Dio2; 

endmodule
