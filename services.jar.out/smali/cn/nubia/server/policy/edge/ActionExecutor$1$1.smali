.class Lcn/nubia/server/policy/edge/ActionExecutor$1$1;
.super Ljava/lang/Object;
.source "ActionExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/ActionExecutor$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/ActionExecutor$1;

.field final synthetic val$iBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/ActionExecutor$1;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/policy/edge/ActionExecutor$1;

    .line 67
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionExecutor$1$1;->this$1:Lcn/nubia/server/policy/edge/ActionExecutor$1;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$1$1;->val$iBinder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor$1$1;->this$1:Lcn/nubia/server/policy/edge/ActionExecutor$1;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/ActionExecutor$1;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$1$1;->val$iBinder:Landroid/os/IBinder;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$002(Lcn/nubia/server/policy/edge/ActionExecutor;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor$1$1;->this$1:Lcn/nubia/server/policy/edge/ActionExecutor$1;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/ActionExecutor$1;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$100(Lcn/nubia/server/policy/edge/ActionExecutor;)V

    .line 72
    return-void
.end method
