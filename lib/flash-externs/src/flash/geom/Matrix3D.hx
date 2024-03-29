package flash.geom;

#if flash
import openfl.Vector;

extern class Matrix3D
{
	#if (haxe_ver < 4.3)
	public var determinant(default, never):Float;
	public var position:Vector3D;
	public var rawData:Vector<Float>;
	#else
	@:flash.property var determinant(get, never):Float;
	@:flash.property var position(get, set):Vector3D;
	@:flash.property var rawData(get, set):Vector<Float>;
	#end

	public function new(v:Vector<Float> = null);
	public function append(lhs:Matrix3D):Void;
	public function appendRotation(degrees:Float, axis:Vector3D, pivotPoint:Vector3D = null):Void;
	public function appendScale(xScale:Float, yScale:Float, zScale:Float):Void;
	public function appendTranslation(x:Float, y:Float, z:Float):Void;
	public function clone():Matrix3D;
	@:require(flash11) public function copyColumnFrom(column:Int, vector3D:Vector3D):Void;
	@:require(flash11) public function copyColumnTo(column:Int, vector3D:Vector3D):Void;
	@:require(flash11) public function copyFrom(other:Matrix3D):Void;
	@:require(flash11) public function copyRawDataFrom(vector:Vector<Float>, index:UInt = 0, transpose:Bool = false):Void;
	@:require(flash11) public function copyRawDataTo(vector:Vector<Float>, index:UInt = 0, transpose:Bool = false):Void;
	@:require(flash11) public function copyRowFrom(row:UInt, vector3D:Vector3D):Void;
	@:require(flash11) public function copyRowTo(row:Int, vector3D:Vector3D):Void;
	@:require(flash11) public function copyToMatrix3D(other:Matrix3D):Void;
	// public static function create2D (x:Float, y:Float, scale:Float = 1, rotation:Float = 0):Matrix3D;
	//
	//
	// public static function createABCD (a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Matrix3D;
	//
	//
	// public static function createOrtho (x0:Float, x1:Float,  y0:Float, y1:Float, zNear:Float, zFar:Float):Matrix3D;
	public function decompose(?orientationStyle:Orientation3D):Vector<Vector3D>;
	public function deltaTransformVector(v:Vector3D):Vector3D;
	public function identity():Void;
	public static function interpolate(thisMat:Matrix3D, toMat:Matrix3D, percent:Float):Matrix3D;
	public function interpolateTo(toMat:Matrix3D, percent:Float):Void;
	public function invert():Bool;
	public function pointAt(pos:Vector3D, at:Vector3D = null, up:Vector3D = null):Void;
	public function prepend(rhs:Matrix3D):Void;
	public function prependRotation(degrees:Float, axis:Vector3D, pivotPoint:Vector3D = null):Void;
	public function prependScale(xScale:Float, yScale:Float, zScale:Float):Void;
	public function prependTranslation(x:Float, y:Float, z:Float):Void;
	public function recompose(components:Vector<Vector3D>, ?orientationStyle:Orientation3D):Bool;
	public function transformVector(v:Vector3D):Vector3D;
	public function transformVectors(vin:Vector<Float>, vout:Vector<Float>):Void;
	public function transpose():Void;

	#if (haxe_ver >= 4.3)
	private function get_determinant():Float;
	private function get_position():Vector3D;
	private function get_rawData():Vector<Float>;
	private function set_position(value:Vector3D):Vector3D;
	private function set_rawData(value:Vector<Float>):Vector<Float>;
	#end
}
#else
typedef Matrix3D = openfl.geom.Matrix3D;
#end
