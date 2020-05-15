.class Landroid/telephony/TelephonyScanManager$1;
.super Landroid/os/Handler;
.source "TelephonyScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyScanManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyScanManager;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyScanManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyScanManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 108
    iput-object p1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0([Landroid/telephony/CellInfo;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 3
    .param p0, "ci"    # [Landroid/telephony/CellInfo;
    .param p1, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 141
    const-string v0, "TelephonyScanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onResults(Ljava/util/List;)V

    .line 143
    return-void
.end method

.method static synthetic lambda$handleMessage$1(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 3
    .param p0, "errorCode"    # I
    .param p1, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 152
    const-string v0, "TelephonyScanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onError(I)V

    .line 154
    return-void
.end method

.method static synthetic lambda$handleMessage$2(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 2
    .param p0, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 162
    const-string v0, "TelephonyScanManager"

    const-string/jumbo v1, "onComplete"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onComplete()V

    .line 164
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .line 111
    const-string/jumbo v0, "message cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v0}, Landroid/telephony/TelephonyScanManager;->access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v1}, Landroid/telephony/TelephonyScanManager;->access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    .line 115
    .local v1, "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    if-eqz v1, :cond_3

    .line 120
    invoke-static {v1}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->access$100(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    move-result-object v0

    .line 121
    .local v0, "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    invoke-static {v1}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->access$200(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 122
    .local v2, "executor":Ljava/util/concurrent/Executor;
    if-eqz v0, :cond_2

    .line 126
    if-eqz v2, :cond_1

    .line 131
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 171
    const-string v3, "TelephonyScanManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    :pswitch_0
    :try_start_1
    new-instance v3, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$tGSpVQaVhc4GKIxjcECV-jCGYw4;

    invoke-direct {v3, v0}, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$tGSpVQaVhc4GKIxjcECV-jCGYw4;-><init>(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    iget-object v3, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v3}, Landroid/telephony/TelephonyScanManager;->access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    goto :goto_1

    .line 166
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "TelephonyScanManager"

    const-string v5, "Exception in networkscan callback onComplete"

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 150
    :pswitch_1
    :try_start_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 151
    .local v3, "errorCode":I
    new-instance v4, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$X9SMshZoHjJ6SzCbmgVMwQip2Q0;

    invoke-direct {v4, v3, v0}, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$X9SMshZoHjJ6SzCbmgVMwQip2Q0;-><init>(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    .end local v3    # "errorCode":I
    goto :goto_1

    .line 155
    :catch_1
    move-exception v3

    .line 156
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "TelephonyScanManager"

    const-string v5, "Exception in networkscan callback onError"

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 134
    :pswitch_2
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 135
    .local v3, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "scanResult"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 136
    .local v4, "parcelables":[Landroid/os/Parcelable;
    array-length v5, v4

    new-array v5, v5, [Landroid/telephony/CellInfo;

    .line 137
    .local v5, "ci":[Landroid/telephony/CellInfo;
    const/4 v6, 0x0

    .line 137
    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 138
    aget-object v7, v4, v6

    check-cast v7, Landroid/telephony/CellInfo;

    aput-object v7, v5, v6

    .line 137
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    .end local v6    # "i":I
    :cond_0
    new-instance v6, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$jmXulbd8FzO5Qb8_Hi-Z6s_nJWI;

    invoke-direct {v6, v5, v0}, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$jmXulbd8FzO5Qb8_Hi-Z6s_nJWI;-><init>([Landroid/telephony/CellInfo;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 146
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v4    # "parcelables":[Landroid/os/Parcelable;
    .end local v5    # "ci":[Landroid/telephony/CellInfo;
    goto :goto_1

    .line 144
    :catch_2
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "TelephonyScanManager"

    const-string v5, "Exception in networkscan callback onResults"

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v3    # "e":Ljava/lang/Exception;
    nop

    .line 174
    :goto_1
    return-void

    .line 127
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find Executor with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find NetworkScanCallback with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    .end local v0    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find NetworkScanInfo with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    .end local v1    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
