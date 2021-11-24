function T = fcn_Tmatrix(a,al,d,th)
#Build the matrix transform
    n = length(a);
    T = zeros(4,4,n);
    for i=1:n
        cth = cos(th(i)); 
        sth = sin(th(i));
        cal = cos(al(i));
        sal = sin(al(i));
        [cth,sth,cal,sal]=...
        fcn_round0(cth,sth,cal,sal,1e-10);
        T(:,:,i) = ...
        [cth,       -sth,       0,      a(i); 
         sth*cal,   cth*cal,    -sal,   -d(i)*sal; 
         sth*sal,   cth*sal,     cal,    d(i)*cal; 
         0,         0,          0,      1];
    end
endfunction
