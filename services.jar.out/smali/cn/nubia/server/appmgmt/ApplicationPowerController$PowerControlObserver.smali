.class Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;
.super Landroid/database/ContentObserver;
.source "ApplicationPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerControlObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 266
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .line 267
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 268
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$000(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 272
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://cn.nubia.security.power/wakeup_alarm_table"

    .line 273
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 272
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 279
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$200(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$100(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$200(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$100(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    :cond_0
    return-void
.end method
