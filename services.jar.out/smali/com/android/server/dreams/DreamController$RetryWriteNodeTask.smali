.class Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryWriteNodeTask"
.end annotation


# instance fields
.field private final countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final filePath:Ljava/lang/String;

.field private final retryTimes:I

.field final synthetic this$0:Lcom/android/server/dreams/DreamController;

.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 203
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/dreams/DreamController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;-><init>(Lcom/android/server/dreams/DreamController;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 160
    return-void
.end method

.method constructor <init>(Lcom/android/server/dreams/DreamController;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/String;
    .param p4, "down"    # Ljava/util/concurrent/CountDownLatch;

    .line 145
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p3, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->value:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->filePath:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 149
    if-nez p4, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->retryTimes:I

    .line 150
    return-void
.end method

.method private notifyCnd()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 156
    :cond_0
    return-void
.end method

.method private readNode()Ljava/lang/String;
    .locals 5

    .line 210
    const-string v0, ""

    .line 212
    .local v0, "mode":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 213
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 214
    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    .line 217
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-static {v2, v1}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    .end local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 217
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 211
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    :goto_0
    :try_start_4
    invoke-static {v2, v1}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DreamController"

    const-string v3, "Read aod node exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method private writeNode()V
    .locals 3

    .line 201
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 202
    :try_start_1
    iget-object v2, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :try_start_2
    invoke-static {v1, v0}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 206
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 203
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DreamController"

    const-string v2, "Write aod node exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 163
    invoke-direct {p0}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->readNode()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "oldValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string v1, "DreamController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OldValue equal NewValue so not need write node value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->notifyCnd()V

    .line 167
    return-void

    .line 169
    :cond_0
    const/4 v1, 0x0

    .line 171
    .local v1, "retryCount":I
    :goto_0
    sget-object v2, Lcom/android/server/dreams/DreamManagerService;->mWriteNodeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 172
    :try_start_0
    iget v3, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->retryTimes:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->this$0:Lcom/android/server/dreams/DreamController;

    iget-object v4, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->filePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/dreams/DreamController;->access$100(Lcom/android/server/dreams/DreamController;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->notifyCnd()V

    .line 174
    monitor-exit v2

    return-void

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->writeNode()V

    .line 177
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-direct {p0}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->readNode()Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v2, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    const-string v2, "DreamController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write sucess value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retryCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", filePath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->notifyCnd()V

    .line 182
    return-void

    .line 184
    :cond_2
    const-string v2, "DreamController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write failed Newvalue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", OldValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retryCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", filePath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    iget v2, p0, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->retryTimes:I

    if-le v1, v2, :cond_3

    .line 187
    invoke-direct {p0}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;->notifyCnd()V

    .line 188
    return-void

    .line 191
    :cond_3
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :goto_1
    goto/16 :goto_0

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DreamController"

    const-string v4, "Sleep exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 177
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
