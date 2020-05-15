.class Lcn/nubia/server/appmgmt/AppDataManager$UpgradeAppTableObserver;
.super Landroid/database/ContentObserver;
.source "AppDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/AppDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpgradeAppTableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/AppDataManager;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/AppDataManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 790
    iput-object p1, p0, Lcn/nubia/server/appmgmt/AppDataManager$UpgradeAppTableObserver;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    .line 791
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 792
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/AppDataManager$UpgradeAppTableObserver;->observe()V

    .line 793
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 796
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager$UpgradeAppTableObserver;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->access$200(Lcn/nubia/server/appmgmt/AppDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 797
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://cn.nubia.security.power/upgrade_app_table"

    .line 798
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 797
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 799
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 803
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager$UpgradeAppTableObserver;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->access$400(Lcn/nubia/server/appmgmt/AppDataManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager$UpgradeAppTableObserver;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/AppDataManager;->access$300(Lcn/nubia/server/appmgmt/AppDataManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager$UpgradeAppTableObserver;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->access$400(Lcn/nubia/server/appmgmt/AppDataManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager$UpgradeAppTableObserver;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/AppDataManager;->access$300(Lcn/nubia/server/appmgmt/AppDataManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 806
    :cond_0
    return-void
.end method
