.class Landroid/bluetooth/BluetoothA2dp$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothA2dp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothA2dp;

    .line 210
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 3
    .param p1, "up"    # Z

    .line 212
    const-string v0, "BluetoothA2dp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-nez p1, :cond_0

    .line 216
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->access$000(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 217
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->access$102(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    .line 218
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->access$300(Landroid/bluetooth/BluetoothA2dp;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->access$200(Landroid/bluetooth/BluetoothA2dp;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "re":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .end local v0    # "re":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->access$000(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 223
    goto :goto_3

    .line 222
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->access$000(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 226
    :cond_0
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->access$000(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 227
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->access$100(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 234
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 231
    :catch_1
    move-exception v0

    .line 232
    .restart local v0    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 234
    .end local v0    # "re":Ljava/lang/Exception;
    :cond_1
    :goto_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->access$000(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 235
    nop

    .line 237
    :goto_3
    return-void

    .line 234
    :goto_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->access$000(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method
