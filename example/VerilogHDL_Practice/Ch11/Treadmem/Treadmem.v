// Ch11 Treadmem.v
// $freadmem ���ϥ�

module Treadmem;
reg [3:0] A [0:7];	// �ŧi A �� 8 �ӥ|�줸���O����
integer i;
//-----------------------
initial
  begin
// �� data.txt Ū�J���, ��m�� A[2]~A[5]
    $readmemb("data.txt",A,2,5);
// ��ܰO���餺�e
    for (i=0;i<=7;i=i+1)
      $display("Memory [%2d] : %b",i,A[i]);
  end
endmodule
