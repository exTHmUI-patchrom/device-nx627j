.class Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "AvailableNetworkNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/AvailableNetworkNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/AvailableNetworkNotifier;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 519
    iput-object p1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 520
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 521
    return-void
.end method

.method private getValue()Z
    .locals 4

    .line 537
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 538
    invoke-static {v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$1000(Lcom/android/server/wifi/AvailableNetworkNotifier;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v1}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$800(Lcom/android/server/wifi/AvailableNetworkNotifier;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v2}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$900(Lcom/android/server/wifi/AvailableNetworkNotifier;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 539
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v1}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$700(Lcom/android/server/wifi/AvailableNetworkNotifier;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v2}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$100(Lcom/android/server/wifi/AvailableNetworkNotifier;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiMetrics;->setIsWifiNetworksAvailableNotificationEnabled(Ljava/lang/String;Z)V

    .line 540
    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v1}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$100(Lcom/android/server/wifi/AvailableNetworkNotifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings toggle enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 531
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 532
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-direct {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->getValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$1102(Lcom/android/server/wifi/AvailableNetworkNotifier;Z)Z

    .line 533
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/AvailableNetworkNotifier;->clearPendingNotification(Z)V

    .line 534
    return-void
.end method

.method public register()V
    .locals 4

    .line 524
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$1000(Lcom/android/server/wifi/AvailableNetworkNotifier;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v1}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$800(Lcom/android/server/wifi/AvailableNetworkNotifier;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 525
    invoke-static {v2}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$900(Lcom/android/server/wifi/AvailableNetworkNotifier;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 524
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 526
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-direct {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->getValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$1102(Lcom/android/server/wifi/AvailableNetworkNotifier;Z)Z

    .line 527
    return-void
.end method
