.class public Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;
.super Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.source "HomeDisabledBreathingLightStateMatchine.java"


# instance fields
.field private mHasMissEvent:Z

.field mService:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 12
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V

    .line 13
    iput-object p2, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 14
    return-void
.end method


# virtual methods
.method protected handleCharged()V
    .locals 3

    .line 45
    const/16 v0, 0x28

    .line 46
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 48
    return-void
.end method

.method protected handleCharging()V
    .locals 4

    .line 38
    const/16 v0, 0x28

    .line 39
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 41
    return-void
.end method

.method protected handleCloseMissEvent()V
    .locals 3

    .line 31
    const/16 v0, 0x28

    .line 32
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 34
    return-void
.end method

.method protected handleKeyEvent()V
    .locals 0

    .line 58
    return-void
.end method

.method protected handleKeyguardDragRelease()V
    .locals 0

    .line 67
    return-void
.end method

.method protected handleKeyguardDragStart()V
    .locals 0

    .line 64
    return-void
.end method

.method protected handleMissEvent()V
    .locals 6

    .line 23
    const/16 v0, 0x28

    .line 24
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 26
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v3, v5}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v2

    .line 24
    invoke-virtual {v1, v0, v4, v2, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 27
    return-void
.end method

.method protected handleMotionEvent()V
    .locals 0

    .line 61
    return-void
.end method

.method protected handleProximityScreenOff()V
    .locals 0

    .line 70
    return-void
.end method

.method protected handleProximityScreenOn()V
    .locals 0

    .line 73
    return-void
.end method

.method protected handleSetBrightnesss()V
    .locals 4

    .line 52
    const/16 v0, 0x28

    .line 53
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 55
    return-void
.end method

.method public setHasMissEvent(Z)V
    .locals 0
    .param p1, "hasMissEvent"    # Z

    .line 18
    iput-boolean p1, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mHasMissEvent:Z

    .line 19
    return-void
.end method
