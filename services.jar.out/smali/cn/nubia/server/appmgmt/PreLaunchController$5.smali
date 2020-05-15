.class Lcn/nubia/server/appmgmt/PreLaunchController$5;
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

    .line 129
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$5;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 132
    new-instance v0, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$5;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PreLaunchController$5;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$200(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/PreLaunchController$5;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$200(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/PreLaunchController$TwoLevelPreLaunchAfterBootRunnable;-><init>(Lcn/nubia/server/appmgmt/PreLaunchController;Landroid/content/Context;I)V

    .line 133
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$5;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$300(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method
