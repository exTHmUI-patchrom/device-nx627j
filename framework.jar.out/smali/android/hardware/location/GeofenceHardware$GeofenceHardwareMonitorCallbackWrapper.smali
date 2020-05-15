.class Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
.super Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;
.source "GeofenceHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GeofenceHardwareMonitorCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/location/GeofenceHardwareMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/location/GeofenceHardware;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardware;
    .param p2, "c"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .line 478
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->this$0:Landroid/hardware/location/GeofenceHardware;

    invoke-direct {p0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;-><init>()V

    .line 479
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 480
    return-void
.end method


# virtual methods
.method public onMonitoringSystemChange(Landroid/hardware/location/GeofenceHardwareMonitorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    .line 483
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .line 484
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareMonitorCallback;
    if-nez v0, :cond_0

    return-void

    .line 487
    :cond_0
    nop

    .line 488
    invoke-virtual {p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->getMonitoringType()I

    move-result v1

    .line 489
    invoke-virtual {p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->getMonitoringStatus()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 490
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 487
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/location/GeofenceHardwareMonitorCallback;->onMonitoringSystemChange(IZLandroid/location/Location;)V

    .line 494
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 495
    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareMonitorCallback;->onMonitoringSystemChange(Landroid/hardware/location/GeofenceHardwareMonitorEvent;)V

    .line 497
    :cond_2
    return-void
.end method
