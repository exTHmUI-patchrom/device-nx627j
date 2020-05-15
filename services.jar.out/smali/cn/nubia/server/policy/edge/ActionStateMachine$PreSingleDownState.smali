.class Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;
.super Lcom/android/internal/util/State;
.source "ActionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/ActionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreSingleDownState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .line 456
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 459
    const-string v0, "ActionStateMachine"

    const-string v1, "enter PreSingleDownState"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->sysi(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 464
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/edgegesture/EdgeGesture;

    .line 465
    .local v0, "gesture":Lcn/nubia/edgegesture/EdgeGesture;
    const-string v1, "ActionStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v3}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$200(Lcn/nubia/server/policy/edge/ActionStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", gesture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->sysd(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 483
    const/4 v1, 0x0

    return v1

    .line 469
    :sswitch_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$900(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 470
    return v2

    .line 479
    :sswitch_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1, v0, v2}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$600(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;Z)V

    .line 480
    return v2

    .line 475
    :sswitch_2
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1100(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 476
    return v2

    .line 472
    :sswitch_3
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1000(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 473
    return v2

    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_3
        0x1003 -> :sswitch_2
        0x2001 -> :sswitch_1
        0x2002 -> :sswitch_1
        0x3006 -> :sswitch_0
    .end sparse-switch
.end method
