module SRlatch_tb(

    );
    reg s,r;
    wire q1,q2;
    
    SRlatch l1(s,r,q1,q2);
    
    task initialize;
    begin
    s=0;
    r=0;
    end
    endtask
    
    task inputs(input a,b);
    begin 
    s=a;
    r=b;
    end
    endtask
    
    task delay();
    begin
    #10;
    end
    endtask
    
    initial 
    begin
    initialize;
    delay();
    inputs(0,0);
    delay();
    inputs(0,1);
    delay();
    inputs(1,0);
    delay();
    inputs(1,1);
    delay();
    end
endmodule
