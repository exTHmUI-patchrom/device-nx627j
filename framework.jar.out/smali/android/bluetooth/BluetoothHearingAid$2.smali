.class Landroid/bluetooth/BluetoothHearingAid$2;
.super Ljava/lang/Object;
.source "BluetoothHearingAid.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 721
    iput-object p1, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 725
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$000(Landroid/bluetooth/BluetoothHearingAid;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 726
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothHearingAid$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHearingAid;->access$102(Landroid/bluetooth/BluetoothHearingAid;Landroid/bluetooth/IBluetoothHearingAid;)Landroid/bluetooth/IBluetoothHearingAid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$000(Landroid/bluetooth/BluetoothHearingAid;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 729
    nop

    .line 731
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$400(Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$400(Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x15

    iget-object v2, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 735
    :cond_0
    return-void

    .line 728
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHearingAid;->access$000(Landroid/bluetooth/BluetoothHearingAid;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 740
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$000(Landroid/bluetooth/BluetoothHearingAid;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 741
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHearingAid;->access$102(Landroid/bluetooth/BluetoothHearingAid;Landroid/bluetooth/IBluetoothHearingAid;)Landroid/bluetooth/IBluetoothHearingAid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$000(Landroid/bluetooth/BluetoothHearingAid;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 744
    nop

    .line 745
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$400(Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHearingAid;->access$400(Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x15

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 748
    :cond_0
    return-void

    .line 743
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid$2;->this$0:Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHearingAid;->access$000(Landroid/bluetooth/BluetoothHearingAid;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
