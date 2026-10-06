import arcpy
from pathlib import Path

workspace = r"C:\GIS\Enterprise.gdb"

def project_features(workspace: Path) -> None:
    arcpy.env.workspace = workspace
    for feature_class in arcpy.ListFeatureClasses():
        arcpy.management.Project(feature_class, output_path, spatial_reference)
