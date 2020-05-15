.class Lcn/nubia/server/presssensor/PressSensorService$LocalService$1;
.super Ljava/lang/Object;
.source "PressSensorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressSensorService$LocalService;->onApplicationManagerSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/presssensor/PressSensorService$LocalService;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressSensorService$LocalService;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/presssensor/PressSensorService$LocalService;

    .line 567
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$LocalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 569
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$LocalService;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$LocalService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$700(Lcn/nubia/server/presssensor/PressSensorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$LocalService;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$LocalService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$800(Lcn/nubia/server/presssensor/PressSensorService;)Lcn/nubia/server/presssensor/PressGestureMutex;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureMutex;->start()V

    goto :goto_0

    .line 572
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$LocalService;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$LocalService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    .line 573
    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$900(Lcn/nubia/server/presssensor/PressSensorService;)Lnubia/os/ITaskCallback;

    move-result-object v0

    const-wide/16 v1, 0x1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 572
    invoke-static {v0, v1, v2, v3}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V

    .line 577
    :goto_0
    return-void
.end method
