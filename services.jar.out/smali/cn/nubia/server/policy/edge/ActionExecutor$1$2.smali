.class Lcn/nubia/server/policy/edge/ActionExecutor$1$2;
.super Ljava/lang/Object;
.source "ActionExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/ActionExecutor$1;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/ActionExecutor$1;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/ActionExecutor$1;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/policy/edge/ActionExecutor$1;

    .line 78
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionExecutor$1$2;->this$1:Lcn/nubia/server/policy/edge/ActionExecutor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor$1$2;->this$1:Lcn/nubia/server/policy/edge/ActionExecutor$1;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/ActionExecutor$1;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$400(Lcn/nubia/server/policy/edge/ActionExecutor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor$1$2;->this$1:Lcn/nubia/server/policy/edge/ActionExecutor$1;

    iget-object v1, v1, Lcn/nubia/server/policy/edge/ActionExecutor$1;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$300(Lcn/nubia/server/policy/edge/ActionExecutor;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 82
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor$1$2;->this$1:Lcn/nubia/server/policy/edge/ActionExecutor$1;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/ActionExecutor$1;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$002(Lcn/nubia/server/policy/edge/ActionExecutor;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 83
    return-void
.end method
