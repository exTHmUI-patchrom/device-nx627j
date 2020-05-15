.class Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/SyncController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/SyncController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SyncController;)V
    .locals 2

    .line 105
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/SyncController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 111
    invoke-static {p1}, Lcn/nubia/server/appmgmt/SyncController;->access$000(Lcn/nubia/server/appmgmt/SyncController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/SyncController;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/SyncController;->access$102(Lcn/nubia/server/appmgmt/SyncController;Z)Z

    goto :goto_0

    .line 119
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/SyncController;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/SyncController;->access$202(Lcn/nubia/server/appmgmt/SyncController;Z)Z

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/SyncController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/SyncController;->access$102(Lcn/nubia/server/appmgmt/SyncController;Z)Z

    .line 123
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/SyncController;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/SyncController;->access$202(Lcn/nubia/server/appmgmt/SyncController;Z)Z

    .line 125
    :goto_0
    return-void
.end method
