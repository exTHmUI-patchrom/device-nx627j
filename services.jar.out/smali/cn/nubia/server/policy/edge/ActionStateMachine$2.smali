.class Lcn/nubia/server/policy/edge/ActionStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "ActionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/ActionStateMachine;->registerGlobalActionForPowerKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .line 105
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$2;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 108
    const-string/jumbo v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "extra":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "globalactions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "ActionStateMachine"

    const-string/jumbo v2, "receive broadcast containing extra of globalactions"

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$2;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$000(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    .line 113
    :cond_0
    return-void
.end method
