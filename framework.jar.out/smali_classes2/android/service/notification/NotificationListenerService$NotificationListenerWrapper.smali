.class public Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;
.super Landroid/service/notification/INotificationListener$Stub;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotificationListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method protected constructor <init>(Landroid/service/notification/NotificationListenerService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/NotificationListenerService;

    .line 1220
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptionFilterChanged(I)V
    .locals 3
    .param p1, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1316
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1317
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1318
    return-void
.end method

.method public onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 2
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 1289
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1290
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 1291
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/notification/NotificationListenerService;->access$702(Landroid/service/notification/NotificationListenerService;Z)Z

    .line 1293
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1294
    return-void

    .line 1291
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onListenerHintsChanged(I)V
    .locals 3
    .param p1, "hints"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1310
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1311
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1312
    return-void
.end method

.method public onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "modificationType"    # I

    .line 1350
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1351
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1352
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1353
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1354
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1355
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1356
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1357
    return-void
.end method

.method public onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "modificationType"    # I

    .line 1337
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1338
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1339
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1340
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1341
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1342
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1343
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1344
    return-void
.end method

.method public onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;)V
    .locals 0
    .param p1, "notificationHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1324
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 5
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 1226
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1230
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    nop

    .line 1229
    nop

    .line 1234
    :try_start_1
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V

    .line 1235
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/service/notification/NotificationListenerService;->access$200(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V

    .line 1236
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/service/notification/NotificationListenerService;->access$300(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1242
    goto :goto_0

    .line 1237
    :catch_0
    move-exception v1

    .line 1239
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v2}, Landroid/service/notification/NotificationListenerService;->access$000(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNotificationPosted: can\'t rebuild notification from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1239
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const/4 v0, 0x0

    .line 1245
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1246
    :try_start_2
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v2, p2}, Landroid/service/notification/NotificationListenerService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 1247
    if-eqz v0, :cond_0

    .line 1248
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1249
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1250
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1251
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1252
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1253
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    goto :goto_1

    .line 1255
    :cond_0
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v2}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 1256
    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v4

    .line 1255
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1256
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1258
    :goto_1
    monitor-exit v1

    .line 1260
    return-void

    .line 1258
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1227
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_1
    move-exception v0

    .line 1228
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$000(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onNotificationPosted: Error receiving StatusBarNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1229
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 4
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1300
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1301
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 1302
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 1303
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v3

    .line 1302
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1303
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1304
    monitor-exit v0

    .line 1306
    return-void

    .line 1304
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .locals 5
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .param p3, "stats"    # Landroid/service/notification/NotificationStats;
    .param p4, "reason"    # I

    .line 1267
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    nop

    .line 1270
    nop

    .line 1273
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1274
    :try_start_1
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v2, p2}, Landroid/service/notification/NotificationListenerService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 1275
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1276
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1277
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1278
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1279
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1280
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1281
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1282
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    monitor-exit v1

    .line 1284
    return-void

    .line 1282
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1268
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v0

    .line 1269
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$000(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onNotificationRemoved: Error receiving StatusBarNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1270
    return-void
.end method

.method public onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    .locals 0
    .param p1, "notificationHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "snoozeCriterionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1331
    return-void
.end method
