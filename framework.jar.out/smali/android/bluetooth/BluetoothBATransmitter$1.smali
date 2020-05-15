.class Landroid/bluetooth/BluetoothBATransmitter$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothBATransmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothBATransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothBATransmitter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothBATransmitter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 169
    iput-object p1, p0, Landroid/bluetooth/BluetoothBATransmitter$1;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 3
    .param p1, "up"    # Z

    .line 171
    const-string v0, "BluetoothBAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-nez p1, :cond_1

    .line 173
    const-string v0, "BluetoothBAT"

    const-string v1, "Unbinding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$1;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 176
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$1;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$100(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/bluetooth/IBluetoothBATransmitter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "BluetoothBAT"

    const-string/jumbo v1, "mService is not null, So unbind BATService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$1;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothBATransmitter;->access$102(Landroid/bluetooth/BluetoothBATransmitter;Landroid/bluetooth/IBluetoothBATransmitter;)Landroid/bluetooth/IBluetoothBATransmitter;

    .line 179
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$1;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$300(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter$1;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothBATransmitter;->access$200(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "re":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothBAT"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .end local v0    # "re":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$1;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 185
    goto :goto_3

    .line 184
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter$1;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothBATransmitter;->access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 188
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$1;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 189
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$1;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$100(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/bluetooth/IBluetoothBATransmitter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 190
    const-string v0, "BluetoothBAT"

    const-string v1, "Binding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$1;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothBATransmitter;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 196
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 193
    :catch_1
    move-exception v0

    .line 194
    .restart local v0    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "BluetoothBAT"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    .end local v0    # "re":Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$1;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 197
    nop

    .line 199
    :goto_3
    return-void

    .line 196
    :goto_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter$1;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothBATransmitter;->access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method
