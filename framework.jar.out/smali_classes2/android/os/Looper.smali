.class public final Landroid/os/Looper;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Looper$MessageRecord;,
        Landroid/os/Looper$MessageHistory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Looper"

.field private static final mDebugProcessNames:[Ljava/lang/String;

.field private static mEnable_looper_sample:Z

.field private static sMainLooper:Landroid/os/Looper;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDispatchingMsg:Landroid/os/Looper$MessageRecord;

.field private mHistory:Landroid/os/Looper$MessageHistory;

.field private mLogging:Landroid/util/Printer;

.field final mQueue:Landroid/os/MessageQueue;

.field private mSlowDeliveryThresholdMs:J

.field private mSlowDispatchThresholdMs:J

.field final mThread:Ljava/lang/Thread;

.field private mTraceTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 71
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Looper;->mEnable_looper_sample:Z

    .line 91
    const-string v1, "ActivityManager"

    const-string v2, "android.display"

    const-string v3, "android.io"

    const-string v4, "android.ui"

    const-string v5, "android.anim"

    const-string v6, "ActivityManager:procStart"

    const-string/jumbo v7, "main"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Looper;->mDebugProcessNames:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "quitAllowed"    # Z

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Landroid/os/MessageQueue;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue;-><init>(Z)V

    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 367
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    .line 368
    return-void
.end method

.method public static enableLooperSample()V
    .locals 3

    .line 502
    const-string v0, "Looper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLooperSample looper.mThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v2, v2, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Looper;->mEnable_looper_sample:Z

    .line 504
    return-void
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .locals 2

    .line 138
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 139
    :try_start_0
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    monitor-exit v0

    return-object v1

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isSpecialApp()Z
    .locals 4

    .line 703
    sget-object v0, Landroid/app/ActivityThread;->packageName:Ljava/lang/String;

    .line 704
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 705
    return v1

    .line 706
    :cond_0
    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 707
    return v3

    .line 708
    :cond_1
    const-string v2, "cn.nubia.controlcenter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 709
    return v3

    .line 710
    :cond_2
    const-string v2, "cn.nubia.edge"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 711
    return v3

    .line 713
    :cond_3
    return v1
.end method

.method public static loop()V
    .locals 57

    .line 148
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 149
    .local v1, "me":Landroid/os/Looper;
    if-eqz v1, :cond_29

    .line 152
    iget-object v2, v1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 156
    .local v2, "queue":Landroid/os/MessageQueue;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 161
    .local v3, "ident":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "log.looper."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".slow"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 167
    .local v6, "thresholdOverride":I
    move v0, v5

    .line 167
    .local v0, "slowDeliveryDetected":Z
    :goto_0
    move v7, v0

    .line 170
    .end local v0    # "slowDeliveryDetected":Z
    .local v7, "slowDeliveryDetected":Z
    invoke-virtual {v2}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v15

    .line 171
    .local v15, "msg":Landroid/os/Message;
    if-nez v15, :cond_0

    .line 173
    return-void

    .line 177
    :cond_0
    iget-object v14, v1, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 178
    .local v14, "logging":Landroid/util/Printer;
    if-eqz v14, :cond_1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>>> Dispatching to "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v15, Landroid/os/Message;->what:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 184
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 185
    .local v12, "t1":J
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    move/from16 v24, v0

    .line 186
    .local v24, "isMainLooper":Z
    if-nez v24, :cond_3

    sget-boolean v0, Landroid/os/Looper;->mEnable_looper_sample:Z

    if-eqz v0, :cond_5

    .line 187
    :cond_3
    iget-object v0, v1, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;

    if-nez v0, :cond_4

    .line 188
    new-instance v0, Landroid/os/Looper$MessageRecord;

    invoke-direct {v0, v15}, Landroid/os/Looper$MessageRecord;-><init>(Landroid/os/Message;)V

    iput-object v0, v1, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;

    goto :goto_2

    .line 190
    :cond_4
    iget-object v0, v1, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;

    invoke-virtual {v0, v15}, Landroid/os/Looper$MessageRecord;->copy(Landroid/os/Message;)V

    .line 192
    :goto_2
    iget-object v0, v1, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;

    iput-wide v12, v0, Landroid/os/Looper$MessageRecord;->dispatchingTime:J

    .line 196
    :cond_5
    iget-wide v10, v1, Landroid/os/Looper;->mTraceTag:J

    .line 197
    .local v10, "traceTag":J
    iget-wide v8, v1, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    .line 198
    .local v8, "slowDispatchThresholdMs":J
    move-wide/from16 v26, v8

    iget-wide v8, v1, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    .line 199
    .local v8, "slowDeliveryThresholdMs":J
    .local v26, "slowDispatchThresholdMs":J
    if-lez v6, :cond_6

    .line 200
    move-wide/from16 v28, v8

    int-to-long v8, v6

    .line 201
    .end local v26    # "slowDispatchThresholdMs":J
    .local v8, "slowDispatchThresholdMs":J
    .local v28, "slowDeliveryThresholdMs":J
    move-wide/from16 v30, v8

    int-to-long v8, v6

    .line 203
    .end local v28    # "slowDeliveryThresholdMs":J
    .local v8, "slowDeliveryThresholdMs":J
    .local v30, "slowDispatchThresholdMs":J
    move-wide/from16 v28, v8

    goto :goto_3

    .line 203
    .end local v30    # "slowDispatchThresholdMs":J
    .restart local v26    # "slowDispatchThresholdMs":J
    :cond_6
    move-wide/from16 v28, v8

    move-wide/from16 v30, v26

    .line 203
    .end local v8    # "slowDeliveryThresholdMs":J
    .end local v26    # "slowDispatchThresholdMs":J
    .restart local v28    # "slowDeliveryThresholdMs":J
    .restart local v30    # "slowDispatchThresholdMs":J
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v0, v28, v8

    if-lez v0, :cond_7

    move/from16 v32, v6

    iget-wide v5, v15, Landroid/os/Message;->when:J

    .line 203
    .end local v6    # "thresholdOverride":I
    .local v32, "thresholdOverride":I
    cmp-long v0, v5, v8

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    .line 203
    .end local v32    # "thresholdOverride":I
    .restart local v6    # "thresholdOverride":I
    :cond_7
    move/from16 v32, v6

    .line 203
    .end local v6    # "thresholdOverride":I
    .restart local v32    # "thresholdOverride":I
    :cond_8
    const/4 v0, 0x0

    :goto_4
    move v5, v0

    .line 204
    .local v5, "logSlowDelivery":Z
    cmp-long v0, v30, v8

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    move v6, v0

    .line 206
    .local v6, "logSlowDispatch":Z
    if-nez v5, :cond_b

    if-eqz v6, :cond_a

    goto :goto_6

    :cond_a
    const/16 v25, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/16 v25, 0x1

    .line 207
    .local v25, "needStartTime":Z
    :goto_7
    move/from16 v26, v6

    .line 209
    .local v26, "needEndTime":Z
    cmp-long v0, v10, v8

    if-eqz v0, :cond_c

    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 210
    iget-object v0, v15, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v15}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 213
    :cond_c
    if-eqz v25, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    goto :goto_8

    :cond_d
    move-wide/from16 v16, v8

    :goto_8
    move-wide/from16 v33, v16

    .line 216
    .local v33, "dispatchStart":J
    :try_start_0
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v0, :cond_e

    .line 217
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v15, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v15, Landroid/os/Message;->what:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v8, 0x8

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 268
    :catchall_0
    move-exception v0

    move-object/from16 v45, v2

    move/from16 v50, v5

    move/from16 v51, v7

    move-wide/from16 v53, v12

    move-object v7, v14

    move-object v8, v15

    move-wide/from16 v55, v3

    move-wide v4, v10

    move-wide/from16 v10, v55

    goto/16 :goto_19

    .line 220
    :cond_e
    :goto_9
    :try_start_2
    iget-object v0, v15, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v15}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 221
    if-eqz v26, :cond_f

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :cond_f
    const-wide/16 v8, 0x0

    :goto_a
    move-wide/from16 v20, v8

    .line 223
    .local v20, "dispatchEnd":J
    :try_start_4
    iget-object v0, v1, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 224
    .local v8, "target":Ljava/lang/String;
    const-string v0, "ActivityManager"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v0, :cond_12

    :try_start_5
    const-string v0, "andorid.display"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_b

    .line 231
    :cond_10
    if-eqz v24, :cond_14

    sget-boolean v0, Landroid/app/ActivityThread;->isSystemServerMain:Z

    if-nez v0, :cond_14

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 233
    .local v16, "now":J
    sub-long v18, v16, v12

    .line 234
    .local v18, "delay":J
    const-wide/16 v22, 0x1f4

    cmp-long v0, v18, v22

    if-lez v0, :cond_14

    .line 235
    sget-boolean v0, Landroid/app/ActivityThread;->isForeground:Z

    if-nez v0, :cond_11

    invoke-static {}, Landroid/os/Looper;->isSpecialApp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 236
    :cond_11
    sget-object v35, Landroid/app/ActivityThread;->packageName:Ljava/lang/String;

    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v37

    iget-object v0, v1, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;

    invoke-virtual {v0}, Landroid/os/Looper$MessageRecord;->threadLagToString()Ljava/lang/String;

    move-result-object v41

    .line 236
    move-object/from16 v36, v8

    move-wide/from16 v39, v18

    invoke-static/range {v35 .. v41}, Lnubia/os/ApplicationManager$Trigger;->noteThreadLag(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 236
    .end local v16    # "now":J
    .end local v18    # "delay":J
    goto :goto_c

    .line 225
    :cond_12
    :goto_b
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 226
    .restart local v16    # "now":J
    sub-long v18, v16, v12

    .line 227
    .restart local v18    # "delay":J
    const-wide/16 v22, 0x3e8

    cmp-long v0, v18, v22

    if-lez v0, :cond_13

    .line 228
    :try_start_7
    const-string/jumbo v35, "system_server"

    .line 229
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v37

    iget-object v0, v1, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;

    invoke-virtual {v0}, Landroid/os/Looper$MessageRecord;->threadLagToString()Ljava/lang/String;

    move-result-object v41

    .line 228
    move-object/from16 v36, v8

    move-wide/from16 v39, v18

    invoke-static/range {v35 .. v41}, Lnubia/os/ApplicationManager$Trigger;->noteThreadLag(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 231
    .end local v16    # "now":J
    .end local v18    # "delay":J
    :cond_13
    nop

    .line 243
    :cond_14
    :goto_c
    if-nez v24, :cond_16

    sget-boolean v0, Landroid/os/Looper;->mEnable_looper_sample:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_15

    goto :goto_d

    .line 268
    .end local v8    # "target":Ljava/lang/String;
    :cond_15
    move-object/from16 v45, v2

    move-wide/from16 v46, v3

    move-wide/from16 v48, v12

    goto/16 :goto_11

    .line 244
    .restart local v8    # "target":Ljava/lang/String;
    :cond_16
    :goto_d
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-wide/from16 v42, v16

    .line 245
    .local v42, "t2":J
    move-object/from16 v45, v2

    move-wide/from16 v46, v3

    move-object/from16 v44, v8

    move-wide/from16 v8, v42

    sub-long v2, v8, v12

    .line 246
    .end local v3    # "ident":J
    .end local v42    # "t2":J
    .local v2, "delay":J
    .local v8, "t2":J
    .local v44, "target":Ljava/lang/String;
    .local v45, "queue":Landroid/os/MessageQueue;
    .local v46, "ident":J
    :try_start_9
    iget-object v0, v1, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;

    iput-wide v8, v0, Landroid/os/Looper$MessageRecord;->finishedTime:J

    .line 247
    iget-object v0, v1, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;

    iput-wide v2, v0, Landroid/os/Looper$MessageRecord;->delay:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 249
    :try_start_a
    sget v0, Landroid/os/NubiaDebug;->MESSAGE_DELAY:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-wide/from16 v48, v12

    int-to-long v12, v0

    .line 249
    .end local v12    # "t1":J
    .local v48, "t1":J
    cmp-long v0, v2, v12

    if-ltz v0, :cond_18

    .line 250
    :try_start_b
    const-string/jumbo v0, "nubialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v12, Landroid/os/Looper;->mEnable_looper_sample:Z

    if-eqz v12, :cond_17

    .line 251
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "t="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v13}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_e

    :cond_17
    const-string v12, ""

    :goto_e
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " finished message:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;

    .line 252
    invoke-virtual {v12, v8, v9}, Landroid/os/Looper$MessageRecord;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 268
    .end local v2    # "delay":J
    .end local v8    # "t2":J
    .end local v20    # "dispatchEnd":J
    .end local v44    # "target":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move/from16 v50, v5

    move/from16 v51, v7

    move-wide v4, v10

    move-object v7, v14

    move-object v8, v15

    move-wide/from16 v10, v46

    move-wide/from16 v53, v48

    goto/16 :goto_19

    .line 262
    .restart local v2    # "delay":J
    .restart local v8    # "t2":J
    .restart local v20    # "dispatchEnd":J
    .restart local v44    # "target":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_10

    .line 254
    :cond_18
    :goto_f
    if-eqz v24, :cond_1a

    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 256
    iget-object v0, v1, Landroid/os/Looper;->mHistory:Landroid/os/Looper$MessageHistory;

    if-nez v0, :cond_19

    .line 257
    new-instance v0, Landroid/os/Looper$MessageHistory;

    sget v4, Landroid/os/NubiaDebug;->MESSAGE_COUNT:I

    invoke-direct {v0, v4}, Landroid/os/Looper$MessageHistory;-><init>(I)V

    iput-object v0, v1, Landroid/os/Looper;->mHistory:Landroid/os/Looper$MessageHistory;

    .line 259
    :cond_19
    iget-object v0, v1, Landroid/os/Looper;->mHistory:Landroid/os/Looper$MessageHistory;

    iget-object v4, v1, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;

    invoke-virtual {v0, v4}, Landroid/os/Looper$MessageHistory;->addMessage(Landroid/os/Looper$MessageRecord;)V

    .line 260
    iget-object v0, v1, Landroid/os/Looper;->mHistory:Landroid/os/Looper$MessageHistory;

    invoke-virtual {v0}, Landroid/os/Looper$MessageHistory;->getCache()Landroid/os/Looper$MessageRecord;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 264
    :cond_1a
    goto :goto_11

    .line 268
    .end local v2    # "delay":J
    .end local v8    # "t2":J
    .end local v20    # "dispatchEnd":J
    .end local v44    # "target":Ljava/lang/String;
    .end local v48    # "t1":J
    .restart local v12    # "t1":J
    :catchall_2
    move-exception v0

    move/from16 v50, v5

    move/from16 v51, v7

    move-wide v4, v10

    move-wide/from16 v53, v12

    move-object v7, v14

    move-object v8, v15

    move-wide/from16 v10, v46

    .line 268
    .end local v12    # "t1":J
    .restart local v48    # "t1":J
    goto/16 :goto_19

    .line 262
    .end local v48    # "t1":J
    .restart local v2    # "delay":J
    .restart local v8    # "t2":J
    .restart local v12    # "t1":J
    .restart local v20    # "dispatchEnd":J
    .restart local v44    # "target":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-wide/from16 v48, v12

    .line 263
    .end local v12    # "t1":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v48    # "t1":J
    :goto_10
    :try_start_c
    const-string/jumbo v4, "nubialog"

    const-string v12, "anr log exception"

    invoke-static {v4, v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "delay":J
    .end local v8    # "t2":J
    .end local v44    # "target":Ljava/lang/String;
    :goto_11
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v0, :cond_1b

    .line 269
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 271
    :cond_1b
    const-wide/16 v2, 0x0

    cmp-long v0, v10, v2

    if-eqz v0, :cond_1c

    .line 272
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 275
    :cond_1c
    if-eqz v5, :cond_1f

    .line 276
    if-eqz v7, :cond_1e

    .line 277
    iget-wide v2, v15, Landroid/os/Message;->when:J

    sub-long v2, v33, v2

    const-wide/16 v8, 0xa

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1d

    .line 278
    const-string v0, "Looper"

    const-string v2, "Drained"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    .line 289
    .end local v7    # "slowDeliveryDetected":Z
    .local v0, "slowDeliveryDetected":Z
    move/from16 v51, v0

    move/from16 v50, v5

    .line 289
    .end local v0    # "slowDeliveryDetected":Z
    .end local v5    # "logSlowDelivery":Z
    .end local v10    # "traceTag":J
    .end local v14    # "logging":Landroid/util/Printer;
    .end local v15    # "msg":Landroid/os/Message;
    .end local v48    # "t1":J
    .local v2, "t1":J
    .local v4, "traceTag":J
    .local v7, "logging":Landroid/util/Printer;
    .local v50, "logSlowDelivery":Z
    .local v51, "slowDeliveryDetected":Z
    .local v52, "msg":Landroid/os/Message;
    :goto_12
    move-wide v4, v10

    move-object v7, v14

    move-object/from16 v52, v15

    move-wide/from16 v2, v48

    goto :goto_13

    .line 289
    .end local v2    # "t1":J
    .end local v4    # "traceTag":J
    .end local v50    # "logSlowDelivery":Z
    .end local v51    # "slowDeliveryDetected":Z
    .end local v52    # "msg":Landroid/os/Message;
    .restart local v5    # "logSlowDelivery":Z
    .local v7, "slowDeliveryDetected":Z
    .restart local v10    # "traceTag":J
    .restart local v14    # "logging":Landroid/util/Printer;
    .restart local v15    # "msg":Landroid/os/Message;
    .restart local v48    # "t1":J
    :cond_1d
    move/from16 v50, v5

    move/from16 v51, v7

    goto :goto_12

    .line 282
    :cond_1e
    iget-wide v2, v15, Landroid/os/Message;->when:J

    const-string v0, "delivery"

    move-wide/from16 v8, v28

    move-wide v12, v10

    move-wide v10, v2

    .line 282
    .end local v10    # "traceTag":J
    .local v12, "traceTag":J
    move/from16 v50, v5

    move-wide v4, v12

    move-wide/from16 v2, v48

    move-wide/from16 v12, v33

    .line 282
    .end local v5    # "logSlowDelivery":Z
    .end local v12    # "traceTag":J
    .end local v48    # "t1":J
    .restart local v2    # "t1":J
    .restart local v4    # "traceTag":J
    .restart local v50    # "logSlowDelivery":Z
    move/from16 v51, v7

    move-object v7, v14

    move-object v14, v0

    .line 282
    .end local v14    # "logging":Landroid/util/Printer;
    .local v7, "logging":Landroid/util/Printer;
    .restart local v51    # "slowDeliveryDetected":Z
    move-object/from16 v52, v15

    .line 282
    .end local v15    # "msg":Landroid/os/Message;
    .restart local v52    # "msg":Landroid/os/Message;
    invoke-static/range {v8 .. v15}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 285
    const/4 v0, 0x1

    .line 289
    .end local v51    # "slowDeliveryDetected":Z
    .restart local v0    # "slowDeliveryDetected":Z
    move/from16 v51, v0

    goto :goto_13

    .line 289
    .end local v0    # "slowDeliveryDetected":Z
    .end local v2    # "t1":J
    .end local v4    # "traceTag":J
    .end local v50    # "logSlowDelivery":Z
    .end local v52    # "msg":Landroid/os/Message;
    .restart local v5    # "logSlowDelivery":Z
    .local v7, "slowDeliveryDetected":Z
    .restart local v10    # "traceTag":J
    .restart local v14    # "logging":Landroid/util/Printer;
    .restart local v15    # "msg":Landroid/os/Message;
    .restart local v48    # "t1":J
    :cond_1f
    move/from16 v50, v5

    move/from16 v51, v7

    move-wide v4, v10

    move-object v7, v14

    move-object/from16 v52, v15

    move-wide/from16 v2, v48

    .line 289
    .end local v5    # "logSlowDelivery":Z
    .end local v10    # "traceTag":J
    .end local v14    # "logging":Landroid/util/Printer;
    .end local v15    # "msg":Landroid/os/Message;
    .end local v48    # "t1":J
    .restart local v2    # "t1":J
    .restart local v4    # "traceTag":J
    .local v7, "logging":Landroid/util/Printer;
    .restart local v50    # "logSlowDelivery":Z
    .restart local v51    # "slowDeliveryDetected":Z
    .restart local v52    # "msg":Landroid/os/Message;
    :cond_20
    :goto_13
    if-eqz v6, :cond_21

    .line 290
    const-string v22, "dispatch"

    move-wide/from16 v16, v30

    move-wide/from16 v18, v33

    move-object/from16 v23, v52

    invoke-static/range {v16 .. v23}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    .line 293
    :cond_21
    if-eqz v7, :cond_22

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<<<<< Finished to "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v52

    iget-object v9, v8, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 294
    .end local v52    # "msg":Landroid/os/Message;
    .local v8, "msg":Landroid/os/Message;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 298
    .end local v8    # "msg":Landroid/os/Message;
    .restart local v52    # "msg":Landroid/os/Message;
    :cond_22
    move-object/from16 v8, v52

    .line 298
    .end local v52    # "msg":Landroid/os/Message;
    .restart local v8    # "msg":Landroid/os/Message;
    :goto_14
    sget-boolean v0, Landroid/app/ActivityThread;->isSystemServerMain:Z

    if-eqz v0, :cond_25

    sget-boolean v0, Landroid/app/ActivityThread;->sDebugStuckValueEnable:Z

    if-eqz v0, :cond_25

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 302
    .local v9, "checkStuckValueNow":J
    sub-long v11, v9, v2

    .line 303
    .local v11, "stuckValueDelay":J
    sget-wide v13, Landroid/app/ActivityThread;->sLoopThreshold:J

    cmp-long v0, v11, v13

    if-lez v0, :cond_25

    .line 304
    sget-object v13, Landroid/os/Looper;->mDebugProcessNames:[Ljava/lang/String;

    array-length v14, v13

    const/4 v15, 0x0

    :goto_15
    if-ge v15, v14, :cond_25

    move-wide/from16 v53, v2

    aget-object v2, v13, v15

    .line 305
    .local v2, "proc":Ljava/lang/String;
    .local v53, "t1":J
    iget-object v0, v1, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "loop: delay="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", thread="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    sget-boolean v0, Landroid/os/Looper;->mEnable_looper_sample:Z

    if-eqz v0, :cond_23

    iget-object v0, v1, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_23
    const-string v0, " "

    :goto_16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", finished message: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;

    .line 308
    invoke-virtual {v0, v9, v10}, Landroid/os/Looper$MessageRecord;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    const/16 v3, 0x18dc

    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 310
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dumpSystraceWhenStuck()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 313
    goto :goto_17

    .line 311
    :catch_2
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "proc":Ljava/lang/String;
    :cond_24
    :goto_17
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v2, v53

    goto :goto_15

    .line 322
    .end local v9    # "checkStuckValueNow":J
    .end local v11    # "stuckValueDelay":J
    .end local v53    # "t1":J
    .local v2, "t1":J
    :cond_25
    move-wide/from16 v53, v2

    .line 322
    .end local v2    # "t1":J
    .restart local v53    # "t1":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 323
    .local v2, "newIdent":J
    cmp-long v0, v46, v2

    if-eqz v0, :cond_26

    .line 324
    const-string v0, "Looper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thread identity changed from 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    move-wide/from16 v10, v46

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    .line 325
    .end local v46    # "ident":J
    .local v10, "ident":J
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to 0x"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " while dispatching to "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 327
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " what="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Landroid/os/Message;->what:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 324
    invoke-static {v0, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 331
    .end local v10    # "ident":J
    .restart local v46    # "ident":J
    :cond_26
    move-wide/from16 v10, v46

    .line 331
    .end local v46    # "ident":J
    .restart local v10    # "ident":J
    :goto_18
    invoke-virtual {v8}, Landroid/os/Message;->recycleUnchecked()V

    .line 332
    .end local v2    # "newIdent":J
    .end local v4    # "traceTag":J
    .end local v6    # "logSlowDispatch":Z
    .end local v7    # "logging":Landroid/util/Printer;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v20    # "dispatchEnd":J
    .end local v24    # "isMainLooper":Z
    .end local v25    # "needStartTime":Z
    .end local v26    # "needEndTime":Z
    .end local v28    # "slowDeliveryThresholdMs":J
    .end local v30    # "slowDispatchThresholdMs":J
    .end local v33    # "dispatchStart":J
    .end local v50    # "logSlowDelivery":Z
    .end local v53    # "t1":J
    nop

    .line 167
    move-wide v3, v10

    move/from16 v6, v32

    move-object/from16 v2, v45

    move/from16 v0, v51

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 268
    .end local v51    # "slowDeliveryDetected":Z
    .restart local v5    # "logSlowDelivery":Z
    .restart local v6    # "logSlowDispatch":Z
    .local v7, "slowDeliveryDetected":Z
    .local v10, "traceTag":J
    .restart local v14    # "logging":Landroid/util/Printer;
    .restart local v15    # "msg":Landroid/os/Message;
    .restart local v24    # "isMainLooper":Z
    .restart local v25    # "needStartTime":Z
    .restart local v26    # "needEndTime":Z
    .restart local v28    # "slowDeliveryThresholdMs":J
    .restart local v30    # "slowDispatchThresholdMs":J
    .restart local v33    # "dispatchStart":J
    .restart local v46    # "ident":J
    .restart local v48    # "t1":J
    :catchall_3
    move-exception v0

    move/from16 v50, v5

    move/from16 v51, v7

    move-wide v4, v10

    move-object v7, v14

    move-object v8, v15

    move-wide/from16 v10, v46

    move-wide/from16 v53, v48

    .line 268
    .end local v5    # "logSlowDelivery":Z
    .end local v14    # "logging":Landroid/util/Printer;
    .end local v15    # "msg":Landroid/os/Message;
    .end local v46    # "ident":J
    .end local v48    # "t1":J
    .restart local v4    # "traceTag":J
    .local v7, "logging":Landroid/util/Printer;
    .restart local v8    # "msg":Landroid/os/Message;
    .local v10, "ident":J
    .restart local v50    # "logSlowDelivery":Z
    .restart local v51    # "slowDeliveryDetected":Z
    .restart local v53    # "t1":J
    goto :goto_19

    .line 268
    .end local v4    # "traceTag":J
    .end local v8    # "msg":Landroid/os/Message;
    .end local v50    # "logSlowDelivery":Z
    .end local v51    # "slowDeliveryDetected":Z
    .end local v53    # "t1":J
    .restart local v5    # "logSlowDelivery":Z
    .local v7, "slowDeliveryDetected":Z
    .local v10, "traceTag":J
    .local v12, "t1":J
    .restart local v14    # "logging":Landroid/util/Printer;
    .restart local v15    # "msg":Landroid/os/Message;
    .restart local v46    # "ident":J
    :catchall_4
    move-exception v0

    move/from16 v50, v5

    move/from16 v51, v7

    move-wide v4, v10

    move-wide/from16 v53, v12

    move-object v7, v14

    move-object v8, v15

    move-wide/from16 v10, v46

    .line 268
    .end local v5    # "logSlowDelivery":Z
    .end local v12    # "t1":J
    .end local v14    # "logging":Landroid/util/Printer;
    .end local v15    # "msg":Landroid/os/Message;
    .end local v46    # "ident":J
    .restart local v4    # "traceTag":J
    .local v7, "logging":Landroid/util/Printer;
    .restart local v8    # "msg":Landroid/os/Message;
    .local v10, "ident":J
    .restart local v50    # "logSlowDelivery":Z
    .restart local v51    # "slowDeliveryDetected":Z
    .restart local v53    # "t1":J
    goto :goto_19

    .line 268
    .end local v4    # "traceTag":J
    .end local v8    # "msg":Landroid/os/Message;
    .end local v45    # "queue":Landroid/os/MessageQueue;
    .end local v50    # "logSlowDelivery":Z
    .end local v51    # "slowDeliveryDetected":Z
    .end local v53    # "t1":J
    .local v2, "queue":Landroid/os/MessageQueue;
    .restart local v3    # "ident":J
    .restart local v5    # "logSlowDelivery":Z
    .local v7, "slowDeliveryDetected":Z
    .local v10, "traceTag":J
    .restart local v12    # "t1":J
    .restart local v14    # "logging":Landroid/util/Printer;
    .restart local v15    # "msg":Landroid/os/Message;
    :catchall_5
    move-exception v0

    move-object/from16 v45, v2

    move/from16 v50, v5

    move/from16 v51, v7

    move-wide/from16 v53, v12

    move-object v7, v14

    move-object v8, v15

    move-wide/from16 v55, v3

    move-wide v4, v10

    move-wide/from16 v10, v55

    .end local v2    # "queue":Landroid/os/MessageQueue;
    .end local v3    # "ident":J
    .end local v5    # "logSlowDelivery":Z
    .end local v12    # "t1":J
    .end local v14    # "logging":Landroid/util/Printer;
    .end local v15    # "msg":Landroid/os/Message;
    .restart local v4    # "traceTag":J
    .local v7, "logging":Landroid/util/Printer;
    .restart local v8    # "msg":Landroid/os/Message;
    .local v10, "ident":J
    .restart local v45    # "queue":Landroid/os/MessageQueue;
    .restart local v50    # "logSlowDelivery":Z
    .restart local v51    # "slowDeliveryDetected":Z
    .restart local v53    # "t1":J
    :goto_19
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_27

    .line 269
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 271
    :cond_27
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_28

    .line 272
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_28
    throw v0

    .line 150
    .end local v4    # "traceTag":J
    .end local v6    # "logSlowDispatch":Z
    .end local v7    # "logging":Landroid/util/Printer;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v10    # "ident":J
    .end local v24    # "isMainLooper":Z
    .end local v25    # "needStartTime":Z
    .end local v26    # "needEndTime":Z
    .end local v28    # "slowDeliveryThresholdMs":J
    .end local v30    # "slowDispatchThresholdMs":J
    .end local v32    # "thresholdOverride":I
    .end local v33    # "dispatchStart":J
    .end local v45    # "queue":Landroid/os/MessageQueue;
    .end local v50    # "logSlowDelivery":Z
    .end local v51    # "slowDeliveryDetected":Z
    .end local v53    # "t1":J
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "No Looper; Looper.prepare() wasn\'t called on this thread."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static myLooper()Landroid/os/Looper;
    .locals 1

    .line 353
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method public static myQueue()Landroid/os/MessageQueue;
    .locals 1

    .line 362
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public static prepare()V
    .locals 1

    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 109
    return-void
.end method

.method private static prepare(Z)V
    .locals 2
    .param p0, "quitAllowed"    # Z

    .line 112
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Landroid/os/Looper;

    invoke-direct {v1, p0}, Landroid/os/Looper;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 116
    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only one Looper may be created per thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prepareMainLooper()V
    .locals 3

    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 126
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 127
    :try_start_0
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 130
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The main Looper has already been prepared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z
    .locals 5
    .param p0, "threshold"    # J
    .param p2, "measureStart"    # J
    .param p4, "measureEnd"    # J
    .param p6, "what"    # Ljava/lang/String;
    .param p7, "msg"    # Landroid/os/Message;

    .line 337
    sub-long v0, p4, p2

    .line 338
    .local v0, "actualTime":J
    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    .line 339
    const/4 v2, 0x0

    return v2

    .line 342
    :cond_0
    const-string v2, "Looper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slow "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p7, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 344
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p7, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p7, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Looper;->dumpMessageHistory(Landroid/util/Printer;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 483
    return-void
.end method

.method public dumpMessageHistory(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 508
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 509
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;

    if-eqz v2, :cond_0

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dispatching message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/os/Looper;->mDispatchingMsg:Landroid/os/Looper$MessageRecord;

    invoke-virtual {v3, v0, v1}, Landroid/os/Looper$MessageRecord;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 512
    :cond_0
    iget-object v2, p0, Landroid/os/Looper;->mHistory:Landroid/os/Looper$MessageHistory;

    if-eqz v2, :cond_1

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Last "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/os/Looper;->mHistory:Landroid/os/Looper$MessageHistory;

    invoke-virtual {v3}, Landroid/os/Looper$MessageHistory;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  messages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 514
    iget-object v2, p0, Landroid/os/Looper;->mHistory:Landroid/os/Looper$MessageHistory;

    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/os/Looper$MessageHistory;->dump(Landroid/util/Printer;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v0    # "now":J
    :cond_1
    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "nubialog"

    const-string v2, "dumpMessageHistory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getQueue()Landroid/os/MessageQueue;
    .locals 1

    .line 455
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .line 446
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public isCurrentThread()Z
    .locals 2

    .line 374
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public quit()V
    .locals 2

    .line 421
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 422
    return-void
.end method

.method public quitSafely()V
    .locals 2

    .line 437
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 438
    return-void
.end method

.method public setMessageLogging(Landroid/util/Printer;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;

    .line 387
    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 388
    return-void
.end method

.method public setSlowLogThresholdMs(JJ)V
    .locals 0
    .param p1, "slowDispatchThresholdMs"    # J
    .param p3, "slowDeliveryThresholdMs"    # J

    .line 400
    iput-wide p1, p0, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    .line 401
    iput-wide p3, p0, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    .line 402
    return-void
.end method

.method public setTraceTag(J)V
    .locals 0
    .param p1, "traceTag"    # J

    .line 392
    iput-wide p1, p0, Landroid/os/Looper;->mTraceTag:J

    .line 393
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 487
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 488
    .local v0, "looperToken":J
    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 489
    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 490
    iget-object v2, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/MessageQueue;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 491
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 492
    return-void
.end method
