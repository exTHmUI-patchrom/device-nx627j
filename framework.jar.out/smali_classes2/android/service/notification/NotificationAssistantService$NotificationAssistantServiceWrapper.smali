.class Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;
.super Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;
.source "NotificationAssistantService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationAssistantService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAssistantServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationAssistantService;


# direct methods
.method private constructor <init>(Landroid/service/notification/NotificationAssistantService;)V
    .locals 0

    .line 169
    iput-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationAssistantService;Landroid/service/notification/NotificationAssistantService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/notification/NotificationAssistantService;
    .param p2, "x1"    # Landroid/service/notification/NotificationAssistantService$1;

    .line 169
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;-><init>(Landroid/service/notification/NotificationAssistantService;)V

    return-void
.end method


# virtual methods
.method public onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;)V
    .locals 4
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;

    .line 174
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    nop

    .line 177
    nop

    .line 180
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 181
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 182
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v2, v2, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void

    .line 175
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NotificationAssistants"

    const-string/jumbo v2, "onNotificationEnqueued: Error receiving StatusBarNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    return-void
.end method

.method public onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    .locals 4
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "snoozeCriterionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    nop

    .line 195
    nop

    .line 198
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 199
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 200
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 201
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v2, v2, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 203
    return-void

    .line 193
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NotificationAssistants"

    const-string/jumbo v2, "onNotificationSnoozed: Error receiving StatusBarNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    return-void
.end method
