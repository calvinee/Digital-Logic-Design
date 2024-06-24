// Ch11 Tfile.v
// $fopen, $fclose, $fdisply �P $fwrite ���ϥ�

module Tfile;
reg [3:0] A;
integer Tx;
//-----------------------
initial
  begin
    A = 4'b1010;
    // �}���ɮ�, �ɦW result.txt, �ɮץN�X Tx
    Tx = $fopen("result.txt");		// ���5 1010 a5
    $fdisplay(Tx,"Hi, I'm Fine");	// ���Hi, I'm Fine
    $fdisplay(Tx,"%2d %b %h",5,A,8'ha5);// ���5 1010 a5
    $fwrite(Tx,4'b1010," ");		// ���10  14
    $fwrite(Tx,14,"\n");		// �����ɮ�
    $fclose(Tx);
  end

endmodule
