
#
#  fusion declarations
#

FamilyFusion@ := NewFamily("FusionFamily");
DeclareCategory("IsFusion",IsObject);
DeclareRepresentation("IsFusionStdRep",
	IsFusion and IsComponentObjectRep and IsAttributeStoringRep,[]);
TypeFusion@ := NewType(FamilyFusion@,IsFusion and IsFusionStdRep);

DeclareOperation("Fusion",[IsRat,IsList,IsList,IsString]);
DeclareAttribute("CentralCharge",IsFusion);
DeclareAttribute("Fields",IsFusion);
DeclareAttribute("Tag",IsFusion);
DeclareAttribute("Fuse",IsFusion);
DeclareOperation("Subfusion",[IsFusion,IsList,IsString]);
DeclareAttribute("Miyamoto",IsFusion);
DeclareOperation("MiyamotoFixedFusion",[IsFusion]);
DeclareOperation("ChangeFields",[IsFusion,IsList,IsString]);

DeclareOperation("VirasoroFusion",[IsPosInt,IsPosInt]);
DeclareProperty("IsVirasoroFusion",IsFusion);
DeclareProperty("IsRationalVirasoroFusion",IsVirasoroFusion);
DeclareAttribute("VirasoroP",IsRationalVirasoroFusion);
DeclareAttribute("VirasoroQ",IsRationalVirasoroFusion);
DeclareProperty("IsUnitaryFusion",IsFusion);

### maybe move this in with shapes
FamilySakuma@ := NewFamily("SakumaFamily");
DeclareCategory("IsSakuma",IsObject);
DeclareRepresentation("IsSakumaStdRep",
	IsComponentObjectRep and IsAttributeStoringRep,[]);
TypeSakuma@ := NewType(FamilySakuma@,IsSakuma and IsSakumaStdRep);

DeclareOperation("Sakuma",[IsList,IsMatrix]);
DeclareOperation("GetAlgebra",[IsSakuma,IsPosInt,IsString]);
DeclareOperation("GetAlgebras",[IsSakuma,IsPosInt]);
DeclareOperation("SubAlgebras",[IsSakuma,IsList]);
DeclareOperation("SupAlgebras",[IsSakuma,IsList]);
DeclareAttribute("Orders",IsSakuma);

DeclareGlobalVariable("MajoranaSakuma");
DeclareGlobalVariable("MajoranaFusion");
DeclareOperation( "MajoranaShapes", [IsGroup] );
