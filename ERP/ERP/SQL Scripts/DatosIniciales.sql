USE ERP;

/*EMPRESA*/

INSERT INTO CONFIG.EMPRESA(EMPRESA, NOMBRE) VALUES (1, 'TEST');

/*MODULO*/
INSERT INTO CONFIG.MODULO(EMPRESA, MODULO, DESCRIPCION, VERSION) VALUES(1, 'ADMIN', 'ADMINISTRACION DE SISTEMA', '1.0');
INSERT INTO CONFIG.MODULO(EMPRESA, MODULO, DESCRIPCION, VERSION) VALUES(1, 'CI', 'CONTROL DE INVENTARIO', '1.0');
INSERT INTO CONFIG.MODULO(EMPRESA, MODULO, DESCRIPCION, VERSION) VALUES(1, 'FA', 'FACTURACION', '1.0');
INSERT INTO CONFIG.MODULO(EMPRESA, MODULO, DESCRIPCION, VERSION) VALUES(1, 'POS', 'PUNTO DE VENTA', '1.0');
INSERT INTO CONFIG.MODULO(EMPRESA, MODULO, DESCRIPCION, VERSION) VALUES(1, 'CO', 'COMPRAS', '1.0');
INSERT INTO CONFIG.MODULO(EMPRESA, MODULO, DESCRIPCION, VERSION) VALUES(1, 'CC', 'CUENTAS POR COBRAR', '1.0');
INSERT INTO CONFIG.MODULO(EMPRESA, MODULO, DESCRIPCION, VERSION) VALUES(1, 'CP', 'CUENTAS POR PAGAR', '1.0');
INSERT INTO CONFIG.MODULO(EMPRESA, MODULO, DESCRIPCION, VERSION) VALUES(1, 'CONTA', 'CONTABILIDAD', '1.0');

/*OPCIONES POR MODULO*/
INSERT INTO CONFIG.MODULO_OPCION(EMPRESA, MODULO, OPCION) VALUES(1, 'ADMIN', 'ABRIR');
INSERT INTO CONFIG.MODULO_OPCION(EMPRESA, MODULO, OPCION) VALUES(1, 'ADMIN', 'USUARIOS Y PERMISOS');

INSERT INTO CONFIG.MODULO_OPCION(EMPRESA, MODULO, OPCION) VALUES(1, 'CI', 'ABRIR');
INSERT INTO CONFIG.MODULO_OPCION(EMPRESA, MODULO, OPCION) VALUES(1, 'CI', 'ARTICULOS');

INSERT INTO CONFIG.MODULO_OPCION(EMPRESA, MODULO, OPCION) VALUES(1, 'POS', 'ABRIR');

INSERT INTO CONFIG.MODULO_OPCION(EMPRESA, MODULO, OPCION) VALUES(1, 'FA', 'ABRIR');

INSERT INTO CONFIG.MODULO_OPCION(EMPRESA, MODULO, OPCION) VALUES(1, 'CO', 'ABRIR');

INSERT INTO CONFIG.MODULO_OPCION(EMPRESA, MODULO, OPCION) VALUES(1, 'CC', 'ABRIR');

INSERT INTO CONFIG.MODULO_OPCION(EMPRESA, MODULO, OPCION) VALUES(1, 'CP', 'ABRIR');

INSERT INTO CONFIG.MODULO_OPCION(EMPRESA, MODULO, OPCION) VALUES(1, 'CONTA', 'ABRIR');

/*USUARIO*/
INSERT INTO CONFIG.USUARIO(EMPRESA, USUARIO, NOMBRE) VALUES(1, 'ADMIN', 'ADMINISTRADOR DE BASE DE DATOS');

/*PERMISO*/
INSERT INTO CONFIG.PERMISO(EMPRESA, MODULO, OPCION, USUARIO, PERMISO) VALUES(1, 'ADMIN', 'ABRIR', 'ADMIN', 'E');
INSERT INTO PERMISO(EMPRESA, MODULO, OPCION, USUARIO, PERMISO) VALUES(1, 'ADMIN', 'USUARIOS Y PERMISOS', 'ADMIN', 'E');

