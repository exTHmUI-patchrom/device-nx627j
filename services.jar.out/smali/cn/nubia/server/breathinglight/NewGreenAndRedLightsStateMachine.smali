.class public Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;
.super Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.source "NewGreenAndRedLightsStateMachine.java"


# instance fields
.field private mHasMissEvent:Z

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 11
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mHasMissEvent:Z

    .line 12
    iput-object p2, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 13
    return-void
.end method


# virtual methods
.method protected handleCharged()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 76
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mHasMissEvent:Z

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v2, 0x40

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 80
    :cond_0
    return-void
.end method

.method protected handleCharging()V
    .locals 4

    .line 66
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mHasMissEvent:Z

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x30

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 70
    :cond_0
    return-void
.end method

.method protected handleCloseMissEvent()V
    .locals 3

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mHasMissEvent:Z

    .line 51
    iget-object v1, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v2, 0x40

    invoke-virtual {v1, v2, v0, v0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 53
    return-void
.end method

.method protected handleKeyEvent()V
    .locals 0

    .line 83
    return-void
.end method

.method protected handleKeyguardDragRelease()V
    .locals 0

    .line 92
    return-void
.end method

.method protected handleKeyguardDragStart()V
    .locals 0

    .line 89
    return-void
.end method

.method protected handleKeyguardUnlock()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mHasMissEvent:Z

    .line 33
    invoke-super {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyguardUnlock()V

    .line 34
    return-void
.end method

.method protected handleLowPower()V
    .locals 5

    .line 57
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mHasMissEvent:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x30

    const/4 v2, 0x3

    iget-object v3, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 60
    const/4 v4, 0x4

    invoke-virtual {v3, v4, v4, v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v3

    const/4 v4, 0x0

    .line 58
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 62
    :cond_0
    return-void
.end method

.method protected handleMissEvent()V
    .locals 5

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mHasMissEvent:Z

    .line 39
    iget-object v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 41
    iget-object v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v3, 0x30

    invoke-virtual {v0, v3, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 43
    iget-object v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v3, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 45
    const/4 v4, 0x4

    invoke-virtual {v3, v4, v4, v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v3

    .line 43
    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4, v3, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 46
    return-void
.end method

.method protected handleMotionEvent()V
    .locals 0

    .line 86
    return-void
.end method

.method protected handleProximityScreenOff()V
    .locals 0

    .line 95
    return-void
.end method

.method protected handleProximityScreenOn()V
    .locals 0

    .line 98
    return-void
.end method

.method protected handleScreenOn()V
    .locals 3

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mHasMissEvent:Z

    .line 23
    iget-object v1, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0, v0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 25
    iget-object v1, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v2, 0x40

    invoke-virtual {v1, v2, v0, v0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 27
    invoke-super {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleScreenOn()V

    .line 28
    return-void
.end method

.method public setHasMissEvent(Z)V
    .locals 0
    .param p1, "hasMissEvent"    # Z

    .line 17
    iput-boolean p1, p0, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;->mHasMissEvent:Z

    .line 18
    return-void
.end method
