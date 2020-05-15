.class Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;
.super Lcom/android/internal/util/State;
.source "BreathingLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCreenOnState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .line 123
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 139
    const/4 v0, 0x0

    return v0

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleProximityScreenOn()V

    .line 137
    return v2

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleProximityScreenOff()V

    .line 134
    return v2

    .line 130
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$100(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    .line 131
    return v2

    .line 127
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$000(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    .line 128
    return v2

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
