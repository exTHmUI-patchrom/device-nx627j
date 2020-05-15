.class Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$AppStoreObserver;
.super Landroid/database/ContentObserver;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppStoreObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$AppStoreObserver;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    .line 95
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 96
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$AppStoreObserver;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->access$100(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->access$200()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 105
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$AppStoreObserver;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->access$400(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$AppStoreObserver;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->access$300(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$AppStoreObserver;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->access$400(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$AppStoreObserver;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->access$300(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    :cond_0
    return-void
.end method
