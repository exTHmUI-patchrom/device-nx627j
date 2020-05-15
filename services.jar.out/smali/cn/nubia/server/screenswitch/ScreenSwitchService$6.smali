.class Lcn/nubia/server/screenswitch/ScreenSwitchService$6;
.super Lnubia/os/ITaskCallback$Stub;
.source "ScreenSwitchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;->registerApplicaitonManagerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 520
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Lnubia/os/ITaskCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 522
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_1

    .line 525
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "activityName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4202(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/String;)Ljava/lang/String;

    .line 526
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4302(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/String;)Ljava/lang/String;

    .line 527
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4400(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_1
    return-void
.end method
