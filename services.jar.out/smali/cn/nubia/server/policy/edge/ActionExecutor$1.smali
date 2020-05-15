.class Lcn/nubia/server/policy/edge/ActionExecutor$1;
.super Ljava/lang/Object;
.source "ActionExecutor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/ActionExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/ActionExecutor;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/ActionExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/ActionExecutor;

    .line 64
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionExecutor$1;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 67
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor$1;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$200(Lcn/nubia/server/policy/edge/ActionExecutor;)Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/policy/edge/ActionExecutor$1$1;

    invoke-direct {v1, p0, p2}, Lcn/nubia/server/policy/edge/ActionExecutor$1$1;-><init>(Lcn/nubia/server/policy/edge/ActionExecutor$1;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "iBinder"    # Landroid/content/ComponentName;

    .line 78
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor$1;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$200(Lcn/nubia/server/policy/edge/ActionExecutor;)Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/policy/edge/ActionExecutor$1$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/ActionExecutor$1$2;-><init>(Lcn/nubia/server/policy/edge/ActionExecutor$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method
