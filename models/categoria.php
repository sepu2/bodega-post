<?php
require_once("../conexion.php");
require_once("../models/bodega.php");

$bodega = new bodega();
$body = json_decode(file_get_contents("php://input"), true);

switch ($_GET["op"]) {
    case "GetAllProductos":
        $datos = $bodega->getProductos();
        echo json_encode($datos);
        break;

    case "GetProductoById":
        $codigo_producto = isset($body["codigo_producto"]) ? $body["codigo_producto"] : null;
        $datos = $bodega->getProductoById($codigo_producto);
        echo json_encode($datos);
        break;

    case "InsertIngreso":
        $datos = $bodega->insertIngreso($body["codigo_producto"], $body["cantidad_ingresada"]);
        $mostrar_datos = $bodega->getProductoById($body["codigo_producto"]);
        echo json_encode($mostrar_datos);
        break;

    case "UpdateCantidadProducto":
        $datos = $bodega->updateCantidadProducto($body["codigo_producto"], $body["cantidad_ingresada"]);
        $mostrar_datos = $bodega->getProductoById($body["codigo_producto"]);
        echo json_encode($mostrar_datos);
        break;

    case "DeleteIngreso":
        $datos = $bodega->deleteIngreso($body["ingreso_id"]);
        echo "eliminado correctamente";
        break;
}
?>