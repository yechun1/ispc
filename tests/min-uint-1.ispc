
export uniform int width() { return programCount; }

export void f_fu(uniform float r[], uniform float a[], uniform float b) {
    #pragma ignore warning(perf)
    unsigned int i = (unsigned int)a[programIndex];
    #pragma ignore warning(perf)
    r[programIndex] = min((unsigned int)2, i);
    r[width() - 1] = min((unsigned int)10, (unsigned int)b);
}

export void result(uniform float r[]) { 
    r[programIndex] = 2;
    r[0] = 1;
    r[programCount - 1] = 5;
}


