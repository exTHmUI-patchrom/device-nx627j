.class Lcn/nubia/server/appmgmt/AppLevelController$AppLevelObserver;
.super Landroid/database/ContentObserver;
.source "AppLevelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/AppLevelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLevelObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/AppLevelController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/AppLevelController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 130
    iput-object p1, p0, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelObserver;->this$0:Lcn/nubia/server/appmgmt/AppLevelController;

    .line 131
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 132
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelObserver;->observe()V

    .line 133
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelObserver;->this$0:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppLevelController;->access$000(Lcn/nubia/server/appmgmt/AppLevelController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://cn.nubia.security.power/app_level_table"

    .line 138
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 137
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 143
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelObserver;->this$0:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppLevelController;->access$200(Lcn/nubia/server/appmgmt/AppLevelController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelObserver;->this$0:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/AppLevelController;->access$100(Lcn/nubia/server/appmgmt/AppLevelController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelObserver;->this$0:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppLevelController;->access$200(Lcn/nubia/server/appmgmt/AppLevelController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelObserver;->this$0:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/AppLevelController;->access$100(Lcn/nubia/server/appmgmt/AppLevelController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    :cond_0
    return-void
.end method
