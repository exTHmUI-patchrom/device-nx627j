.class Lcn/nubia/server/appmgmt/AppDataManager$FreezeGPSTableObserver;
.super Landroid/database/ContentObserver;
.source "AppDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/AppDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreezeGPSTableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/AppDataManager;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/AppDataManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 818
    iput-object p1, p0, Lcn/nubia/server/appmgmt/AppDataManager$FreezeGPSTableObserver;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    .line 819
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 820
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/AppDataManager$FreezeGPSTableObserver;->observe()V

    .line 821
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 824
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager$FreezeGPSTableObserver;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->access$200(Lcn/nubia/server/appmgmt/AppDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 825
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://cn.nubia.security.power/freeze_gps_table"

    .line 826
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 825
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 827
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 831
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager$FreezeGPSTableObserver;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->access$400(Lcn/nubia/server/appmgmt/AppDataManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager$FreezeGPSTableObserver;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/AppDataManager;->access$600(Lcn/nubia/server/appmgmt/AppDataManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager$FreezeGPSTableObserver;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->access$400(Lcn/nubia/server/appmgmt/AppDataManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppDataManager$FreezeGPSTableObserver;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/AppDataManager;->access$600(Lcn/nubia/server/appmgmt/AppDataManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 834
    :cond_0
    return-void
.end method
