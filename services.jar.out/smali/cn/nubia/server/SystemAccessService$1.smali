.class Lcn/nubia/server/SystemAccessService$1;
.super Landroid/os/Handler;
.source "SystemAccessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/SystemAccessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/SystemAccessService;


# direct methods
.method constructor <init>(Lcn/nubia/server/SystemAccessService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/SystemAccessService;

    .line 50
    iput-object p1, p0, Lcn/nubia/server/SystemAccessService$1;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$1;->this$0:Lcn/nubia/server/SystemAccessService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/SystemAccessService;->access$002(Lcn/nubia/server/SystemAccessService;Z)Z

    .line 56
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$1;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0, v1}, Lcn/nubia/server/SystemAccessService;->access$102(Lcn/nubia/server/SystemAccessService;Z)Z

    .line 59
    :goto_0
    return-void
.end method
