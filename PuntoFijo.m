%Si es posible resuelva cada ejercicio hasta la cuarta iteración (k = 0, 1, ..., 4) y evalúe tres medidas del
%error; si no es posible, indique por qué:

%Halle la raíz de f(x) = e^x - x ------ considere g(x) = e ^-x y x0=0.

function MetodoPuntoFijo

  clear
  clc

  it = 0;
  raiz = 0;
  x0 = 0;
  tol = Inf;
  error1 = 0;
  error2 = 0;
  convergencia = true;

  while( it < 100 && tol > 0.005 && convergencia == true )

    raiz = funciong(x0);
    tol = abs(raiz - funciong(raiz));
    x0 = raiz;
    it = it + 1;

  endwhile

  disp(['La raíz es: ', num2str(raiz)]);
  disp(['La cantidad de interaciones es de: ', num2str(it)]);

  x = linspace(-5,5,100);
  y =  e.^(-x) - x;
  plot(x,y,'g');
  title( 'y = e^x - x' );
  xlabel('Eje X');
  ylabel('Eje Y');
  grid on;

endfunction
%---------------------------------------------------------------------------------
function fx = funciong(x)

 fx = e^(-x);

endfunction
