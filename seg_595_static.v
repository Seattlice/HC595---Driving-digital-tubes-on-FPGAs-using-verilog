`timescale  1ns/1ns

module  seg_595_static
(
    input   wire            sys_clk     ,  
    input   wire            sys_rst_n   ,  

    output  wire            stcp        ,   
    output  wire            shcp        ,   
    output  wire            ds          ,  
    output  wire            oe              
);
wire    [5:0]   sel;
wire    [7:0]   seg;
//实例化
seg_static  seg_static_inst
(
    .sys_clk     (sys_clk   ),   
    .sys_rst_n   (sys_rst_n ),   

    .sel         (sel       ),   
    .seg         (seg       )    
);
hc595_ctrl  hc595_ctrl_inst
(
    .sys_clk     (sys_clk  ),  
    .sys_rst_n   (sys_rst_n),  
    .sel         (sel      ),   
    .seg         (seg      ),   

    .stcp        (stcp     ),   
    .shcp        (shcp     ),   
    .ds          (ds       ),   
    .oe          (oe       )   
);
endmodule
