.class Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;
.super Ljava/lang/Object;
.source "WifiMulticastLockManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMulticastLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Multicaster"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mTag:Ljava/lang/String;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiMulticastLockManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiMulticastLockManager;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .line 64
    iput-object p1, p0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->this$0:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->mTag:Ljava/lang/String;

    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->mUid:I

    .line 67
    iput-object p3, p0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->mBinder:Landroid/os/IBinder;

    .line 69
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->binderDied()V

    .line 73
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 77
    const-string v0, "WifiMulticastLockManager"

    const-string v1, "Multicaster binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->this$0:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMulticastLockManager;->access$000(Lcom/android/server/wifi/WifiMulticastLockManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->this$0:Lcom/android/server/wifi/WifiMulticastLockManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMulticastLockManager;->access$000(Lcom/android/server/wifi/WifiMulticastLockManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 80
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->this$0:Lcom/android/server/wifi/WifiMulticastLockManager;

    iget v3, p0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->mUid:I

    invoke-static {v2, v1, v3}, Lcom/android/server/wifi/WifiMulticastLockManager;->access$100(Lcom/android/server/wifi/WifiMulticastLockManager;II)V

    .line 83
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUid()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->mUid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multicaster{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlinkDeathRecipient()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 88
    return-void
.end method
