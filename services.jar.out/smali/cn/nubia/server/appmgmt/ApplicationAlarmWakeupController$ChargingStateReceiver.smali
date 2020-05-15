.class Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationAlarmWakeupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChargingStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)V
    .locals 2

    .line 230
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->access$000(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 238
    if-eqz p2, :cond_1

    .line 239
    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 241
    .local v0, "status":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->access$102(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;Z)Z

    .line 243
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->access$200(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    const-string v1, "ApplicationAlarmWakeupController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargingStateReceiver.onReceive, mCharging = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->access$100(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v0    # "status":I
    :cond_1
    return-void
.end method
