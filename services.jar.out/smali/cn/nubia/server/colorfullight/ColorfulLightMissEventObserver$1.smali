.class Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$1;
.super Landroid/service/notification/INotificationListener$Stub;
.source "ColorfulLightMissEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;


# direct methods
.method constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;

    .line 62
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptionFilterChanged(I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    .line 109
    return-void
.end method

.method public onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 65
    return-void
.end method

.method public onListenerHintsChanged(I)V
    .locals 0
    .param p1, "hints"    # I

    .line 105
    return-void
.end method

.method public onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "modificationType"    # I

    .line 121
    return-void
.end method

.method public onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "modificationType"    # I

    .line 117
    return-void
.end method

.method public onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;)V
    .locals 0
    .param p1, "notificationHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;

    .line 113
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 4
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 70
    const/4 v0, 0x0

    .line 74
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    move-object v0, v1

    .line 75
    invoke-virtual {p2}, Landroid/service/notification/NotificationRankingUpdate;->getChannels()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, "channels":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v2, "parcelable":Landroid/app/NotificationChannel;
    nop

    .line 79
    nop

    .line 81
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;

    invoke-static {v3, v0}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->access$000(Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;Landroid/service/notification/StatusBarNotification;)V

    .line 84
    :cond_0
    return-void

    .line 77
    .end local v1    # "channels":Landroid/os/Bundle;
    .end local v2    # "parcelable":Landroid/app/NotificationChannel;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ColorfulLightMissEvent"

    const-string v3, "[ColorfulLight] onNotificationPosted: Error receiving StatusBarNotification"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 101
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .locals 4
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .param p3, "stats"    # Landroid/service/notification/NotificationStats;
    .param p4, "reason"    # I

    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 95
    nop

    .line 96
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;

    invoke-static {v1, v0}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->access$100(Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;Landroid/service/notification/StatusBarNotification;)V

    .line 97
    return-void

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ColorfulLightMissEvent"

    const-string v3, "[ColorfulLight] onNotificationRemoved: Error receiving StatusBarNotification"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    return-void
.end method

.method public onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    .locals 0
    .param p1, "notificationHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "snoozeCriterionId"    # Ljava/lang/String;

    .line 125
    return-void
.end method
