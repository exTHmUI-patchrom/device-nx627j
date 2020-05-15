.class Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;
.super Lcom/android/internal/util/State;
.source "ActionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/ActionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .line 561
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 564
    const-string v0, "ActionStateMachine"

    const-string v1, "enter PressState"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->sysi(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 569
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/edgegesture/EdgeGesture;

    .line 570
    .local v0, "gesture":Lcn/nubia/edgegesture/EdgeGesture;
    const-string v1, "ActionStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v3}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$200(Lcn/nubia/server/policy/edge/ActionStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", gesture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->sysd(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x5001

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 587
    return v2

    .line 575
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1500(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 576
    return v3

    .line 582
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1800(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 583
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1700(Lcn/nubia/server/policy/edge/ActionStateMachine;Z)V

    .line 584
    return v3

    .line 578
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1600(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 579
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1, v3}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1700(Lcn/nubia/server/policy/edge/ActionStateMachine;Z)V

    .line 580
    return v3

    :pswitch_data_0
    .packed-switch 0x4003
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
