.class Lcn/nubia/server/SystemAccessService$2;
.super Ljava/lang/Object;
.source "SystemAccessService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 64
    iput-object p1, p0, Lcn/nubia/server/SystemAccessService$2;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$2;->this$0:Lcn/nubia/server/SystemAccessService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/SystemAccessService;->access$202(Lcn/nubia/server/SystemAccessService;Z)Z

    .line 68
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$2;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$300(Lcn/nubia/server/SystemAccessService;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$2;->this$0:Lcn/nubia/server/SystemAccessService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/SystemAccessService;->access$302(Lcn/nubia/server/SystemAccessService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 71
    :cond_0
    return-void
.end method
