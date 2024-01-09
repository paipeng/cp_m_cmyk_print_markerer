function m = gen_cmyk_marker()
    % CMYK
    m = ones(150, 480, 4);
    rs = 80;
    offset_x = 120;
    offset_y = 21;
    % C
    m(offset_y:offset_y - 1+rs, offset_x:offset_x-1+rs,1) = 0;
    % M
    m(offset_y:offset_y - 1+rs,offset_x+rs:offset_x-1+rs*2, 2) = 0;
    % Y
    m(offset_y:offset_y - 1+rs,offset_x+rs*2:offset_x-1+rs*3, 3) = 0;
    % K
    m(offset_y:offset_y - 1+rs,offset_x+rs*3:offset_x-1+rs*4, 4) = 0;
    
    
    % values
    N=100;
    D=ones(N,N);
    i0=50;
    j0=50;
    R=40;
    % filter indise circle
    [x,y]=meshgrid(1:N);
    D((x-i0).^2+(y-j0).^2<R^2)=0;
    
    R = 39
    [x,y]=meshgrid(1:N);
    D((x-i0).^2+(y-j0).^2<R^2)=1;
    
    D(51,1:N) = 0;
    D(1:N, 51) = 0;
    
    for c = 1:4
        m(offset_y-9:offset_y-10+N, 11:10+N, c) = D;
    end
end