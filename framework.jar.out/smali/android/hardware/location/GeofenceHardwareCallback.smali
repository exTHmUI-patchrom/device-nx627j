.class public abstract Landroid/hardware/location/GeofenceHardwareCallback;
.super Ljava/lang/Object;
.source "GeofenceHardwareCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeofenceAdd(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 56
    return-void
.end method

.method public onGeofencePause(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 78
    return-void
.end method

.method public onGeofenceRemove(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 67
    return-void
.end method

.method public onGeofenceResume(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 90
    return-void
.end method

.method public onGeofenceTransition(IILandroid/location/Location;JI)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "transition"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "timestamp"    # J
    .param p6, "monitoringType"    # I

    .line 43
    return-void
.end method
