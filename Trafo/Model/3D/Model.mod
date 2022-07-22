'# MWS Version: Version 2022.5 - Jun 03 2022 - ACIS 31.0.1 -

'# length = mm
'# frequency = GHz
'# time = ns
'# frequency range: fmin = 0.0 fmax = 0.0
'# created = '[VERSION]2022.4|31.0.1|20220426[/VERSION]


'@ set workplane properties

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With WCS
     .SetWorkplaneSize "100"
     .SetWorkplaneRaster "1"
     .SetWorkplaneAutoadjust "True"
     .SetWorkplaneSnap "True"
     .SetWorkplaneSnapRaster "0.1"
     .SetWorkplaneAutosnapFactor "1"
     .SetWorkplaneSnapAutoadjust "True"
End With

'@ define material: Folder1/Al Value

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Material 
     .Reset 
     .Name "Al Value"
     .Folder "Folder1"
     .Rho "0.0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Lossy metal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "Kelvin"
     .Mu "1090"
     .Sigma "1/17"
     .LossyMetalSIRoughness "0.0"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ new component: component1

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Component.New "component1"

'@ define cylinder: component1:Mittelstückstange oben

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Cylinder 
     .Reset 
     .Name "Mittelstückstange oben" 
     .Component "component1" 
     .Material "Folder1/Al Value" 
     .OuterRadius "15" 
     .InnerRadius "0" 
     .Axis "z" 
     .Zrange "0", "10.5" 
     .Xcenter "-0" 
     .Ycenter "0" 
     .Segments "0" 
     .Create 
End With

'@ set workplane properties

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With WCS
     .SetWorkplaneSize "400"
     .SetWorkplaneRaster "2"
     .SetWorkplaneAutoadjust "True"
     .SetWorkplaneSnap "True"
     .SetWorkplaneSnapRaster "0.1"
     .SetWorkplaneAutosnapFactor "1"
     .SetWorkplaneSnapAutoadjust "True"
End With

'@ define material colour: Folder1/Al Value

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Material 
     .Name "Al Value"
     .Folder "Folder1"
     .Colour "0.752941", "0.752941", "0.752941" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

'@ pick circle center point

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Pick.PickCirclecenterFromId "component1:Mittelstückstange oben", "1"

'@ import step file: C:\Users\Lucas\Downloads\B65887E0000R049.stp

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With STEP
     .Reset 
     .ScaleToUnit "0" 
     .FileName "*B65887E0000R049.stp" 
     .Id "1" 
     .Version "11.0" 
     .ImportToActiveCoordinateSystem "True" 
     .Curves "True" 
     .ImportAttributes "True" 
     .ImportCurveAttributes "True" 
     .Read 
End With

'@ delete shape: component1:Mittelstückstange oben

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Solid.Delete "component1:Mittelstückstange oben"

'@ rename component: default to: Dach oben

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Component.Rename "default", "Dach oben"

'@ clear picks

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Pick.ClearAllPicks

'@ pick circle center point

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Pick.PickCirclecenterFromId "Dach oben:C61035-A0044-C040-RM14LP", "63"

'@ import step file: C:\Users\Lucas\Downloads\B65887E0000R049.stp

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With STEP
     .Reset 
     .ScaleToUnit "0" 
     .FileName "*B65887E0000R049.stp" 
     .Id "2" 
     .Version "11.0" 
     .ImportToActiveCoordinateSystem "True" 
     .Curves "True" 
     .ImportAttributes "True" 
     .ImportCurveAttributes "True" 
     .Read 
End With

'@ delete component: component1

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Component.Delete "component1"

'@ transform: mirror default:C61035-A0044-C040-RM14LP

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Transform 
     .Reset 
     .Name "default:C61035-A0044-C040-RM14LP" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .PlaneNormal "1", "0", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .AutoDestination "True" 
     .Transform "Shape", "Mirror" 
End With

'@ transform: mirror default:C61035-A0044-C040-RM14LP

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Transform 
     .Reset 
     .Name "default:C61035-A0044-C040-RM14LP" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .PlaneNormal "1", "0", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .AutoDestination "True" 
     .Transform "Shape", "Mirror" 
End With

'@ transform: mirror default:C61035-A0044-C040-RM14LP

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Transform 
     .Reset 
     .Name "default:C61035-A0044-C040-RM14LP" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .PlaneNormal "0", "1", "0" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .AutoDestination "True" 
     .Transform "Shape", "Mirror" 
End With

