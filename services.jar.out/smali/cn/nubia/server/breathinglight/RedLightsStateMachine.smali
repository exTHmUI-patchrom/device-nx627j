.class public Lcn/nubia/server/breathinglight/RedLightsStateMachine;
.super Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.source "RedLightsStateMachine.java"


# instance fields
.field private mHasMissEvent:Z

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 12
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V

    .line 13
    iput-object p2, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 14
    return-void
.end method


# virtual methods
.method protected handleCharged()V
    .locals 3

    .line 70
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mHasMissEvent:Z

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 74
    :cond_0
    return-void
.end method

.method protected handleCharging()V
    .locals 4

    .line 62
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mHasMissEvent:Z

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x30

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 66
    :cond_0
    return-void
.end method

.method protected handleCloseMissEvent()V
    .locals 3

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mHasMissEvent:Z

    .line 47
    iget-object v1, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0, v0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 49
    return-void
.end method

.method protected handleKeyEvent()V
    .locals 0

    .line 77
    return-void
.end method

.method protected handleKeyguardDragRelease()V
    .locals 0

    .line 86
    return-void
.end method

.method protected handleKeyguardDragStart()V
    .locals 0

    .line 83
    return-void
.end method

.method protected handleKeyguardUnlock()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mHasMissEvent:Z

    .line 31
    invoke-super {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyguardUnlock()V

    .line 32
    return-void
.end method

.method protected handleLowPower()V
    .locals 5

    .line 53
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mHasMissEvent:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x30

    const/4 v2, 0x3

    iget-object v3, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 56
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4, v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v3

    const/4 v4, 0x0

    .line 54
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 58
    :cond_0
    return-void
.end method

.method protected handleMissEvent()V
    .locals 6

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mHasMissEvent:Z

    .line 37
    iget-object v1, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 39
    iget-object v1, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v5, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v5, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v5, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 41
    invoke-virtual {v4, v0, v0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v0

    .line 39
    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4, v0, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 42
    return-void
.end method

.method protected handleMotionEvent()V
    .locals 0

    .line 80
    return-void
.end method

.method protected handleProximityScreenOff()V
    .locals 0

    .line 89
    return-void
.end method

.method protected handleProximityScreenOn()V
    .locals 0

    .line 92
    return-void
.end method

.method protected handleScreenOn()V
    .locals 3

    .line 23
    iget-object v0, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 25
    invoke-super {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleScreenOn()V

    .line 26
    return-void
.end method

.method public setHasMissEvent(Z)V
    .locals 0
    .param p1, "hasMissEvent"    # Z

    .line 18
    iput-boolean p1, p0, Lcn/nubia/server/breathinglight/RedLightsStateMachine;->mHasMissEvent:Z

    .line 19
    return-void
.end method
