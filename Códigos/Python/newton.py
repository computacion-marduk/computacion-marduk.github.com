def newton (f, df, x_inicial, epsilon ):
    """
    Metodo de Newton
    
    """

    x = x_inicial - f(x_inicial)/df(x_inicial)

    while abs(x - x_inicial) > epsilon: 
        x_inicial = x 
        x = x_inicial - f(x_inicial)/df(x_inicial)
    return x
