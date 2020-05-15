.class final Lcom/android/server/MountFstrimService$TrackerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MountFstrimService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountFstrimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TrackerReceiver"
.end annotation


# instance fields
.field private mDockIdle:Z

.field private mIdle:Z

.field private mScreenOn:Z

.field private mTimeOk:Z

.field final synthetic this$0:Lcom/android/server/MountFstrimService;


# direct methods
.method public constructor <init>(Lcom/android/server/MountFstrimService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/MountFstrimService;

    .line 177
    iput-object p1, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->this$0:Lcom/android/server/MountFstrimService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mIdle:Z

    .line 181
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mScreenOn:Z

    .line 182
    iput-boolean v0, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mDockIdle:Z

    .line 183
    iput-boolean v0, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mTimeOk:Z

    .line 184
    return-void
.end method

.method private handleIdleTrigger()V
    .locals 3

    .line 278
    iget-boolean v0, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mIdle:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mDockIdle:Z

    if-eqz v0, :cond_2

    .line 279
    :cond_0
    sget-boolean v0, Lcom/android/server/MountFstrimService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 280
    const-string v0, "MountFstrimService"

    const-string v1, " trigger fired Idle "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mIdle:Z

    .line 283
    iget-object v0, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->this$0:Lcom/android/server/MountFstrimService;

    invoke-static {v0}, Lcom/android/server/MountFstrimService;->access$600(Lcom/android/server/MountFstrimService;)V

    goto :goto_0

    .line 285
    :cond_2
    sget-boolean v0, Lcom/android/server/MountFstrimService;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 286
    const-string v0, "MountFstrimService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRIGGER_IDLE received but not changing state; idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mIdle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public isIdle()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mIdle:Z

    return v0
.end method

.method public isTimeOk()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mTimeOk:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/MountFstrimService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "MountFstrimService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_7

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.intent.action.DOCK_ACTIVE"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 249
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.DOCK_IDLE"

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 268
    :cond_2
    const-string v1, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    invoke-direct {p0}, Lcom/android/server/MountFstrimService$TrackerReceiver;->handleIdleTrigger()V

    goto/16 :goto_5

    .line 270
    :cond_3
    invoke-static {}, Lcom/android/server/MountFstrimService;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 271
    iput-boolean v2, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mTimeOk:Z

    .line 272
    iget-object v1, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->this$0:Lcom/android/server/MountFstrimService;

    invoke-static {v1}, Lcom/android/server/MountFstrimService;->access$600(Lcom/android/server/MountFstrimService;)V

    goto :goto_5

    .line 255
    :cond_4
    :goto_0
    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 256
    iget-boolean v1, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mScreenOn:Z

    if-nez v1, :cond_5

    .line 258
    return-void

    .line 260
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mDockIdle:Z

    goto :goto_1

    .line 263
    :cond_6
    iput-boolean v3, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mScreenOn:Z

    .line 264
    iput-boolean v3, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mDockIdle:Z

    .line 266
    :goto_1
    iget-object v1, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->this$0:Lcom/android/server/MountFstrimService;

    invoke-static {v1}, Lcom/android/server/MountFstrimService;->access$500(Lcom/android/server/MountFstrimService;)Landroid/app/AlarmManager;

    move-result-object v1

    const/4 v2, 0x2

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->this$0:Lcom/android/server/MountFstrimService;

    invoke-static {v5}, Lcom/android/server/MountFstrimService;->access$700(Lcom/android/server/MountFstrimService;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->this$0:Lcom/android/server/MountFstrimService;

    iget-object v5, v5, Lcom/android/server/MountFstrimService;->mPendingIntentIdle:Landroid/app/PendingIntent;

    .line 266
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_5

    .line 231
    :cond_7
    :goto_2
    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 239
    :cond_8
    iput-boolean v2, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mScreenOn:Z

    .line 240
    iput-boolean v3, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mDockIdle:Z

    goto :goto_4

    .line 232
    :cond_9
    :goto_3
    iget-boolean v1, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mScreenOn:Z

    if-nez v1, :cond_a

    .line 234
    return-void

    .line 236
    :cond_a
    iput-boolean v3, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mDockIdle:Z

    .line 243
    :goto_4
    iget-object v1, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->this$0:Lcom/android/server/MountFstrimService;

    invoke-static {v1}, Lcom/android/server/MountFstrimService;->access$500(Lcom/android/server/MountFstrimService;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->this$0:Lcom/android/server/MountFstrimService;

    iget-object v2, v2, Lcom/android/server/MountFstrimService;->mPendingIntentIdle:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 244
    iget-boolean v1, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mIdle:Z

    if-eqz v1, :cond_b

    .line 246
    iput-boolean v3, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mIdle:Z

    .line 247
    iget-object v1, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->this$0:Lcom/android/server/MountFstrimService;

    invoke-static {v1}, Lcom/android/server/MountFstrimService;->access$600(Lcom/android/server/MountFstrimService;)V

    .line 274
    :cond_b
    :goto_5
    return-void
.end method

.method public setTimeState(Z)V
    .locals 0
    .param p1, "timeState"    # Z

    .line 195
    iput-boolean p1, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->mTimeOk:Z

    .line 196
    return-void
.end method

.method public startTracking()V
    .locals 2

    .line 199
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v1, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/android/server/MountFstrimService;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->this$0:Lcom/android/server/MountFstrimService;

    invoke-static {v1}, Lcom/android/server/MountFstrimService;->access$400(Lcom/android/server/MountFstrimService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/android/server/MountFstrimService$TrackerReceiver;->this$0:Lcom/android/server/MountFstrimService;

    invoke-virtual {v1}, Lcom/android/server/MountFstrimService;->setAlarmTimeController()V

    .line 220
    return-void
.end method
