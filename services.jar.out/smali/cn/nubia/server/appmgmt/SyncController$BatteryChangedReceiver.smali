.class Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/SyncController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/SyncController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SyncController;)V
    .locals 2

    .line 129
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;->this$0:Lcn/nubia/server/appmgmt/SyncController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 133
    invoke-static {p1}, Lcn/nubia/server/appmgmt/SyncController;->access$000(Lcn/nubia/server/appmgmt/SyncController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 138
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 144
    .local v0, "status":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;->this$0:Lcn/nubia/server/appmgmt/SyncController;

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/SyncController;->access$302(Lcn/nubia/server/appmgmt/SyncController;Z)Z

    .line 146
    return-void
.end method