INSERT INTO PERMISO(EMPRESA, MODULO, OPCION, USUARIO, PERMISO) VALUES(1, 'CI', 'ABRIR', 'ADMIN', 'E');
INSERT INTO PERMISO(EMPRESA, MODULO, OPCION, USUARIO, PERMISO) VALUES(1, 'CI', 'ARTICULOS', 'ADMIN', 'E');

INSERT INTO PERMISO(EMPRESA, MODULO, OPCION, USUARIO, PERMISO) VALUES(1, 'POS', 'ABRIR', 'ADMIN', 'E');

INSERT INTO PERMISO(EMPRESA, MODULO, OPCION, USUARIO, PERMISO) VALUES(1, 'CO', 'ABRIR', 'ADMIN', 'E');

INSERT INTO PERMISO(EMPRESA, MODULO, OPCION, USUARIO, PERMISO) VALUES(1, 'CC', 'ABRIR', 'ADMIN', 'E');

INSERT INTO PERMISO(EMPRESA, MODULO, OPCION, USUARIO, PERMISO) VALUES(1, 'CP', 'ABRIR', 'ADMIN', 'E');

INSERT INTO PERMISO(EMPRESA, MODULO, OPCION, USUARIO, PERMISO) VALUES(1, 'CONTA', 'ABRIR', 'ADMIN', 'E');

/*UNIDAD DE MEDIDA*/
INSERT INTO UNIDAD_MEDIDA(EMPRESA, UNIDAD_MEDIDA, DESCRIPCION) VALUES(1, 0, 'UNIDAD');


/* ****EJEMPLO DE COMO INSERTAR LAS CUENTAS CONTABLES, LOS DIARIOS Y LOS DIARIOS MAYORIZADOS****
--CUENTA CONTABLE
INSERT INTO CUENTA_CONTABLE(EMPRESA, CUENTA_CONTABLE, DESCRIPCION, TIPO, TIPO_DETALLADO, SALDO_NORMAL, 
    ACEPTA_DATOS, CONSOLIDA, USO_RESTRINGIDO)
VALUES(1, 'CTA', 'CUENTA CONTABLE', 'B', 'A', 'D', 'N', 'S', 'S');

--DIARIO
INSERT INTO DIARIO(EMPRESA, CUENTA_CONTABLE, ASIENTO, LINEA, FECHA, FUENTE, REFERENCIA, DEBITO, CREDITO, TIPO_CAMBIO)
VALUES(1, 'CTA', 'IF_1', 0, NOW(), 'CI', 'APLICACION INVENTARIO FISICO', 0.00, 0.00, 0.00);

--MAYOR
INSERT INTO MAYOR(EMPRESA, CUENTA_CONTABLE, ASIENTO, LINEA, FECHA, FUENTE, REFERENCIA, DEBITO, CREDITO, TIPO_CAMBIO, ORIGEN, COMENTARIO)
VALUES(1, 'CTA', 'IF_1', 0, NOW(), 'CI', 'APLICACION INVENTARIO FISICO', 0.00, 0.00, 0.00, 'CI', '');
*/


