.class public Lcn/nubia/server/appmgmt/LogSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LogSwitchReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "nblog.state_change"

.field private static final TAG:Ljava/lang/String; = "LogSwitchReceiver"


# instance fields
.field private mLogSwitcher:Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "LogSwitcher"    # Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "nblog.state_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lcn/nubia/server/appmgmt/LogSwitchReceiver;->mLogSwitcher:Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;

    .line 18
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 23
    if-eqz p2, :cond_3

    .line 24
    const-string v0, "LogSwitchReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "nblog.state_change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    const-string/jumbo v1, "nblog.state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "enable":Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 29
    :cond_0
    const-string/jumbo v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    const-string/jumbo v2, "nblog.logTypes"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    iget-object v3, p0, Lcn/nubia/server/appmgmt/LogSwitchReceiver;->mLogSwitcher:Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;

    invoke-interface {v3}, Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;->openAppmgmtLog()V

    .line 34
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    iget-object v2, p0, Lcn/nubia/server/appmgmt/LogSwitchReceiver;->mLogSwitcher:Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;

    invoke-interface {v2}, Lcn/nubia/server/appmgmt/LogSwitchReceiver$INBLogSwitcher;->closeAppmgmtLog()V

    .line 39
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "enable":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method
