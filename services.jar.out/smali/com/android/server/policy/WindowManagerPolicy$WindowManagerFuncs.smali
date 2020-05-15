.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowManagerFuncs"
.end annotation


# static fields
.field public static final CAMERA_LENS_COVERED:I = 0x1

.field public static final CAMERA_LENS_COVER_ABSENT:I = -0x1

.field public static final CAMERA_LENS_UNCOVERED:I = 0x0

.field public static final LID_ABSENT:I = -0x1

.field public static final LID_CLOSED:I = 0x0

.field public static final LID_OPEN:I = 0x1


# direct methods
.method public static cameraLensStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "lens"    # I

    .line 656
    packed-switch p0, :pswitch_data_0

    .line 664
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 662
    :pswitch_0
    const-string v0, "CAMERA_LENS_COVERED"

    return-object v0

    .line 660
    :pswitch_1
    const-string v0, "CAMERA_LENS_UNCOVERED"

    return-object v0

    .line 658
    :pswitch_2
    const-string v0, "CAMERA_LENS_COVER_ABSENT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static lidStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "lid"    # I

    .line 640
    packed-switch p0, :pswitch_data_0

    .line 648
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 646
    :pswitch_0
    const-string v0, "LID_OPEN"

    return-object v0

    .line 644
    :pswitch_1
    const-string v0, "LID_CLOSED"

    return-object v0

    .line 642
    :pswitch_2
    const-string v0, "LID_ABSENT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
.end method

.method public abstract getCameraLensCoverState()I
.end method

.method public abstract getDockedDividerInsetsLw()I
.end method

.method public abstract getGameState()I
.end method

.method public abstract getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;
.end method

.method public abstract getLidState()I
.end method

.method public abstract getStackBounds(IILandroid/graphics/Rect;)V
.end method

.method public abstract getWindowManagerLock()Ljava/lang/Object;
.end method

.method public abstract lockDeviceNow()V
.end method

.method public abstract notifyKeyguardTrustedChanged()V
.end method

.method public abstract notifyShowingDreamChanged()V
.end method

.method public abstract onKeyguardShowingAndNotOccludedChanged()V
.end method

.method public abstract reboot(Z)V
.end method

.method public abstract rebootSafeMode(Z)V
.end method

.method public abstract reevaluateStatusBarVisibility()V
.end method

.method public abstract registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
.end method

.method public abstract screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
.end method

.method public abstract shutdown(Z)V
.end method

.method public abstract switchInputMethod(Z)V
.end method

.method public abstract switchKeyboardLayout(II)V
.end method

.method public abstract triggerAnimationFailsafe()V
.end method

.method public abstract unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
.end method
