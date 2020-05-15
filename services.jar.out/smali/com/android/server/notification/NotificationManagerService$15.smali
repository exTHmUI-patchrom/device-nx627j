.class Lcom/android/server/notification/NotificationManagerService$15;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$count:I

.field final synthetic val$id:I

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rank:I

.field final synthetic val$reason:I

.field final synthetic val$sendDelete:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 5972
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingPid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$id:I

    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustHaveFlags:I

    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustNotHaveFlags:I

    iput p11, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$reason:I

    iput-boolean p12, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$sendDelete:Z

    iput p13, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$rank:I

    iput p14, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 5975
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5976
    .local v11, "listenerName":Ljava/lang/String;
    :goto_1
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1

    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$callingUid:I

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$callingPid:I

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$id:I

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$tag:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$mustHaveFlags:I

    iget v9, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$mustNotHaveFlags:I

    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$reason:I

    invoke-static/range {v2 .. v11}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 5979
    :cond_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5981
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$tag:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$id:I

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 5982
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_5

    .line 5987
    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$reason:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 5988
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$6600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 5991
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$mustHaveFlags:I

    and-int/2addr v3, v4

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$mustHaveFlags:I

    if-eq v3, v4, :cond_3

    .line 5992
    monitor-exit v2

    return-void

    .line 5994
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$mustNotHaveFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 5995
    monitor-exit v2

    return-void

    .line 5999
    :cond_4
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    .line 6000
    .local v9, "wasPosted":Z
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v5, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$sendDelete:Z

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$reason:I

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$rank:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$count:I

    move-object v4, v0

    move-object v10, v11

    invoke-static/range {v3 .. v10}, Lcom/android/server/notification/NotificationManagerService;->access$8000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    .line 6001
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v14, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$callingUid:I

    iget v15, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$callingPid:I

    iget-boolean v3, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$sendDelete:Z

    const/16 v18, 0x0

    move-object v13, v0

    move-object/from16 v16, v11

    move/from16 v17, v3

    invoke-static/range {v12 .. v18}, Lcom/android/server/notification/NotificationManagerService;->access$8100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 6003
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 6004
    .end local v9    # "wasPosted":Z
    goto :goto_2

    .line 6006
    :cond_5
    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$reason:I

    const/16 v4, 0x12

    if-eq v3, v4, :cond_6

    .line 6007
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$3800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v3

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$tag:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$id:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 6008
    .local v3, "wasSnoozed":Z
    if-eqz v3, :cond_6

    .line 6009
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancel notification "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " but this notification was snoozed, so remove it from snoozed list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6010
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 6014
    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "wasSnoozed":Z
    :cond_6
    :goto_2
    monitor-exit v2

    .line 6015
    return-void

    .line 6014
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
