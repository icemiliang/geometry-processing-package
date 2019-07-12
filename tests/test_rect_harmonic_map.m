addpath(genpath("../"));

[face,vertex, extra] = read_obj("face_dense.obj");
corner = [2186; 5086; 2595; 29];
uv = rect_harmonic_map(face,vertex,corner);
uv = [uv, zeros(size(uv,1),1)];
write_obj('output.obj', face, uv, extra);