/* 
--ARTICULO
INSERT INTO ARTICULO(EMPRESA, ARTICULO, DESCRIPCION, COD_BARRAS, UNIDAD_MEDIDA_COMPRA, UNIDAD_MEDIDA_VENTA, 
CONVERSION_UM_COMPRA_VENTA, FOTO, COSTO_ULTIMO, MARGEN, IMPUESTO, PRECIO_BASE)
VALUES(1, '00001', 'DESCRIPCION ARTICULO', '00001', 'UND', 'UND', 1.00, NULL, 0.00, 0.00, 0.00, 10.00);

--ARTICULO_PRECIO
INSERT INTO ARTICULO_PRECIO(EMPRESA, NIVEL_PRECIO, ARTICULO, PRECIO)
VALUES(1, 1, '00001', 10.00);

--CONFIGURACION
INSERT INTO CONFIGURACION(EMPRESA, CONFIGURACION, VALOR)
VALUES(1, 'USA_NIVEL_PRECIO', 'FALSE');

--VENDEDOR
INSERT INTO VENDEDOR(EMPRESA, VENDEDOR, NOMBRE, CEDULA, DIRECCION, TELEFONO, FOTO)
VALUES(1,1, 'NOMBRE VENDEDOR', 'CEDULA', 'DIRECCION VENDEDOR', 'TELEFONO1, TELEFONO2', NULL);

--PROVEEDOR
INSERT INTO PROVEEDOR(EMPRESA, PROVEEDOR, NOMBRE, CONTACTO, DIRECCION, TELEFONO, FOTO)
VALUES(1, 1, 'NOMBRE PROVEEDOR', 'NOMBRE CONTACTO', 'DIRECCION PROVEEDOR', 'TELEFONO1', NULL);

--ARTICULO_PROVEEDOR
INSERT INTO ARTICULO_PROVEEDOR(EMPRESA, ARTICULO, PROVEEDOR, PRECIO, DESCUENTO, BONIFICACION, BONIFICACION_POR_CADA, MARGEN)
VALUES(1, 1, 1, 8.00, 0.00, 0.00, 0.00, 10.00);

--CLASIFICACION
INSERT INTO CLASIFICACION(EMPRESA, CLASIFICACION, NOMBRE)
VALUES(1, 1, 'CLASIFICACION1');

--ARTICULO_CLASIFICACION
INSERT INTO ARTICULO_CLASIFICACION(EMPRESA, ARTICULO, CLASIFICACION)
VALUES(1, 1, 1);

--CONDICION_PAGO
INSERT INTO CONDICION_PAGO(EMPRESA, CONDICION_PAGO, DESCRIPCION, DIAS)
VALUES(1, 1, 'CONTADO', 1);

--ORDEN_COMPRA
INSERT INTO ORDEN_COMPRA(EMPRESA, ORDEN_COMPRA, PROVEEDOR, CONDICION_PAGO, 
FECHA_ORDEN, PORCENTAJE_DESCUENTO, MONTO_DESCUENTO, IMPUESTO, SUBTOTAL, TOTAL, ESTADO, OBSERVACIONES)
VALUES(1, 1, 1, 1, NOW(), 0.00, 0.00, 0.00, 100.00, 100.00, 'E', '');

--ORDEN_COMPRA_LINEA
INSERT INTO ORDEN_COMPRA_LINEA(EMPRESA, ORDEN_COMPRA, LINEA, ARTICULO, DESCRIPCION, UNIDAD_MEDIDA_COMPRA, 
UNIDAD_MEDIDA_VENTA, CONVERSION_UM_COMPRA_VENTA, CANTIDAD, CANTIDAD_DETALLE, BONIFICACION, BONIFICACION_DETALLE,
COSTO_COMPRA, COSTO_DETALLE, SUBTOTAL, DESCUENTO, IMPUESTO, TOTAL)
VALUES(1, 1, 1, 1, 'ARTICULO1', 1, 1, 1, 5, 5, 0.00, 0.00, 8.00, 8.00, 40.00, 0.00, 0.00, 40.00);

--CLIENTE
INSERT INTO CLIENTE(EMPRESA, CLIENTE, NOMBRE, CEDULA, BENEFICIARIO, CEDULA_BENEFICIARIO, 
    ES_CLIENTE_EMPRESA, CLIENTE_EMPRESA, CONDICION_PAGO, LIMITE_CREDITO, EXCEDER_LIMITE, SALDO, ACTIVO)
VALUES(1, '0', 'CLIENTE DE CONTADO', NULL, NULL, NULL, 'N', NULL, 0, 0.00, 'N', 0.00, 'S');

--PAQUETE_DESCUENTO
INSERT INTO PAQUETE_DESCUENTO(EMPRESA, PAQUETE_DESCUENTO, DESCRIPCION, ACTIVO, FECHA_HORA_INICIO, FECHA_HORA_FIN)
VALUES(1, 0, 'PAQUETE DE DESCUENTO', 'S', NOW(), NOW());

--REGLA DESCUENTO
INSERT INTO REGLA_DESCUENTO(EMPRESA, REGLA_DESCUENTO, TIPO_DESCUENTO, DESCUENTO, CANTIDAD_COMPRA, CANTIDAD_FACTURAR, PATRON_PRECIO, ARTICULO, ACTIVO)
VALUES(1, 0, 'D', 5.00, NULL, NULL, NULL, 1, 'S');

--PAQUETE_DESC_REGLA_DESC
INSERT INTO PAQUETE_DESC_REGLA_DESC(EMPRESA, PAQUETE_DESCUENTO, REGLA_DESCUENTO)
VALUES(1, 0, 0);

--TIPO_CAMBIO
INSERT INTO TIPO_CAMBIO(EMPRESA, TIPO_CAMBIO, FECHA, MONTO)
VALUES(1, 0, NOW(), 23.50);

--BODEGA
INSERT INTO BODEGA(EMPRESA, BODEGA, TIPO, ACTIVO)
VALUES(1, 1, 'V', 'S');

--EXISTENCIA_BODEGA
INSERT INTO EXISTENCIA_BODEGA(EMPRESA, BODEGA, ARTICULO, FECHA_VENCIMIENTO, EXISTENCIAS)
VALUES(1, 1, 1, '01-01-1900', 0.00);

--CAJA
INSERT INTO CAJA(EMPRESA, BODEGA, CAJA, DESCRIPCION)
VALUES(1, 1, 1, 'CAJA 1 AEROFARMA');

--APERTURA_CAJA
INSERT INTO APERTURA_CAJA(EMPRESA, BODEGA, CAJA, APERTURA, USUARIO, FECHA_HORA_APERTURA, FECHA_HORA_CIERRE, ESTADO,
SALDO_EFECTIVO, SALDO_TARJETA, SALDO_CREDITO, SALDO_ABONO_CREDITO, SALDO_CHEQUE, SALDO_REGALIA, SALDO_BONO, 
SALDO_RETIRO, SALDO_TIPO_CAMBIO, TOTAL_CLIENTES, RECIBIDO_EFECTIVO, RECIBIDO_TARJETA, RECIBIDO_CREDITO,
RECIBIDO_ABONO_CREDITO, RECIBIDO_CHEQUE, RECIBIDO_REGALIA, RECIBIDO_BONO, RECIBIDO_RETIRO, TOTAL_VENTAS, NOTAS)
VALUES();

--CONSECUTIVO
INSERT INTO CONSECUTIVO(EMPRESA, CONSECUTIVO, DESCRIPCION, MODULO, LONGITUD, MASCARA, VALOR_INICIAL, ULTIMO_VALOR, ACTIVO)
VALUES(1, 'FACAEROFARMA', 'FACTURA AEROFARMA', 'POS', 9, 'NNN999999', 'FAC000001', 'FAC000000', 'S');

--RETIRO
INSERT INTO RETIRO(EMPRESA, BODEGA, CAJA, APERTURA, RETIRO, USUARIO, SUPERVISOR, MONTO, MOTIVO)
VALUES(1, 1, 1, 1, 1, 'USUARIO', 'SUPERISOR', 0.00, '');

--MONEDA
INSERT INTO MONEDA(EMPRESA, MONEDA, DESCRIPCION)
VALUES(1, 0, 'CORDOBAS');

INSERT INTO MONEDA(EMPRESA, MONEDA, DESCRIPCION)
VALUES(1, 1, 'DOLARES');

--MONEDA_DENOMINACION
INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 0, 'M', 0.05, 'MONEDA 0.05');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 0, 'M', 0.10, 'MONEDA 0.10');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 0, 'M', 0.25, 'MONEDA 0.25');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 0, 'M', 0.50, 'MONEDA 0.50');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 0, 'M', 1, 'MONEDA 1');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 0, 'M', 5, 'MONEDA 5');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 0, 'M', 10, 'MONEDA 10');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 0, 'B', 10, 'BILLETE 10');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 0, 'B', 20, 'BILLETE 20');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 0, 'B', 50, 'BILLETE 50');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 0, 'B', 100, 'BILLETE 100');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 0, 'B', 200, 'BILLETE 200');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 0, 'B', 500, 'BILLETE 500');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 1, 'B', 1, 'BILLETE 1');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 1, 'B', 5, 'BILLETE 5');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 1, 'B', 10, 'BILLETE 10');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 1, 'B', 50, 'BILLETE 50');

INSERT INTO MONEDA_DENOMINACION(EMPRESA, MONEDA, TIPO, DENOMINACION, DESCRIPCION)
VALUES(1, 1, 'B', 100, 'BILLETE 100');

--DETALLE_MONEDA_CIERRE
INSERT INTO DETALLE_MONEDA_CIERRE(EMPRESA, BODEGA, CAJA, APERTURA, MONEDA, TIPO, DENOMINACION, CANTIDAD)
VALUES(1, 1, 1, 1, 0, 'M', 0.05, 1);

--FACTURA
INSERT INTO FACTURA(EMPRESA, BODEGA, CAJA, APERTURA, FACTURA, USUARIO, CONDICION_PAGO, 
CLIENTE, NOMBRE_CLIENTE, FECHA, TIPO_CAMBIO, ES_FACTURA, TRANSACCION, TOTAL_FACTURA,
IMPUESTO, DESCUENTO, ANULADA, FECHA_ANULADA, USUARIO_ANULA, CARGADO_CONTA, CARGADO_CC,
COMENTARIO_CC, DOCUMENTO_CC, MONTO_ANTICIPO)
VALUES();

--FACTURA_LINEA
INSERT INTO FACTURA_LINEA(EMPRESA, BODEGA, CAJA, APERTURA, FACTURA, LINEA, ARTICULO,
FECHA_VENCIMIENTO, CANTIDAD, PRECIO_UNITARIO, IMPUESTO_LINEA, DESCUENTO_LINEA,
TOTAL_LINEA, COSTO, FECHA)
VALUES();

--FORMA_PAGO_BASE
INSERT INTO FORMA_PAGO_BASE(EMPRESA, FORMA_PAGO_BASE)
VALUES(1, 'EFECTIVO', 'PAGO DE EFECTIVO');

INSERT INTO FORMA_PAGO_BASE(EMPRESA, FORMA_PAGO_BASE)
VALUES(1, 'TARJETA', 'PAGO CON TARJETA DE CREDITO');

INSERT INTO FORMA_PAGO_BASE(EMPRESA, FORMA_PAGO_BASE)
VALUES(1, 'CREDITO', 'PAGO DE CREDITO');

INSERT INTO FORMA_PAGO_BASE(EMPRESA, FORMA_PAGO_BASE)
VALUES(1, 'CHEQUE', 'PAGO CON CHEQUE');

INSERT INTO FORMA_PAGO_BASE(EMPRESA, FORMA_PAGO_BASE)
VALUES(1, 'REGALIA', 'REGALIA DE PRODUCTOS(PROMOCIONES)');

INSERT INTO FORMA_PAGO_BASE(EMPRESA, FORMA_PAGO_BASE)
VALUES(1, 'RETIRO', 'RETIRO DE EFECTIVO DE CAJA');

INSERT INTO FORMA_PAGO_BASE(EMPRESA, FORMA_PAGO_BASE)
VALUES(1, 'CAMBIO', 'CAMBIO O VUELTO DE PAGO EN EFECTIVO');

--FORMA_PAGO_DERIVADA
INSERT INTO FORMA_PAGO_DERIVADA(EMPRESA, FORMA_PAGO_BASE, FORMA_PAGO_DERIVADA)
VALUES(1, 'EFECTIVO', 'EFECTIVO');

INSERT INTO FORMA_PAGO_DERIVADA(EMPRESA, FORMA_PAGO_BASE, FORMA_PAGO_DERIVADA)
VALUES(1, 'TARJETA', 'TARJETA');

INSERT INTO FORMA_PAGO_DERIVADA(EMPRESA, FORMA_PAGO_BASE, FORMA_PAGO_DERIVADA)
VALUES(1, 'PUNTOS', 'TARJETA');

INSERT INTO FORMA_PAGO_DERIVADA(EMPRESA, FORMA_PAGO_BASE, FORMA_PAGO_DERIVADA)
VALUES(1, 'MILLAS', 'TARJETA');

INSERT INTO FORMA_PAGO_DERIVADA(EMPRESA, FORMA_PAGO_BASE, FORMA_PAGO_DERIVADA)
VALUES(1, 'CREDITO', 'CREDITO');

INSERT INTO FORMA_PAGO_DERIVADA(EMPRESA, FORMA_PAGO_BASE, FORMA_PAGO_DERIVADA)
VALUES(1, 'CHEQUE', 'CHEQUE');

INSERT INTO FORMA_PAGO_DERIVADA(EMPRESA, FORMA_PAGO_BASE, FORMA_PAGO_DERIVADA)
VALUES(1, 'REGALIA', 'REGALIA');

INSERT INTO FORMA_PAGO_DERIVADA(EMPRESA, FORMA_PAGO_BASE, FORMA_PAGO_DERIVADA, VISIBLE_AL_FACTURAR)
VALUES(1, 'RETIRO', 'RETIRO', 'N');

INSERT INTO FORMA_PAGO_DERIVADA(EMPRESA, FORMA_PAGO_BASE, FORMA_PAGO_DERIVADA)
VALUES(1, 'CAMBIO', 'CAMBIO');

--DOCUMENTO_INV
INSERT INTO DOCUMENTO_INV(EMPRESA, DOCUMENTO_INV, TIPO, REFERENCIA, FECHA, APROBADO, USUARIO_APROBADO,
FECHA_APROBADO, TIPO_CAMBIO, BODEGA_ORIGEN, BODEGA_DESTINO)
VALUES();

--DOCUMENTO_INV_LINEA
INSERT INTO DOCUMENTO_INV_LINEA(EMPRESA, DOCUMENTO_INV, LINEA, ARTICULO, FECHA_VENCIMIENTO, CANTIDAD, 
COSTO_TOTAL, PRECIO_TOTAL)
VALUES();

--DOCUMENTO_CC
INSERT INTO DOCUMENTO_CC(EMPRESA, DOCUMENTO, TIPO, APLICACION, FECHA_DOCUMENTO, FECHA_VENCE,
MONTO, SALDO, TIPO_CAMBIO, CARGADO_DE_POS, APROBADO, USUARIO_APROBADO, FECHA_APROBADO,
ASIENTO, NOTAS, CONDICION_PAGO, VENDEDOR, CLIENTE, ANULADO, USUARIO_ANULADO, FECHA_ANULADO)
VALUES();

--DOCUMENTO_CP
INSERT INTO DOCUMENTO_CP(EMPRESA, PROVEEDOR, DOCUMENTO, TIPO, FECHA_DOCUMENTO, FECHA_VENCE,
APLICACION, CONDICION_PAGO, MONEDA, MONTO, SALDO, MONTO_RETENCION, SALDO_RETENCION, TIPO_CAMBIO,
CHEQUE_IMPRESO, APROBADO, USUARIO_APROBADO, FECHA_APROBADO, ANULADO, USUARIO_ANULADO, FECHA_ANULADO,
ASIENTO, NOTAS)
VALUES();

--ENTIDAD_FINANCIERA
INSERT INTO ENTIDAD_FINANCIERA(EMPRESA, ENTIDAD_FINANCIERA, NOMBRE)
VALUES(1, 0, 'BAC - BANCO DE AMERICA CENTRAL');

--CUENTA_BANCARIA
INSERT INTO CUENTA_BANCARIA(EMPRESA, ENTIDAD_FINANCIERA, CUENTA_BANCARIA, DESCRIPCION, 
MONEDA, FORMATO_CHEQUE, SALDO, ACTIVA, CUENTA_CONTABLE, CONSECUTIVO_CHEQUE, 
CONSECUTIVO_TRANSFERENCIA)
VALUES();

--CHEQUE
INSERT INTO CHEQUE(EMPRESA, CUENTA_BANCARIA, CHEQUE, PAGADERO_A, REFERENCIA, MONTO,
DETALLE, MODULO_ORIGEN, IMPRESO)
VALUES();

--TRANSACCION
INSERT INTO TRANSACCION(EMPRESA, TRANSACCION, CONSECUTIVO, APLICACION, REFERENCIA, ASIENTO,
USUARIO, FECHA, MODULO, APROBADO, USUARIO_APROBADO, FEHA_APROBADO, TIPO_CAMBIO, BODEGA_ORIGEN,
BODEGA_DESTINO)
VALUES();

--TRANSACCION_LINEA
INSERT INTO TRANSACCION_LINEA(EMPRESA, TRANSACCION, LINEA, TIPO, NATURALEZA, BODEGA, ARTICULO, 
FECHA_VENCIMIENTO, CANTIDAD, COSTO_TOTAL, PRECIO_TOTAL, CONTABILIZADA, CUENTA_CONTABLE)
SELECT * FROM TRANSACCION_LINEA;
*/