.class Landroid/hardware/fingerprint/FingerprintManager$1;
.super Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .line 939
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$powerManager:Landroid/os/PowerManager;

    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onLockoutReset$0(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V
    .locals 1
    .param p0, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;
    .param p1, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .line 950
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;->onLockoutReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 953
    nop

    .line 954
    return-void

    .line 952
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method


# virtual methods
.method public onLockoutReset(JLandroid/os/IRemoteCallback;)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "serverCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 945
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$powerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string/jumbo v3, "lockoutResetCallback"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 947
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 948
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    new-instance v4, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$4i3tUU8mafgvA9HaB2UPD31L6UY;

    invoke-direct {v4, v3, v1}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$4i3tUU8mafgvA9HaB2UPD31L6UY;-><init>(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    .end local v1    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 957
    nop

    .line 958
    return-void

    .line 956
    :catchall_0
    move-exception v1

    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    throw v1
.end method
