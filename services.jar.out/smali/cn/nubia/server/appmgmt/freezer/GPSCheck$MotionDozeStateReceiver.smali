.class Lcn/nubia/server/appmgmt/freezer/GPSCheck$MotionDozeStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GPSCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/GPSCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionDozeStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/GPSCheck;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/freezer/GPSCheck;)V
    .locals 2

    .line 48
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck$MotionDozeStateReceiver;->this$0:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "cn.nubia.server.appmgmt.ENTER_MOTION_DOZE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "cn.nubia.server.appmgmt.LEAVE_MOTION_DOZE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->access$000(Lcn/nubia/server/appmgmt/freezer/GPSCheck;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {p1}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->access$000(Lcn/nubia/server/appmgmt/freezer/GPSCheck;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "action":Ljava/lang/String;
    const-string v1, "cn.nubia.server.appmgmt.ENTER_MOTION_DOZE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck$MotionDozeStateReceiver;->this$0:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->access$102(Lcn/nubia/server/appmgmt/freezer/GPSCheck;J)J

    .line 62
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck$MotionDozeStateReceiver;->this$0:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->access$202(Lcn/nubia/server/appmgmt/freezer/GPSCheck;Z)Z

    .line 63
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 64
    const-string v1, "ApplicationFreeze_GPSCheck"

    const-string v2, "enter MOTION_DOZE!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_0
    const-string v1, "cn.nubia.server.appmgmt.LEAVE_MOTION_DOZE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck$MotionDozeStateReceiver;->this$0:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->access$102(Lcn/nubia/server/appmgmt/freezer/GPSCheck;J)J

    .line 68
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSCheck$MotionDozeStateReceiver;->this$0:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->access$202(Lcn/nubia/server/appmgmt/freezer/GPSCheck;Z)Z

    .line 69
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "ApplicationFreeze_GPSCheck"

    const-string/jumbo v2, "leave MOTION_DOZE!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    :goto_0
    return-void
.end method