'@ align: Faces default:C61035-A0044-C040-RM14LP

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Pick 
     .PickFaceFromId "default:C61035-A0044-C040-RM14LP", "12" 
     .PickFaceFromId "Dach oben:C61035-A0044-C040-RM14LP", "12" 
End With 

With Align
     .Reset 
     .Name "default:C61035-A0044-C040-RM14LP" 
     .SetKindOfPickFor "SourcePlane", "Face" 
     .SetKindOfPickFor "TargetPlane", "Face" 
     .Align "Shapes", "Faces" 
End With

'@ rename component: default to: Dach unten

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Component.Rename "default", "Dach unten"

'@ define material: default_1

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Material 
     .Reset 
     .Name "default_1"
     .Folder ""
     .Rho "0.0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "s"
     .Epsilon "1"
     .Mu "1"
     .Sigma "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstSigma"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstSigma"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0.501961", "0.501961", "0.501961" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define material colour: default_1

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Material 
     .Name "default_1"
     .Folder ""
     .Colour "0.501961", "0.501961", "0.501961" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

'@ define material colour: default

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Material 
     .Name "default"
     .Folder ""
     .Colour "0.501961", "0.501961", "0.501961" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

'@ import step file: C:\Users\Lucas\Downloads\B65888N1012D001.stp

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With STEP
     .Reset 
     .ScaleToUnit "0" 
     .FileName "*B65888N1012D001.stp" 
     .Id "1" 
     .Version "11.0" 
     .ImportToActiveCoordinateSystem "True" 
     .Curves "True" 
     .ImportAttributes "True" 
     .ImportCurveAttributes "True" 
     .Read 
End With

'@ rename component: default to: Coilholder

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Component.Rename "default", "Coilholder"

'@ define material: default_2

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Material 
     .Reset 
     .Name "default_2"
     .Folder ""
     .Rho "0.0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "s"
     .Epsilon "1"
     .Mu "1"
     .Sigma "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstSigma"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstSigma"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0", "0", "0" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define material colour: default_2

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Material 
     .Name "default_2"
     .Folder ""
     .Colour "0", "0", "0" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

'@ align: Faces Coilholder:C61035-A0044-B200-RM1_SW0001

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Pick 
     .PickFaceFromId "Coilholder:C61035-A0044-B200-RM1_SW0001", "35" 
     .PickFaceFromId "Dach oben:C61035-A0044-C040-RM14LP", "47" 
End With 

With Align
     .Reset 
     .Name "Coilholder:C61035-A0044-B200-RM1_SW0001" 
     .SetKindOfPickFor "SourcePlane", "Face" 
     .SetKindOfPickFor "TargetPlane", "Face" 
     .Align "Shapes", "Faces" 
End With

'@ import solidworks file: C:\Daten\Studium\Master\Semester 2\3D-Feldsimulation\Projekt\CADFiles\RM14 Clip.SLDPRT

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Solidworks
     .Reset 
     .ScaleToUnit "0" 
     .FileName "*RM14 Clip.SLDPRT" 
     .Id "1" 
     .ImportAttributes "True" 
     .ImportHiddenEntities "False" 
     .Read 
End With

'@ rename component: default to: Linker Clip

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Component.Rename "default", "Linker Clip"

'@ align: Faces Linker Clip:import_1

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Pick 
     .PickFaceFromId "Linker Clip:import_1", "14" 
     .PickFaceFromId "Dach unten:C61035-A0044-C040-RM14LP", "33" 
End With 

With Align
     .Reset 
     .Name "Linker Clip:import_1" 
     .SetKindOfPickFor "SourcePlane", "Face" 
     .SetKindOfPickFor "TargetPlane", "Face" 
     .Align "Shapes", "Faces" 
End With

'@ delete component: Linker Clip

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Component.Delete "Linker Clip"

'@ import step file: C:\Users\Lucas\Downloads\c61035-a0044-c200_clamp_rm14.step

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With STEP
     .Reset 
     .ScaleToUnit "0" 
     .FileName "*c61035-a0044-c200_clamp_rm14.step" 
     .Id "1" 
     .Version "11.0" 
     .ImportToActiveCoordinateSystem "True" 
     .Curves "True" 
     .ImportAttributes "True" 
     .ImportCurveAttributes "True" 
     .Read 
End With

'@ align: Faces default:C61035-A0044-C200_CLAMP_RM14

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Pick 
     .PickFaceFromId "default:C61035-A0044-C200_CLAMP_RM14", "49" 
     .PickFaceFromId "Dach unten:C61035-A0044-C040-RM14LP", "76" 
