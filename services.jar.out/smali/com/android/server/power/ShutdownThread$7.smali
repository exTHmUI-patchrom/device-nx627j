.class Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;

    .line 649
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$7;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$7;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 651
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$500()Landroid/util/TimingsTraceLog;

    move-result-object v0

    .line 654
    .local v0, "shutdownTimingsTraceLog":Landroid/util/TimingsTraceLog;
    const-string/jumbo v1, "phone"

    .line 655
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 658
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    .line 664
    :catch_0
    move-exception v4

    goto :goto_2

    .line 658
    :cond_1
    :goto_0
    move v4, v3

    .line 659
    .local v4, "radioOff":Z
    :goto_1
    if-nez v4, :cond_2

    .line 660
    const-string v5, "ShutdownThread"

    const-string v6, "Turning off cellular radios..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/ShutdownThread;->access$700(Ljava/lang/String;)V

    .line 662
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 664
    .end local v4    # "radioOff":Z
    :goto_2
    nop

    .line 665
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "ShutdownThread"

    const-string v6, "RemoteException during radio shutdown"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    nop

    .line 666
    .end local v4    # "ex":Landroid/os/RemoteException;
    move v4, v3

    goto :goto_4

    .line 667
    .local v4, "radioOff":Z
    :cond_2
    :goto_3
    nop

    .line 666
    :goto_4
    nop

    .line 669
    const-string v5, "ShutdownThread"

    const-string v6, "Waiting for Radio..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-wide v5, p0, Lcom/android/server/power/ShutdownThread$7;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 672
    .local v5, "delay":J
    :goto_5
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_6

    .line 673
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$800()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 674
    iget v7, p0, Lcom/android/server/power/ShutdownThread$7;->val$timeout:I

    int-to-long v7, v7

    sub-long/2addr v7, v5

    long-to-double v7, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    mul-double/2addr v7, v9

    iget v9, p0, Lcom/android/server/power/ShutdownThread$7;->val$timeout:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    double-to-int v7, v7

    .line 676
    .local v7, "status":I
    add-int/lit8 v7, v7, 0x6

    .line 677
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v7, v9}, Lcom/android/server/power/ShutdownThread;->access$900(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 680
    .end local v7    # "status":I
    :cond_3
    if-nez v4, :cond_4

    .line 682
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    xor-int/2addr v7, v3

    move v4, v7

    .line 686
    goto :goto_6

    .line 683
    :catch_1
    move-exception v7

    .line 684
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException during radio shutdown"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    const/4 v4, 0x1

    .line 687
    .end local v7    # "ex":Landroid/os/RemoteException;
    :goto_6
    if-eqz v4, :cond_4

    .line 688
    const-string v7, "ShutdownThread"

    const-string v8, "Radio turned off."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/power/ShutdownThread;->access$1000(Ljava/lang/String;)V

    .line 690
    const-string v7, "ShutdownRadio"

    .line 691
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1100()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 695
    :cond_4
    if-eqz v4, :cond_5

    .line 696
    const-string v7, "ShutdownThread"

    const-string v8, "Radio shutdown complete."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v7, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    aput-boolean v3, v7, v2

    .line 698
    goto :goto_7

    .line 700
    :cond_5
    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 701
    iget-wide v7, p0, Lcom/android/server/power/ShutdownThread$7;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v5, v7, v9

    goto :goto_5

    .line 703
    :cond_6
    :goto_7
    return-void
.end method
