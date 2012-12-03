/* Automatic Design Flow */

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <sstream>
#include <fstream>
#include <string>

//#define Quantizer 8		//should be 8
//#define LoopNo 2		//should be 30, depends on starting period, ending period and step; maybe 40 for real image data
#define MaxSampleNo 70		//maximum number of sampling period

using namespace std;

int main() {
//	ifstream bufferin;
//	ofstream bufferout;
//	string mt0file="Testbench.v";	//Define the default result file
	string line;
	string::size_type loc1;

	int Quantizer;
	int LoopNo;

	system("vlib lib");
	system("vmap work lib");

	//Readin Sample Period Value
	float Ts[MaxSampleNo];
	ifstream File;
	string SplPrd = "./InputData/Ts_real.txt";
	File.open(SplPrd.c_str(),ifstream::in);
	int ReadIdx = 0;
	while(!File.eof())
	{
		File>>Ts[ReadIdx];
		ReadIdx ++;
	}
	File.close();


	//Readin RstClk Value
	float RstClk_Value[MaxSampleNo];
//	ifstream File;
	string RstClk = "./InputData/RstClk_real.txt";
	File.open(RstClk.c_str(),ifstream::in);
	ReadIdx=0;
	while(!File.eof())
	{
		File>>RstClk_Value[ReadIdx];	//Read in file
		ReadIdx++;
	}
	File.close();

	//Readin LoopClk1
	float LoopClk1_Value[MaxSampleNo];
	string LoopClk1 = "./InputData/LoopClk_real.txt";
	File.open(LoopClk1.c_str(),ifstream::in);
	ReadIdx=0;
	while(!File.eof())
	{
		File>>LoopClk1_Value[ReadIdx];
		ReadIdx++;
	}
	File.close();

	//Readin LoopClk2
	float LoopClk2_Value[MaxSampleNo];
	string LoopClk2 = "./InputData/LoopClk2_real.txt";
	File.open(LoopClk2.c_str(),ifstream::in);
	ReadIdx=0;
	while(!File.eof())
	{
		File>>LoopClk2_Value[ReadIdx];
		ReadIdx++;
	}
	File.close();
	cout<<"File Read in: Complete!"<<endl;
	cout<<"Please specify the number of quantizer (Max.8): "<<endl;
	cin>>Quantizer;
	cout<<"Please specify how many different sample periods (Max.30 for ideal, 65 for real image data): "<<endl;
	cin>>LoopNo;

	for (int j=0; j<Quantizer; j++){
		/*ifstream old_fir;
		ofstream new_fir;
		string fir="fir.v";
		old_fir.open(fir.c_str(),ifstream::in);
		new_fir.open("fir2.v",ios::out);
		string getNextLine2;
		string::size_type loc;
		
		do{
			getline(old_fir,getNextLine2);
			if(getNextLine2.find("Change Quantization",0)!=string::npos){
				if (j==0)
					new_fir<<"assign x_temp = {x[11:0]};"<<endl;
				else
					new_fir<<"assign x_temp = {x[11:"<<j<<"],"<<j<<"'b0};"<<endl;
			}
			else
				new_fir<<getNextLine2<<endl;
		}
		while(!old_fir.eof());
		new_fir.close();*/
	
		for (int i=0; i<LoopNo; i++){
			ifstream old_testbench;
			ofstream new_testbench;

			ifstream old_fir;
			ofstream new_fir;
		
			string testbench="testbench.v";
			old_testbench.open(testbench.c_str(),ifstream::in);	//Open original netlist
		//original.open("testbench.v",ifstream::in);
		
		/* Generate new file */
			new_testbench.open("Testbench2.v",ios::out);
			string getNextLine;	
			string::size_type loc;

			do{
				getline(old_testbench,getNextLine);	
				//read in one line from oldlist and save to getNextLine 

				if(getNextLine.find("Change Clock",0)!=string::npos){	//If found the key word
//					new_testbench<<"parameter Clock = "<<24-2*i<<";"<<endl;
					new_testbench<<"parameter Clock = "<<Ts[i]<<";"<<endl;
				}
				if(getNextLine.find("Change Input A",0)!=string::npos){	//If found the key word
					//new_testbench<<"$readmemb(\"./InputData/A_"<<Quantizer-j<<".txt\",A_in);"<<endl; //for ideal input
					//new_testbench<<"$readmemb(\"./InputData/pepper_"<<Quantizer-j<<".txt\",A_in);"<<endl;// for lena
					new_testbench<<"$readmemb(\"./InputData/sailboat_"<<Quantizer-j<<".txt\",A_in);"<<endl;// for sailboat
				}
				if(getNextLine.find("Change Input B",0)!=string::npos){	//If found the key word
					new_testbench<<"$readmemb(\"./InputData/B_"<<Quantizer-j<<".txt\",B_in);"<<endl;
				}
				if(getNextLine.find("Change Output",0)!=string::npos){
				//If found another key word
//	 			  	new_testbench<<"fp=$fopen(\"Sum_idealQ"<<8-j<<"T"<<24-2*i<<".txt\");"<<endl;
				  	//new_testbench<<"fp=$fopen(\"./Data/AutoTest/SumNoOptTradQ"<<Quantizer-j<<"T_"<<100*Ts[i]<<".txt\");"<<endl;
					//new_testbench<<"fp=$fopen(\"./Data/AutoTest/SumLenaTradQ"<<Quantizer-j<<"T_"<<100*Ts[i]<<".txt\");"<<endl;		//for lena
					//new_testbench<<"fp=$fopen(\"./Data/AutoTest/SumPepperTradQ"<<Quantizer-j<<"T_"<<100*Ts[i]<<".txt\");"<<endl;	//for pepper
					new_testbench<<"fp=$fopen(\"./Data/AutoTest/SumSailboatTradQ"<<Quantizer-j<<"T_"<<100*Ts[i]<<".txt\");"<<endl;	//for sailboat
				}
				if(getNextLine.find("Change RstClk",0)!=string::npos){	//Change reset clock
					new_testbench<<"#(Clock*"<<RstClk_Value[i]<<");"<<endl;
				}
				if(getNextLine.find("Change LoopClk1",0)!=string::npos){	//Change Loop Clock 1
					new_testbench<<"#(Clock*"<<LoopClk1_Value[i]<<");"<<endl;
				}
				if(getNextLine.find("Change LoopClk2",0)!=string::npos){	//Change Loop Clock2
					new_testbench<<"#(Clock*"<<LoopClk2_Value[i]<<");"<<endl;
				}
				else
					new_testbench<<getNextLine<<endl;
			}
		
			while(!old_testbench.eof());
			new_testbench.close();

/*			if (i==1){
				system("vlog ./netgen/par/RCA_timesim.v Testbench2.v");
				system("vmake lib > Makefile");
			}
			else
				system("make");*/
			system("vlog ./netgen/par/fir_timesim.v Testbench2.v");

			system("vsim -c -t 1ps +notimingchecks -novopt +maxdelays -do test.tcl -L F:/Xilinx/14.1/ISE_DS/ISE/verilog/mti_se/10.1/nt64/secureip -L F:/Xilinx/14.1/ISE_DS/ISE/verilog/mti_se/10.1/nt64/simprims_ver -lib work work.testbench glbl");
		}
	}	//end of for loop
	cout<<"******************************************"<<endl;
	cout<<"Simulation complete, good luck"<<endl;
	cin.get();
	return 0;
}
			
