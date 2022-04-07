function [x, xk, it] = bisezione(f,a, b, tolx)
    fa = f(a);
    fb = f(b);
    if sign(fa) * sign(fb) >= 0
        error("Intervallo non coretto");
    else
        maxit = ceil((log2(b-a) / tolx) - 1);
    end
    it = 0;
    while it <= maxit && abs(b - a) >= tolx
        it = it + 1;
        xk(it) = a+ ((b - a)/2);
        fxk = f(xk(it));
        if fxk == 0
            break;
        elseif sign(fxk) * sign(fa) > 0
            a = xk(it);
            fa = fxk;
        elseif sign(fb) * sign(fxk) > 0
            b = xk(it);
            fb = fxk;
        end
    end
    x = xk(it);
end

