module cla_4bit(
    input  wire [3:0] a  ,
    input  wire [3:0] b  ,
    input  wire       cin,
    output reg  [3:0] s  ,
    output reg        cout
);

    reg [3:0] p, g;
    reg [3:0] c;
    
    always @(*) begin 
        p = a ^ b; // Propagate
        g = a & b; // Generate

        c[0] = cin;
        c[1] = g[0] | (p[0] & c[0]);
        c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c[0]);
        c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c[0]);
        cout = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c[0]);

        s    = p ^ c; // Sum
        //cout = (p[3] & c[3]) | g[3];
    end

endmodule