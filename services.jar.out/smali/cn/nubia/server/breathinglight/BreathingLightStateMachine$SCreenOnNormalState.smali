.class Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;
.super Lcom/android/internal/util/State;
.source "BreathingLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCreenOnNormalState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .line 166
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 182
    const/4 v0, 0x0

    return v0

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleMotionEvent()V

    .line 175
    return v2

    .line 170
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyEvent()V

    .line 171
    return v2

    .line 178
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleSetBrightnesss()V

    .line 179
    return v2

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
