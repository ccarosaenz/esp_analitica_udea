namespace py ventas

struct Ventas {
    1: i32 id,
    2: i64 id_cliente,
    3: string nombre_cliente,
    4: string producto,
    5: i32 cantidad,
    6: i32 precio,
    7: string metodo_pago,
    8: string canal,
    9: string tienda,
    10: string fecha_realizacion,
    11: i32 calificacion,
    12: string comentario,
}

exception InvalidOperation {
    1: string message
}

service TotalVenta {
    string msg(),
    string sendEmp(1: Ventas newVent),
    i32 calculate(1: i32 cantidad, 2: i32 precio) throws (1: InvalidOperation ouch),
}
