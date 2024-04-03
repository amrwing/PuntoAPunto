class Contrato {
  String nombreProveedor;
  String nombreComprador;
  String objetoDeContrato;
  String derechosYObligaciones;
  String garantias;
  String tipoDeContrato;
  String frecuenciaDeProvision;
  DateTime fechaInicio;
  DateTime fechaTerminacion;

  Contrato(
      {required this.derechosYObligaciones,
      required this.nombreProveedor,
      required this.objetoDeContrato,
      required this.tipoDeContrato,
      required this.fechaInicio,
      required this.fechaTerminacion,
      required this.frecuenciaDeProvision,
      required this.garantias,
      required this.nombreComprador});
}
/*
Objeto de contrato
Un contrato con un proveedor explica a detalle el objeto del vínculo entre las partes, de modo que ambas sean conscientes sobre 
lo que pueden esperar de la relación. Es importante que se detalle todo lo que incluye, 
independientemente de la naturaleza del objeto (servicio o producto).
*/

/* Derechos y obligaciones de las partes
Además de señalar el objeto, es indispensable añadir
cláusulas que expliquen detalladamente tanto los deberes como los derechos de las partes. 
Añadir esta información aumenta la probabilidad de 
que los involucrados se comprometan a atender con el trato, minimizando así el incumplimiento.
*/

/* Condiciones de prestación y/o provisión
Las condiciones acaparan los aspectos prácticos de la prestación del servicio, 
considerando los aspectos incluidos en el manual de contratistas y proveedores con criterios en SST 
o la provisión del producto objeto del contrato. 
Esta información debe incluir aspectos como cantidades, plazos, metodologías y procedimientos u 
otros datos relevantes que las partes deban conocer y monitorear su cumplimiento. */

/* Garantías
Los contratos con proveedores también especifican las sanciones acarreadas por el incumplimiento parcial 
o total del acuerdo. Por ejemplo, las tasas de interés a raíz del retraso en el pago de una cuota o del monto total.
Es importante que las garantías se expliquen con lujo de detalle, justamente para evitar malentendidos. */
/*
3 tipos de contratos con proveedores

Existen 3 tipos de contratos con proveedores, cada uno con sus peculiaridades, pros y contras. Conócelos a detalle para seleccionar el que mejor se aplique a tu cadena:

Precio fijo
Mediante este contrato, el proveedor y la empresa establecen un precio fijo por el producto o servicio. 
Así pues, el monto acordado al inicio de la relación permanece igual durante la vigencia del contrato, como es el caso de las órdenes de compra.
En virtud de esta característica, son los que presentan menos riesgo, ya que los precios
no oscilan según las fluctuaciones del mercado y, por ende, el presupuesto se mantiene inamovible.

Costos reembolsables
Son los contratos en los que el cliente se compromete a pagar a un 
proveedor todos los costos derivados de un proyecto.
Asimismo, estos documentos implican los honorarios acordados entre las partes.

A raíz de su carácter cambiante, es el tipo de contrato que representa un mayor riesgo para el cliente porque le adjudica el pago de
 todos los gastos productivos y de suministro. ¡Y esto puede desencadenar una sorpresa muy desagradable en cuanto a costo total!
Por tiempos y materiales
Este contrato consiste en la combinación de los tipos señalados anteriormente, pues están integrados por un elemento fijo como precio por hora de trabajo o por metro cuadrado y un 
elemento variable como la cantidad de horas trabajadas o el número de metros cuadrados necesarios para finalizar una obra.
De hecho, su naturaleza mixta les aporta un nivel intermedio de riesgo. Así, no son tan seguros como los contratos con proveedores de precio fijo, pero tampoco son tan arriesgados como los de costos reembolsables.
*/