End With 

With Align
     .Reset 
     .Name "default:C61035-A0044-C200_CLAMP_RM14" 
     .SetKindOfPickFor "SourcePlane", "Face" 
     .SetKindOfPickFor "TargetPlane", "Face" 
     .Align "Shapes", "Faces" 
End With

'@ transform: translate default

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Transform 
     .Reset 
     .Name "default" 
     .Vector "3.8", "0", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .AutoDestination "True" 
     .Transform "Shape", "Translate" 
End With

'@ transform: rotate default

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Transform 
     .Reset 
     .Name "default" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .Angle "0", "0", "5" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .AutoDestination "True" 
     .Transform "Shape", "Rotate" 
End With

'@ align: Faces default:C61035-A0044-C200_CLAMP_RM14

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Pick 
     .PickFaceFromId "default:C61035-A0044-C200_CLAMP_RM14", "35" 
     .PickFaceFromId "Dach oben:C61035-A0044-C040-RM14LP", "114" 
End With 

With Align
     .Reset 
     .Name "default:C61035-A0044-C200_CLAMP_RM14" 
     .SetKindOfPickFor "SourcePlane", "Face" 
     .SetKindOfPickFor "TargetPlane", "Face" 
     .Align "Shapes", "Faces" 
End With

'@ transform: rotate default

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Transform 
     .Reset 
     .Name "default" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .Angle "0", "0", "20" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .AutoDestination "True" 
     .Transform "Shape", "Rotate" 
End With

'@ transform: rotate default

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Transform 
     .Reset 
     .Name "default" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .Angle "0", "0", "355" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .AutoDestination "True" 
     .Transform "Shape", "Rotate" 
End With

'@ transform: translate default

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Transform 
     .Reset 
     .Name "default" 
     .Vector "-2.8", "-5.4", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .AutoDestination "True" 
     .Transform "Shape", "Translate" 
End With

'@ transform: translate default

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Transform 
     .Reset 
     .Name "default" 
     .Vector "0", "0.2", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .AutoDestination "True" 
     .Transform "Shape", "Translate" 
End With

'@ rename component: default to: Clip Links

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Component.Rename "default", "Clip Links"

'@ define material: default_4

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Material 
     .Reset 
     .Name "default_4"
     .Folder ""
     .Rho "0.0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "s"
     .Epsilon "1"
     .Mu "1"
     .Sigma "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstSigma"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstSigma"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0.752941", "0.752941", "0.752941" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define material colour: default_4

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Material 
     .Name "default_4"
     .Folder ""
     .Colour "0.752941", "0.752941", "0.752941" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

'@ transform: translate Clip Links:C61035-A0044-C200_CLAMP_RM14

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Transform 
     .Reset 
     .Name "Clip Links:C61035-A0044-C200_CLAMP_RM14" 
     .Vector "0", "0.2", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .AutoDestination "True" 
     .Transform "Shape", "Translate" 
End With

'@ new component: Clip Rechts

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Component.New "Clip Rechts"

'@ paste structure data: 1

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With SAT 
     .Reset 
     .FileName "*1.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With 

With MeshSettings
     With .ItemMeshSettings ("solid$Clip Rechts:C61035-A0044-C200_CLAMP_RM14")
          .SetMeshType "All" 
          .Set "Transform", "-1", "-2.51398e-10", "6.65162e-14", "-6.61415e-14", "-2.10948e-10", "-1", "2.51397e-10", "-1", "2.10947e-10" 
     End With
End With

'@ transform: rotate Clip Rechts:C61035-A0044-C200_CLAMP_RM14

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Transform 
     .Reset 
     .Name "Clip Rechts:C61035-A0044-C200_CLAMP_RM14" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .Angle "0", "180", "0" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .AutoDestination "True" 
     .Transform "Shape", "Rotate" 
End With

'@ pick circle center point

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Pick.PickCirclecenterFromId "Coilholder:C61035-A0044-B200-RM1_SW0001", "31"

'@ align wcs with point

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
WCS.AlignWCSWithSelected "Point"

'@ rotate wcs

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
WCS.RotateWCS "u", "-90.0"

'@ new curve: Coil1

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Curve.NewCurve "Coil1"

'@ new curve: Coil2

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Curve.NewCurve "Coil2"

'@ new component: Coil1

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Component.New "Coil1"

'@ new component: Coil2

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Component.New "Coil2"

