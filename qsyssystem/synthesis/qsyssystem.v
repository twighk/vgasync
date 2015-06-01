// qsyssystem.v

// Generated using ACDS version 13.0sp1 232 at 2015.06.01.18:05:50

`timescale 1 ps / 1 ps
module qsyssystem (
		input  wire  reset_reset_n, //     reset.reset_n
		output wire  clock_500_clk, // clock_500.clk
		input  wire  clk_in_clk     //    clk_in.clk
	);

	wire    rst_controller_reset_out_reset; // rst_controller:reset_out -> altpll_0:reset

	qsyssystem_altpll_0 altpll_0 (
		.clk       (clk_in_clk),                     //       inclk_interface.clk
		.reset     (rst_controller_reset_out_reset), // inclk_interface_reset.reset
		.read      (),                               //             pll_slave.read
		.write     (),                               //                      .write
		.address   (),                               //                      .address
		.readdata  (),                               //                      .readdata
		.writedata (),                               //                      .writedata
		.c0        (clock_500_clk),                  //                    c0.clk
		.areset    (),                               //        areset_conduit.export
		.locked    (),                               //        locked_conduit.export
		.phasedone ()                                //     phasedone_conduit.export
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS        (1),
		.OUTPUT_RESET_SYNC_EDGES ("deassert"),
		.SYNC_DEPTH              (2),
		.RESET_REQUEST_PRESENT   (0)
	) rst_controller (
		.reset_in0  (~reset_reset_n),                 // reset_in0.reset
		.clk        (clk_in_clk),                     //       clk.clk
		.reset_out  (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req  (),                               // (terminated)
		.reset_in1  (1'b0),                           // (terminated)
		.reset_in2  (1'b0),                           // (terminated)
		.reset_in3  (1'b0),                           // (terminated)
		.reset_in4  (1'b0),                           // (terminated)
		.reset_in5  (1'b0),                           // (terminated)
		.reset_in6  (1'b0),                           // (terminated)
		.reset_in7  (1'b0),                           // (terminated)
		.reset_in8  (1'b0),                           // (terminated)
		.reset_in9  (1'b0),                           // (terminated)
		.reset_in10 (1'b0),                           // (terminated)
		.reset_in11 (1'b0),                           // (terminated)
		.reset_in12 (1'b0),                           // (terminated)
		.reset_in13 (1'b0),                           // (terminated)
		.reset_in14 (1'b0),                           // (terminated)
		.reset_in15 (1'b0)                            // (terminated)
	);

endmodule
