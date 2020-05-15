.class Landroid/bluetooth/BluetoothHeadset$2;
.super Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;
.source "BluetoothHeadset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHeadset;

    .line 1164
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1167
    const-string v0, "BluetoothHeadset"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$200(Landroid/bluetooth/BluetoothHeadset;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1170
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->access$102(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    .line 1171
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$200(Landroid/bluetooth/BluetoothHeadset;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1175
    nop

    .line 1176
    return-void

    .line 1174
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->access$200(Landroid/bluetooth/BluetoothHeadset;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 1180
    const-string v0, "BluetoothHeadset"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$200(Landroid/bluetooth/BluetoothHeadset;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1183
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->access$102(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    .line 1184
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1187
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$200(Landroid/bluetooth/BluetoothHeadset;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1188
    nop

    .line 1189
    return-void

    .line 1187
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->access$200(Landroid/bluetooth/BluetoothHeadset;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
