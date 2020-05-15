.class Lcn/nubia/server/appmgmt/ApplicationPushController$PushControlObserver;
.super Landroid/database/ContentObserver;
.source "ApplicationPushController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationPushController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushControlObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationPushController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 156
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$PushControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    .line 157
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 158
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$PushControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->access$400(Lcn/nubia/server/appmgmt/ApplicationPushController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://cn.nubia.security.power/push_dependent_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    const-string v1, "content://cn.nubia.security.power/push_access_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 168
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$PushControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->access$000(Lcn/nubia/server/appmgmt/ApplicationPushController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$PushControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationPushController;->access$500(Lcn/nubia/server/appmgmt/ApplicationPushController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$PushControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->access$000(Lcn/nubia/server/appmgmt/ApplicationPushController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$PushControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationPushController;->access$500(Lcn/nubia/server/appmgmt/ApplicationPushController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    :cond_0
    return-void
.end method
