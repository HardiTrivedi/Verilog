module simple_latch (data, load, d_out);
	input data, load;
	output d_out;
	wire t;
	always @(load or data)
	begin
		if (!load)
			t = data;
		d_out = !t;
	end
endmodule