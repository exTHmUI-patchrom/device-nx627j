.class public abstract Landroid/hardware/display/DisplayManagerInternal;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;,
        Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;,
        Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDisplayInfo(I)Landroid/view/DisplayInfo;
.end method

.method public getDoubleScreenMode()I
    .locals 1

    .line 420
    const/16 v0, 0x3e8

    return v0
.end method

.method public abstract getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V
.end method

.method public abstract getScreenBrightness()I
.end method

.method public abstract initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
.end method

.method public abstract isProximitySensorAvailable()Z
.end method

.method public abstract isUidPresentOnDisplay(II)Z
.end method

.method public abstract onOverlayChanged()V
.end method

.method public abstract performTraversal(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract persistBrightnessTrackerState()V
.end method

.method public abstract registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
.end method

.method public abstract requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
.end method

.method public resetScreenState()V
    .locals 0

    .line 421
    return-void
.end method

.method public abstract setDisplayAccessUIDs(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
.end method

.method public abstract setDisplayOffsets(III)V
.end method

.method public setDisplayPowerMode(IZ)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "isOn"    # Z

    .line 418
    return-void
.end method

.method public setDisplayPowerMode(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .line 427
    return-void
.end method

.method public abstract setDisplayProperties(IZFIZ)V
.end method

.method public abstract setScreenBrightness(IZ)V
.end method

.method public setScreenMirror(Z)V
    .locals 0
    .param p1, "enableMirror"    # Z

    .line 422
    return-void
.end method

.method public setScreenSwitch()V
    .locals 0

    .line 419
    return-void
.end method

.method public abstract unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
.end method

.method public abstract updateDoubleScreenBrightness()V
.end method
