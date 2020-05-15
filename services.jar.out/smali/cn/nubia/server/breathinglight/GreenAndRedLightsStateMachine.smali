.class public Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;
.super Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.source "GreenAndRedLightsStateMachine.java"


# instance fields
.field private mHasMissEvent:Z

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 10
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V

    .line 11
    iput-object p2, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 12
    return-void
.end method


# virtual methods
.method protected handleCharged()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 58
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mHasMissEvent:Z

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 62
    :cond_0
    return-void
.end method

.method protected handleCharging()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 52
    return-void
.end method

.method protected handleCloseMissEvent()V
    .locals 3

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mHasMissEvent:Z

    .line 36
    iget-object v1, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 38
    return-void
.end method

.method protected handleKeyEvent()V
    .locals 0

    .line 65
    return-void
.end method

.method protected handleKeyguardDragRelease()V
    .locals 0

    .line 74
    return-void
.end method

.method protected handleKeyguardDragStart()V
    .locals 0

    .line 71
    return-void
.end method

.method protected handleKeyguardUnlock()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mHasMissEvent:Z

    .line 22
    invoke-super {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyguardUnlock()V

    .line 23
    return-void
.end method

.method protected handleLowPower()V
    .locals 4

    .line 42
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mHasMissEvent:Z

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 46
    :cond_0
    return-void
.end method

.method protected handleMissEvent()V
    .locals 4

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mHasMissEvent:Z

    .line 28
    iget-object v0, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 30
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v1

    .line 28
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2, v1, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 31
    return-void
.end method

.method protected handleMotionEvent()V
    .locals 0

    .line 68
    return-void
.end method

.method protected handleProximityScreenOff()V
    .locals 0

    .line 77
    return-void
.end method

.method protected handleProximityScreenOn()V
    .locals 0

    .line 80
    return-void
.end method

.method public setHasMissEvent(Z)V
    .locals 0
    .param p1, "hasMissEvent"    # Z

    .line 16
    iput-boolean p1, p0, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;->mHasMissEvent:Z

    .line 17
    return-void
.end method
