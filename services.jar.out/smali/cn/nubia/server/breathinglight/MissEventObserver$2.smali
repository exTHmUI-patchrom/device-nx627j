.class Lcn/nubia/server/breathinglight/MissEventObserver$2;
.super Landroid/service/notification/INotificationListener$Stub;
.source "MissEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/MissEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/MissEventObserver;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/MissEventObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/breathinglight/MissEventObserver;

    .line 271
    iput-object p1, p0, Lcn/nubia/server/breathinglight/MissEventObserver$2;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptionFilterChanged(I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    .line 332
    return-void
.end method

.method public onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 276
    return-void
.end method

.method public onListenerHintsChanged(I)V
    .locals 0
    .param p1, "hints"    # I

    .line 327
    return-void
.end method

.method public onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "modificationType"    # I

    .line 347
    return-void
.end method

.method public onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "modificationType"    # I

    .line 342
    return-void
.end method

.method public onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;)V
    .locals 0
    .param p1, "notificationHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;

    .line 337
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 4
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 286
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 287
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p2}, Landroid/service/notification/NotificationRankingUpdate;->getChannels()Landroid/os/Bundle;

    move-result-object v1

    .line 288
    .local v1, "channels":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .local v2, "parcelable":Landroid/app/NotificationChannel;
    nop

    .line 293
    nop

    .line 295
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    iget-object v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver$2;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-static {v3, v0}, Lcn/nubia/server/breathinglight/MissEventObserver;->access$200(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/service/notification/StatusBarNotification;)V

    .line 298
    :cond_0
    return-void

    .line 289
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v1    # "channels":Landroid/os/Bundle;
    .end local v2    # "parcelable":Landroid/app/NotificationChannel;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MissEventObserver"

    const-string/jumbo v2, "onNotificationPosted: Error receiving StatusBarNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 322
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .locals 3
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .param p3, "stats"    # Landroid/service/notification/NotificationStats;
    .param p4, "reason"    # I

    .line 308
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    nop

    .line 313
    nop

    .line 316
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver$2;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-static {v1, v0}, Lcn/nubia/server/breathinglight/MissEventObserver;->access$300(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/service/notification/StatusBarNotification;)V

    .line 317
    return-void

    .line 309
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MissEventObserver"

    const-string/jumbo v2, "onNotificationRemoved: Error receiving StatusBarNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    return-void
.end method

.method public onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    .locals 0
    .param p1, "notificationHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "snoozeCriterionId"    # Ljava/lang/String;

    .line 352
    return-void
.end method
