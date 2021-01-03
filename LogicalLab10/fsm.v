`timescale 1ns / 1ps
module fsm(
	
  input confirm,
  input request,
  input clk,
  input reset,
  input [3:0]passData,
  //enable even
	output reg en_left ,
	//enable odd
	output reg en_right ,
  output reg [3:0]Din
    );
	 
  reg [2:0] state;
  parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b101, s3 = 3'b111, s4 = 3'b110;
  //S0 = inactive
  //S1 = active
  //S2 = request
  //S3 = trap
  //S4 = saving mode
   
	reg passHolder;
	reg resetPass;
	wire ouputPassDetector;
	SequenceDetector1010 passDetector(
		.x(passHolder),
		.clk(clk),
		.reset(resetPass),
		.z(ouputPassDetector)
    );;
	reg counter = 0;
	
  always @ (negedge clk , posedge reset)
    if(reset)
      begin
        //set enables to 0
		  en_left <= 1'b0;
        en_right <= 1'b0;
		  //reset the register
        Din <= 4'b0000;
		  //go back to the starting state
        state = 3'b000;
      end
    else
      case(state)
        s0 : 
			  //the machine is in inactive state
			  if (request) 
					begin 
					state = s1;  
					//goes to the active state
				   en_left <= 1'b0;
				   en_right <= 1'b0;
				  end
        s1 :
				//the is in active state
				if(request==1'b0)  
						begin 
						state = s0;  
						//make sure enables are off
					   en_left <= 1'b0;
					   en_right <= 1'b0;
					  end 
				else if(confirm==1'b1)
					//the machine should check the pass
				  begin
						if(counter == 0)
							begin
							resetPass=1'b1;
							#10
							resetPass=1'b0;
							passHolder= passData[0];
							counter =1;
							end 
						else if(counter == 1)
							begin 
							passHolder= passData[1];
							counter = 2;
							end
						else if(counter == 2)
							begin 
							passHolder= passData[2];
							counter =3;
							end
						else if(counter == 3)
							begin 
							passHolder= passData[3];
							counter = 4;
							end
						else
							begin
							counter = 0;

							if(ouputPassDetector == 1'b1)
								state = s2;
							else
								state = s3;
							end
				  end
			s2 :
			  if(~request)  state = s0;
			  else if(confirm)
				 state = s4;
	 
			s3 :
				if(~request)  state = s0;
			s4 :
			  if(~request)  state = s0;
			  else
				begin
					Din <= passData;
					en_left <= ~passData[0];
					en_right <= passData[0];
				end 			
    endcase  

endmodule
