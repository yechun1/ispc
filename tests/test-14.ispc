
export uniform int width() { return programCount; }


export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    float a = aFOO[programIndex];
    RET[programIndex] = (a == 1.) ? a : 2.*a;
}


export void result(uniform float RET[]) {
    RET[programIndex] = 2 + 2*programIndex;
    RET[0] = 1;
}
