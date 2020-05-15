.class Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;
.super Ljava/lang/Object;
.source "PerformanceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cpuperf/PerformanceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcquirePerformanceLockRunnable"
.end annotation


# instance fields
.field mDuration:J

.field mTag:Ljava/lang/String;

.field mToken:Landroid/os/IBinder;

.field mType:I

.field final synthetic this$0:Lcom/android/server/cpuperf/PerformanceController;


# direct methods
.method public constructor <init>(Lcom/android/server/cpuperf/PerformanceController;Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "duration"    # J

    .line 224
    iput-object p1, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mToken:Landroid/os/IBinder;

    .line 226
    iput-object p3, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    .line 227
    iput p4, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    .line 228
    iput-wide p5, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    .line 229
    return-void
.end method

.method private isLaunchLock(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 232
    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 241
    const/4 v0, 0x0

    return v0

    .line 239
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "alreadyHasLaunchLock":Z
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    .line 249
    .local v2, "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    iget-object v3, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    iget v4, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    if-ne v3, v4, :cond_0

    .line 251
    return-void

    .line 254
    :cond_0
    iget v3, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-direct {p0, v3}, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->isLaunchLock(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    const/4 v0, 0x1

    .line 256
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_1
    goto :goto_0

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 259
    iget v1, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->isLaunchLock(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 260
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cpuperf/QComBoostController;->getAppLaunchDuration(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    .line 263
    if-eqz v0, :cond_4

    .line 264
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    const-string v1, "PerformanceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AcquirePerformanceLockRunnable, skip tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_3
    return-void

    .line 271
    :cond_4
    iget v1, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6

    .line 273
    :cond_5
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/cpuperf/QComBoostController;->noteAppLauchForNewProcess(Ljava/lang/String;)V

    .line 277
    :cond_6
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 278
    const-string v1, "PerformanceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AcquirePerformanceLockRunnable, tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_7
    new-instance v1, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    iget-object v4, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    iget-wide v7, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;-><init>(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 283
    .local v1, "lock":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    new-instance v2, Lcom/android/server/cpuperf/PerformanceController$BinderDeathCallback;

    iget-object v3, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-direct {v2, v3, v1}, Lcom/android/server/cpuperf/PerformanceController$BinderDeathCallback;-><init>(Lcom/android/server/cpuperf/PerformanceController;Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;)V

    invoke-virtual {v1, v2}, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->setCallback(Lcom/android/server/cpuperf/PerformanceController$PerformanceLock$Callback;)V

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_1

    .line 287
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v3}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 289
    const-string v3, "PerformanceController"

    const-string/jumbo v4, "token is already dead"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v2}, Lcom/android/server/cpuperf/PerformanceController;->access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-wide v2, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 295
    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v2}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 296
    const-string v2, "PerformanceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms, tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_9
    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v2}, Lcom/android/server/cpuperf/PerformanceController;->access$200(Lcom/android/server/cpuperf/PerformanceController;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;

    iget-object v4, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    iget-object v5, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mToken:Landroid/os/IBinder;

    invoke-direct {v3, v4, v5}, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;-><init>(Lcom/android/server/cpuperf/PerformanceController;Landroid/os/IBinder;)V

    iget-wide v4, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    :cond_a
    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v2}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 302
    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v2}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cpuperf/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v3}, Lcom/android/server/cpuperf/PerformanceController;->access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/cpuperf/QComBoostController;->adjustPerformance(Ljava/util/ArrayList;)V

    .line 303
    :cond_b
    return-void
.end method
