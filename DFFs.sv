module DFFs( clk, reset, D, Q);
	output logic Q;
	input logic clk, reset, D;

	parameter NumOfDff = 2;
	logic [ NumOfDff - 1 : 0 ] q;

	always_ff @( posedge clk ) begin
		if ( reset == 1'b1 ) begin
			q <= '0;
		end else begin
			q <= { q[ NumOfDff - 2 : 0], D };
		end
	end

	assign Q = q[ NumOfDff - 1 ];

endmodule 
