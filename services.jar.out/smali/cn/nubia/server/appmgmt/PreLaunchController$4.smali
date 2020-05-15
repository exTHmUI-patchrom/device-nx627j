.class Lcn/nubia/server/appmgmt/PreLaunchController$4;
.super Landroid/content/BroadcastReceiver;
.source "PreLaunchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/PreLaunchController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lnubia/os/IAppLearningCallback;Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/PreLaunchController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/PreLaunchController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 112
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$4;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 116
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 117
    .local v1, "packageName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 118
    invoke-static {}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 119
    :try_start_0
    const-string v3, "PreLaunchController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is removed from skip2levellaunch list."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 121
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 123
    :cond_1
    :goto_1
    return-void
.end method
