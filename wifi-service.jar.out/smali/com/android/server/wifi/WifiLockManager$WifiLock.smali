.class Lcom/android/server/wifi/WifiLockManager$WifiLock;
.super Ljava/lang/Object;
.source "WifiLockManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiLock"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mMode:I

.field mTag:Ljava/lang/String;

.field mUid:I

.field mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/wifi/WifiLockManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiLockManager;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 1
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "ws"    # Landroid/os/WorkSource;

    .line 301
    iput-object p1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->this$0:Lcom/android/server/wifi/WifiLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p3, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mTag:Ljava/lang/String;

    .line 303
    iput-object p4, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mBinder:Landroid/os/IBinder;

    .line 304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mUid:I

    .line 305
    iput p2, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mMode:I

    .line 306
    iput-object p5, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 308
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    goto :goto_0

    .line 309
    :catch_0
    move-exception p1

    .line 310
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->binderDied()V

    .line 312
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->this$0:Lcom/android/server/wifi/WifiLockManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiLockManager;->access$000(Lcom/android/server/wifi/WifiLockManager;Landroid/os/IBinder;)Z

    .line 328
    return-void
.end method

.method protected getBinder()Landroid/os/IBinder;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method protected getUid()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mUid:I

    return v0
.end method

.method protected getWorkSource()Landroid/os/WorkSource;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiLock{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " workSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlinkDeathRecipient()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 332
    return-void
.end method
