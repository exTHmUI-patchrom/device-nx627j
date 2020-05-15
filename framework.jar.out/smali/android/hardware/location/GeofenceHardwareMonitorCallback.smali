.class public abstract Landroid/hardware/location/GeofenceHardwareMonitorCallback;
.super Ljava/lang/Object;
.source "GeofenceHardwareMonitorCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonitoringSystemChange(IZLandroid/location/Location;)V
    .locals 0
    .param p1, "monitoringType"    # I
    .param p2, "available"    # Z
    .param p3, "location"    # Landroid/location/Location;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    return-void
.end method

.method public onMonitoringSystemChange(Landroid/hardware/location/GeofenceHardwareMonitorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    .line 60
    return-void
.end method
