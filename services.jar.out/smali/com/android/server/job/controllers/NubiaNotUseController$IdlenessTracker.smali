.class Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "NubiaNotUseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/NubiaNotUseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdlenessTracker"
.end annotation


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field private mIdleTriggerIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/job/controllers/NubiaNotUseController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/NubiaNotUseController;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/job/controllers/NubiaNotUseController;

    .line 130
    iput-object p1, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 131
    iget-object v0, p1, Lcom/android/server/job/controllers/NubiaNotUseController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.server.ACTION_TRIGGER_NOT_USE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 135
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/job/controllers/NubiaNotUseController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    .line 137
    return-void
.end method

.method private changeStatus(I)V
    .locals 4
    .param p1, "newStatus"    # I

    .line 166
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-static {v0}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$100(Lcom/android/server/job/controllers/NubiaNotUseController;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 167
    :cond_0
    sget-boolean v0, Lcom/android/server/job/controllers/StateController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "NotUseController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    iget-object v3, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-static {v3}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$100(Lcom/android/server/job/controllers/NubiaNotUseController;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$200(Lcom/android/server/job/controllers/NubiaNotUseController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    .line 168
    invoke-static {v2, p1}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$200(Lcom/android/server/job/controllers/NubiaNotUseController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    iget-object v1, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-static {v1}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$100(Lcom/android/server/job/controllers/NubiaNotUseController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$300(Lcom/android/server/job/controllers/NubiaNotUseController;I)Z

    move-result v0

    .line 170
    .local v0, "isOldNotUse":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-static {v1, p1}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$300(Lcom/android/server/job/controllers/NubiaNotUseController;I)Z

    move-result v1

    .line 171
    .local v1, "isNewNotUse":Z
    iget-object v2, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-static {v2, p1}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$102(Lcom/android/server/job/controllers/NubiaNotUseController;I)I

    .line 172
    if-eq v0, v1, :cond_2

    .line 173
    iget-object v2, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-virtual {v2, v1}, Lcom/android/server/job/controllers/NubiaNotUseController;->reportNewState(Z)V

    .line 175
    :cond_2
    return-void
.end method

.method private doWhenIdleLongTime()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-static {v0}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$100(Lcom/android/server/job/controllers/NubiaNotUseController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 200
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->changeStatus(I)V

    .line 202
    :cond_0
    return-void
.end method

.method private doWhenScreenOff()V
    .locals 11

    .line 178
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-static {v0}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$100(Lcom/android/server/job/controllers/NubiaNotUseController;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 179
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->changeStatus(I)V

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 181
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-static {v2}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$400(Lcom/android/server/job/controllers/NubiaNotUseController;)J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 182
    .local v2, "when":J
    sget-boolean v4, Lcom/android/server/job/controllers/StateController;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 183
    const-string v4, "NotUseController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduling idle now:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " when="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object v4, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    .line 187
    invoke-static {v6}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$500(Lcom/android/server/job/controllers/NubiaNotUseController;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    .line 186
    move-wide v6, v2

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    .line 189
    .end local v0    # "nowElapsed":J
    .end local v2    # "when":J
    :cond_1
    return-void
.end method

.method private doWhenScreenOn()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-static {v0}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$100(Lcom/android/server/job/controllers/NubiaNotUseController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 194
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->changeStatus(I)V

    .line 196
    :cond_0
    return-void
.end method

.method private doWhenUse()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-static {v0}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$100(Lcom/android/server/job/controllers/NubiaNotUseController;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 206
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->changeStatus(I)V

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/job/controllers/StateController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "NotUseController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 217
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 220
    :cond_2
    const-string v1, "cn.nubia.server.ACTION_TRIGGER_NOT_USE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    invoke-direct {p0}, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->doWhenIdleLongTime()V

    goto :goto_2

    .line 222
    :cond_3
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    invoke-direct {p0}, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->doWhenUse()V

    goto :goto_2

    .line 224
    :cond_4
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 225
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "state":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/job/controllers/StateController;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "NotUseController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_5
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 228
    invoke-direct {p0}, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->doWhenUse()V

    .line 230
    .end local v1    # "state":Ljava/lang/String;
    :cond_6
    goto :goto_2

    :cond_7
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 231
    iget-object v1, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-static {v1}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$700(Lcom/android/server/job/controllers/NubiaNotUseController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-static {v2}, Lcom/android/server/job/controllers/NubiaNotUseController;->access$600(Lcom/android/server/job/controllers/NubiaNotUseController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 219
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->doWhenScreenOff()V

    goto :goto_2

    .line 216
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->doWhenScreenOn()V

    .line 233
    :cond_a
    :goto_2
    return-void
.end method

.method public startTracking()V
    .locals 2

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "cn.nubia.server.ACTION_TRIGGER_NOT_USE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/NubiaNotUseController;

    iget-object v1, v1, Lcom/android/server/job/controllers/NubiaNotUseController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    return-void
.end method
