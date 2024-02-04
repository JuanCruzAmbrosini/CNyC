%1) Dada la función f(x) = x^3 - 27 y los intervalos de la variable x, I1 = [1,5; 4]; I2 = [4, 6],
%a) aplicando la condición de inicialización del Método de Bisección, justifique en qué intervalo f(x)
%tiene una raíz.
%b) Aplicando el algoritmo del Método de Bisección, comprobar que las primeras 10 iteraciones son:

function BiseccionAyB

  clear
  clc

  a = 1.5;
  b = 4;
  c = 4;
  d = 6;

  fa = a^3 -27;
  fb =b^3 -27;
  fc = c^3 -27;
  fd = d^3 -27;

  if(fa*fb < 0)

    disp("La función tiene una raíz en el primer intervalo dado.")

    dividirYEncontrarIntervalo(a,b);

  elseif(fc*fd < 0)

    disp("La función tiene una raíz en el segundo intervalo dado.")

    dividirYEncontrarIntervalo(c,d);

   else

    disp("No se puede saber por este método si la función tiene o no tiene una raíz en los intervalos dados.")

endif

  x = linspace(-5, 5, 200);
 y = x.^3 - 27;

 plot(x,y,'r');

 title('F(x)');
 xlabel('Eje x');
 ylabel('Eje y');
 grid on;

endfunction

function dividirYEncontrarIntervalo (a,b)

  it = 1;
  tol = 10;
  mi = 0;
  abscisaAnterior = 0;

  while (it <= 100 && tol >0.05)

    mi = (a+b)/2;

    fmi = mi^3 -27;
    fa = a^3 -27;
    fb =b^3 -27;

     tol = abs(fmi);

    if(fmi*fa < 0)

     b = mi;

    elseif(fmi*fb < 0)

      a = mi;

    endif

    it = it +1;

  endwhile

  disp("La raíz es: "),mi
  disp(['La cantidad de iteraciones es: ',num2str(it)]);

 endfunction
