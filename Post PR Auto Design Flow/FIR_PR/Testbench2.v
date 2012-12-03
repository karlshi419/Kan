`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:44:51 05/07/2012
// Design Name:   fir
// Module Name:   G:/FPGA/FIR_img/FIR1/testbench.v
// Project Name:  FIR1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fir
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg [11:0] X_in;
	reg clk;
	reg nReset;

	// Outputs
	wire [11:0] Y_out;

	// Instantiate the Unit Under Test (UUT)
	fir uut (
		.X_in(X_in), 
		.clk(clk), 
		.nReset(nReset), 
		.Y_out(Y_out)
	);
	
	//Circuit parameters
parameter Clock = 2;
	//Change Clock
	//parameter Clock =2.8;
	
	integer fp;
	integer RecNo = 0;		//Recording loop Number
	integer loopNo =0;
	parameter Permutation = 262144;	//For impage processing, 512*512=262144
	//parameter Permutation = 9000;		//For ideal input simulation
	
	reg [7:0] A_in[Permutation-1:0];

	initial begin
		// Initialize Inputs
		X_in = 0;
		clk = 0;
		nReset = 0;
		
		//$readmemb("./lena.txt",temp_x); //read in file, for image processing
$readmemb("./InputData/sailboat_1.txt",A_in);
		//Change Input A
		//$readmemb("./A_in.txt",temp_x); //read in file, for ideal input simulation

		// Wait 100 ns for global reset to finish
		#(Clock*100);
        
		// Add stimulus here
		nReset = 1;
//		#(Clock-SetTime);
		#Clock;
		for (loopNo=0;loopNo<Permutation;loopNo=loopNo+1)
		begin
			X_in = A_in[loopNo];
			#Clock;
//			reset;
		end
		
		#100;
		$finish;

	end
	
	initial begin	//recording results
		$timeformat(-9,3,"",8);		//Defination of time format
		
fp=$fopen("./Data/AutoTest/SumSailboatTradQ1T_200.txt");
		//Change Output
		//fp=$fopen("./MATLAB/Data/C1NoRst/SimT.txt");			//For image processing
		
		//fp=$fopen("Sim_result_ErrorFree.txt");
		
		#(Clock*100);								//wait for global reset to finish
		//RecNo=1;
#(Clock*7);
		//Change RstClk
		//#(Clock*5);
		for(RecNo=0;RecNo<Permutation;RecNo=RecNo+1) 
		begin 
#(Clock*0.5);
			//Change LoopClk1
			//#(Clock*0.5);	
			$fwrite(fp,"%d\n",Y_out);
#(Clock*0.5);
			//#(Clock*0.5);
		end
	end
		
	
	always begin
		#(Clock*0.5) clk=~clk;
	end
	
	task reset;
	reg [11:0] temp_A;
	begin
		temp_A = X_in;
		X_in = 'b0;
		#(Clock);
		X_in = temp_A;
	end
	endtask
      
endmodule


