.class Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;
.super Lcom/android/internal/util/State;
.source "BreathingLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCreenOffState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .line 90
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 118
    const/4 v0, 0x0

    return v0

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleLowPower()V

    .line 116
    return v1

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleCloseMissEvent()V

    .line 104
    return v1

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleCharged()V

    .line 112
    return v1

    .line 107
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleCharging()V

    .line 108
    return v1

    .line 99
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleMissEvent()V

    .line 100
    return v1

    .line 94
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleScreenOn()V

    .line 95
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x71
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
