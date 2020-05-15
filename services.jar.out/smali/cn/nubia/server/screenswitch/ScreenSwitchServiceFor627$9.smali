.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$9;
.super Landroid/database/ContentObserver;
.source "ScreenSwitchServiceFor627.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->watchForDeviceProvisioning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 561
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$9;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$onChange$0(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$9;)V
    .locals 2

    .line 568
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$9;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/database/ContentObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$9;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$9;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 571
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 564
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 565
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$9;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$9;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 566
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVICE_PROVISIONED state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$9;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$9;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$9$pC_qZ0ciPKDCbcJ_fORIVWcP3Nc;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$9$pC_qZ0ciPKDCbcJ_fORIVWcP3Nc;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    return-void
.end method
