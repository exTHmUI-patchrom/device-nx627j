.class Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "ActionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/ActionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .line 384
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 387
    const-string v0, "ActionStateMachine"

    const-string v1, "enter IdleState"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->sysi(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$300(Lcn/nubia/server/policy/edge/ActionStateMachine;)Lcn/nubia/server/policy/edge/OnActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/OnActionListener;->onEnterIdleState()V

    .line 389
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$400(Lcn/nubia/server/policy/edge/ActionStateMachine;)Lcn/nubia/server/policy/edge/FitCardListener;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/FitCardListener;->onEnterIdleState()V

    .line 390
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 394
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/edgegesture/EdgeGesture;

    .line 395
    .local v0, "gesture":Lcn/nubia/edgegesture/EdgeGesture;
    const-string v1, "ActionStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v3}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$200(Lcn/nubia/server/policy/edge/ActionStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", gesture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->sysd(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 421
    const/4 v1, 0x0

    return v1

    .line 411
    :sswitch_0
    const/16 v1, 0x4002

    invoke-virtual {v0, v1}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .line 412
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 413
    new-instance v1, Lcn/nubia/edgegesture/EdgeGesture;

    iget v3, v0, Lcn/nubia/edgegesture/EdgeGesture;->mType:I

    const/16 v4, 0x5001

    iget-object v5, v0, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    invoke-direct {v1, v3, v4, v5}, Lcn/nubia/edgegesture/EdgeGesture;-><init>(II[Lcn/nubia/edgegesture/EdgeGesture$Pointer;)V

    .line 414
    .local v1, "newGesture":Lcn/nubia/edgegesture/EdgeGesture;
    iget-object v3, v0, Lcn/nubia/edgegesture/EdgeGesture;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v3}, Lcn/nubia/edgegesture/EdgeGesture;->setMotionEvent(Landroid/view/MotionEvent;)V

    .line 415
    iget-object v3, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-virtual {v1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 416
    return v2

    .line 418
    .end local v1    # "newGesture":Lcn/nubia/edgegesture/EdgeGesture;
    :sswitch_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$800(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 419
    return v2

    .line 408
    :sswitch_2
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$700(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 409
    return v2

    .line 405
    :sswitch_3
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1, v0, v2}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$600(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;Z)V

    .line 406
    return v2

    .line 401
    :sswitch_4
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$500(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 402
    return v2

    :sswitch_data_0
    .sparse-switch
        0x1005 -> :sswitch_4
        0x1006 -> :sswitch_4
        0x2001 -> :sswitch_3
        0x2002 -> :sswitch_3
        0x4002 -> :sswitch_2
        0x6001 -> :sswitch_1
        0x7001 -> :sswitch_0
    .end sparse-switch
.end method
