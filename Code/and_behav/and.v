module ANDbhv (x,y,z);
input x,y;
output z;
reg z;

always @(x or y) begin
    if((x==1)&&(y==1))
    z=1;
    else
    z=0;
end
endmodule