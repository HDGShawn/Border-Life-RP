private ["_object","_lic","_licenses","_name"];

_object = _this select 0;
_lic = _this select 1;
_licenses = (_object getvariable "cdb_license");
_name = _lic call INV_GetLicenseName;

_licenses = _licenses - [_lic];

_object setVariable ["cdb_license",_licenses,true];