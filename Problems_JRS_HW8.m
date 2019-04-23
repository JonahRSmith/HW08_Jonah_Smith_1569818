%Matrix Mulitplication Code
%ijk
array_elems = 50:50:700;
times = zeros(1,length(array_elems));
for pp=1:length(array_elems)
    n = array_elems(pp);
    a = rand(n);
    b = rand(n);
    c = zeros(n);
    tic;
    for i=1:n
        for j=1:n
            for k=1:n
                c(i, j) = c(i, j) + a(i + k)*b(k,j);
            end
        end
    end
    times(pp)=toc;
end
ijk = times ./ array_elems;

%kij
array_elems = 50:50:700;
times = zeros(1,length(array_elems));
for pp=1:length(array_elems)
    n = array_elems(pp);
    a = rand(n);
    b = rand(n);
    c = zeros(n);
    tic;
    for k=1:n
        for i=1:n
            for j=1:n
                c(i, j) = c(i, j) + a(i + k)*b(k,j);
            end
        end
    end
    times(pp)=toc;
end
kij = times ./ array_elems;

%jki
array_elems = 50:50:700;
times = zeros(1,length(array_elems));
for pp=1:length(array_elems)
    n = array_elems(pp);
    a = rand(n);
    b = rand(n);
    c = zeros(n);
    tic;
    for j=1:n
        for k=1:n
            for i=1:n
                c(i, j) = c(i, j) + a(i + k)*b(k,j);
            end
        end
    end
    times(pp)=toc;
end
jki = times ./ array_elems;

figure();
hold on;
plot(array_elems, ijk);
plot(array_elems, jki);
plot(array_elems, kij);