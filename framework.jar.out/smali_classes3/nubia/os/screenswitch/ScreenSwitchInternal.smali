.class public abstract Lnubia/os/screenswitch/ScreenSwitchInternal;
.super Ljava/lang/Object;
.source "ScreenSwitchInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPressSensorEffective()Z
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public confirmBrightness(II)I
    .locals 0
    .param p1, "device"    # I
    .param p2, "brightness"    # I

    .line 53
    return p2
.end method

.method public confirmLayerStack(I)I
    .locals 1
    .param p1, "device"    # I

    .line 56
    const/4 v0, -0x1

    return v0
.end method

.method public confirmPowerState(II)I
    .locals 1
    .param p1, "device"    # I
    .param p2, "state"    # I

    .line 59
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getShowingDisplayId()I
.end method

.method public abstract isKeepAdj(I)Z
.end method

.method public abstract isLandscapeSwipe()Z
.end method

.method public abstract isMultiTasksEnable()Z
.end method

.method public abstract isThreeFingerLeft()Z
.end method

.method public abstract isThreeFingerSwipe()Z
.end method

.method public abstract noteActivityResume(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;ZI)Z
.end method

.method public abstract noteAllDrawn()V
.end method

.method public abstract noteDisplayFreezingState(Z)V
.end method

.method public abstract noteExitTopTask(I)V
.end method

.method public abstract noteSurfaceChange(IILandroid/view/IApplicationToken;ZI)V
.end method

.method public abstract noteUpdateRotation(Z)V
.end method

.method public resetDetectorWhenTimeout()V
    .locals 0

    .line 10
    return-void
.end method

.method public abstract resetLandscapeSwipe()V
.end method

.method public abstract resetThreeFingerSwipe()V
.end method

.method public abstract setDualFingerprintPress(Z)V
.end method

.method public setPressSensorActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 63
    return-void
.end method

.method public abstract setRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
.end method

.method public abstract setScreenFaceUpListener(Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;)V
.end method

.method public abstract startDetectingScreen()V
.end method

.method public abstract threeFingerSwipe(Z)V
.end method

.method public updateNubiaMode()V
    .locals 0

    .line 61
    return-void
.end method

.method public abstract updateRequest(Ljava/lang/String;)V
.end method
