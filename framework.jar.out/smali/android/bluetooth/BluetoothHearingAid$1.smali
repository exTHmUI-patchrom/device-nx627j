.class Landroid/bluetooth/BluetoothHearingAid$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHearingAid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHearingAid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHearingAid;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHearingAid;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHearingAid;

    .line 151
    iput-object p1, p0, Landroid/bluetooth/BluetoothHearingAid$1;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 3
    .param p1, "up"    # Z

    .line 154
    if-nez p1, :cond_1

    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$1;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$000(Landroid/bluetooth/BluetoothHearingAid;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 158
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$1;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$100(Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$1;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHearingAid;->access$102(Landroid/bluetooth/BluetoothHearingAid;Landroid/bluetooth/IBluetoothHearingAid;)Landroid/bluetooth/IBluetoothHearingAid;

    .line 160
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$1;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$300(Landroid/bluetooth/BluetoothHearingAid;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid$1;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHearingAid;->access$200(Landroid/bluetooth/BluetoothHearingAid;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "re":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothHearingAid"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v0    # "re":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$1;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$000(Landroid/bluetooth/BluetoothHearingAid;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 166
    goto :goto_3

    .line 165
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid$1;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHearingAid;->access$000(Landroid/bluetooth/BluetoothHearingAid;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 169
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$1;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$000(Landroid/bluetooth/BluetoothHearingAid;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 170
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$1;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$100(Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$1;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHearingAid;->doBind()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 177
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 174
    :catch_1
    move-exception v0

    .line 175
    .restart local v0    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "BluetoothHearingAid"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    .end local v0    # "re":Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$1;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$000(Landroid/bluetooth/BluetoothHearingAid;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 178
    nop

    .line 180
    :goto_3
    return-void

    .line 177
    :goto_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid$1;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHearingAid;->access$000(Landroid/bluetooth/BluetoothHearingAid;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method