'@ define curve analytical: Coil1:Path

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With AnalyticalCurve
     .Reset 
     .Name "Path" 
     .Curve "Coil1" 
     .LawX "(Core_RadiusMin + (Coil1_ThicknessCore+Coil1_ThicknessIso+Coil1_ThicknessAir)*t/(2*pi))*cos(t)" 
     .LawY "(Core_RadiusMin + (Coil1_ThicknessCore+Coil1_ThicknessIso+Coil1_ThicknessAir)*t/(2*pi))*sin(t)" 
     .LawZ "0" 
     .ParameterRange "0", "2*pi*N1" 
     .Create
End With

'@ align wcs with point

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Pick.PickCurveEndpointFromId "Coil1:Path", "1" 
WCS.AlignWCSWithSelectedPoint

'@ rotate wcs

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
WCS.RotateWCS "u", "-90.0"

'@ rotate wcs

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
WCS.RotateWCS "w", "-90.0"

'@ define curve rectangle: Coil1:Wire

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Rectangle
     .Reset 
     .Name "Wire" 
     .Curve "Coil1" 
     .Xrange "0.0", "Core_Height" 
     .Yrange "0.0", "Coil1_ThicknessCore+Coil1_ThicknessIso" 
     .Create
End With

'@ define curve rectangle: Coil1:Core

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Rectangle
     .Reset 
     .Name "Core" 
     .Curve "Coil1" 
     .Xrange "0.0", "Core_Height" 
     .Yrange "0.0", "Coil1_ThicknessCore" 
     .Create
End With

'@ define sweepprofile: Coil1:Wire

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With SweepCurve
     .Reset 
     .Name "Wire" 
     .Component "Coil1" 
     .Material "PEC" 
     .Twistangle "0.0" 
     .Taperangle "0.0" 
     .ProjectProfileToPathAdvanced "True" 
     .CutEndOff "True" 
     .DeleteProfile "False" 
     .DeletePath "False" 
     .Path "Coil1:Path" 
     .Curve "Coil1:Wire" 
     .Create
End With

'@ define material: Copper (annealed)

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With Material
     .Reset
     .Name "Copper (annealed)"
     .Folder ""
.FrqType "static"
.Type "Normal"
.SetMaterialUnit "Hz", "mm"
.Epsilon "1"
.Mu "1.0"
.Kappa "5.8e+007"
.TanD "0.0"
.TanDFreq "0.0"
.TanDGiven "False"
.TanDModel "ConstTanD"
.KappaM "0"
.TanDM "0.0"
.TanDMFreq "0.0"
.TanDMGiven "False"
.TanDMModel "ConstTanD"
.DispModelEps "None"
.DispModelMu "None"
.DispersiveFittingSchemeEps "Nth Order"
.DispersiveFittingSchemeMu "Nth Order"
.UseGeneralDispersionEps "False"
.UseGeneralDispersionMu "False"
.FrqType "all"
.Type "Lossy metal"
.SetMaterialUnit "GHz", "mm"
.Mu "1.0"
.Kappa "5.8e+007"
.Rho "8930.0"
.ThermalType "Normal"
.ThermalConductivity "401.0"
.SpecificHeat "390", "J/K/kg"
.MetabolicRate "0"
.BloodFlow "0"
.VoxelConvection "0"
.MechanicsType "Isotropic"
.YoungsModulus "120"
.PoissonsRatio "0.33"
.ThermalExpansionRate "17"
.Colour "1", "1", "0"
.Wireframe "False"
.Reflection "False"
.Allowoutline "True"
.Transparentoutline "False"
.Transparency "0"
.Create
End With

'@ define sweepprofile: Coil1:Core

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
With SweepCurve
     .Reset 
     .Name "Core" 
     .Component "Coil1" 
     .Material "Copper (annealed)" 
     .Twistangle "0.0" 
     .Taperangle "0.0" 
     .ProjectProfileToPathAdvanced "True" 
     .CutEndOff "True" 
     .DeleteProfile "False" 
     .DeletePath "False" 
     .Path "Coil1:Path" 
     .Curve "Coil1:Core" 
     .Create
End With

'@ boolean insert shapes: Coil1:Wire, Coil1:Core

'[VERSION]2022.4|31.0.1|20220426[/VERSION]
Solid.Insert "Coil1:Wire", "Coil1:Core"

''@ execute macro: BuildCoils
'
''[VERSION]2022.5|31.0.1|20220603[/VERSION]
'C2_SelectBuildPosition()
'	C2_DrawPath()
'	C2_BuildWire()
'
