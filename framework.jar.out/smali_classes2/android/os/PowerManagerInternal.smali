.class public abstract Landroid/os/PowerManagerInternal;
.super Ljava/lang/Object;
.source "PowerManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManagerInternal$LowPowerModeListener;
    }
.end annotation


# static fields
.field public static final WAKEFULNESS_ASLEEP:I = 0x0

.field public static final WAKEFULNESS_AWAKE:I = 0x1

.field public static final WAKEFULNESS_DOZING:I = 0x3

.field public static final WAKEFULNESS_DREAMING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInteractive(I)Z
    .locals 2
    .param p0, "wakefulness"    # I

    .line 96
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static wakefulnessToProtoEnum(I)I
    .locals 1
    .param p0, "wakefulness"    # I

    .line 77
    packed-switch p0, :pswitch_data_0

    .line 87
    return p0

    .line 85
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 83
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 81
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 79
    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static wakefulnessToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "wakefulness"    # I

    .line 59
    packed-switch p0, :pswitch_data_0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 67
    :pswitch_0
    const-string v0, "Dozing"

    return-object v0

    .line 65
    :pswitch_1
    const-string v0, "Dreaming"

    return-object v0

    .line 63
    :pswitch_2
    const-string v0, "Awake"

    return-object v0

    .line 61
    :pswitch_3
    const-string v0, "Asleep"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract finishUidChanges()V
.end method

.method public abstract getLowPowerState(I)Landroid/os/PowerSaveState;
.end method

.method public abstract isDealyPowerWakeup()Z
.end method

.method public abstract powerHint(II)V
.end method

.method public registerLowPowerModeObserver(ILjava/util/function/Consumer;)V
    .locals 1
    .param p1, "serviceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Landroid/os/PowerSaveState;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/PowerSaveState;>;"
    new-instance v0, Landroid/os/PowerManagerInternal$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/PowerManagerInternal$1;-><init>(Landroid/os/PowerManagerInternal;ILjava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 171
    return-void
.end method

.method public abstract registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
.end method

.method public abstract setDealyPowerWakeup(Z)V
.end method

.method public abstract setDeviceIdleMode(Z)Z
.end method

.method public abstract setDeviceIdleTempWhitelist([I)V
.end method

.method public abstract setDeviceIdleWhitelist([I)V
.end method

.method public abstract setDozeOverrideFromDreamManager(II)V
.end method

.method public abstract setDrawWakeLockOverrideFromSidekick(Z)V
.end method

.method public abstract setLightDeviceIdleMode(Z)Z
.end method

.method public abstract setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V
.end method

.method public abstract setScreenBrightnessOverrideFromWindowManager(I)V
.end method

.method public abstract setUserActivityTimeoutOverrideFromWindowManager(J)V
.end method

.method public abstract setUserInactiveOverrideFromWindowManager()V
.end method

.method public abstract startUidChanges()V
.end method

.method public abstract uidActive(I)V
.end method

.method public abstract uidGone(I)V
.end method

.method public abstract uidIdle(I)V
.end method

.method public abstract updateUidProcState(II)V
.end method
