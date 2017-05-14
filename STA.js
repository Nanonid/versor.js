var STA = versor.create({
        metric:[1,-1,-1,-1],
        types:[
                {name:"Sca", bases:["s"]},
                {name:"GMV", bases:["s","e1","e2","e3","e4","e12","e13","e14","e23","e24","e34","e123","e124","e134","e234","e1234"]},
        ]
});
STA.recipbasis = function(a) {
        var b=STA.GMV(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0).add(a);
        var g=STA.GMV(1,1,-1,-1,-1,-1,-1,-1,1,1,1,1,1,1,-1,-1);
        for (var i=0; i<16; i++) b[i]*=g[i];
        return b.cast(a);
}
STA.mag = function(a) { return sqrt(STA.mag2(a)); }
STA.mag2 = function(a) { return a.ip(STA.recipbasis(a.reverse()))[0]; }
STA.inverse = function(a) {
        var m2=STA.mag2(a);
        if (m2===0) return NaN;
        else return a.gp(m2);
}
