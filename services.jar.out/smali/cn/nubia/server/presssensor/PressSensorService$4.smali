.class Lcn/nubia/server/presssensor/PressSensorService$4;
.super Ljava/lang/Object;
.source "PressSensorService.java"

# interfaces
.implements Lcn/nubia/server/presssensor/PressGestureSettings$GestureEnableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressSensorService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressSensorService;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressSensorService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 176
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$4;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 178
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$4;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0, p1}, Lcn/nubia/server/presssensor/PressSensorService;->access$702(Lcn/nubia/server/presssensor/PressSensorService;Z)Z

    .line 179
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$4;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$700(Lcn/nubia/server/presssensor/PressSensorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$4;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$800(Lcn/nubia/server/presssensor/PressSensorService;)Lcn/nubia/server/presssensor/PressGestureMutex;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureMutex;->start()V

    .line 181
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$4;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$400(Lcn/nubia/server/presssensor/PressSensorService;)V

    .line 182
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$4;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    .line 183
    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$900(Lcn/nubia/server/presssensor/PressSensorService;)Lnubia/os/ITaskCallback;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->unregisterCallback(Lnubia/os/ITaskCallback;)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$4;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$800(Lcn/nubia/server/presssensor/PressSensorService;)Lcn/nubia/server/presssensor/PressGestureMutex;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureMutex;->stop()V

    .line 187
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$4;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$400(Lcn/nubia/server/presssensor/PressSensorService;)V

    .line 188
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$4;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    .line 189
    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$900(Lcn/nubia/server/presssensor/PressSensorService;)Lnubia/os/ITaskCallback;

    move-result-object v0

    const-wide/16 v1, 0x1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 188
    invoke-static {v0, v1, v2, v3}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V

    .line 194
    :goto_0
    return-void
.end method
