.class Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
.super Ljava/lang/Object;
.source "NetworkScanRequestTracker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkScanRequestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkScanRequestInfo"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mIsBinderDead:Z

.field private final mMessenger:Landroid/os/Messenger;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPid:I

.field private final mRequest:Landroid/telephony/NetworkScanRequest;

.field private final mScanId:I

.field private final mUid:I

.field final synthetic this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;ILcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker;
    .param p2, "r"    # Landroid/telephony/NetworkScanRequest;
    .param p3, "m"    # Landroid/os/Messenger;
    .param p4, "b"    # Landroid/os/IBinder;
    .param p5, "id"    # I
    .param p6, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 199
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    .line 202
    iput-object p3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mMessenger:Landroid/os/Messenger;

    .line 203
    iput-object p4, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 204
    iput p5, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mScanId:I

    .line 205
    iput-object p6, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mUid:I

    .line 207
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mPid:I

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mIsBinderDead:Z

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->binderDied()V

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 189
    iget v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mScanId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 189
    iget v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mUid:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 237
    const-string v0, "ScanRequestTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneInterfaceManager NetworkScanRequestInfo binderDied("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->setIsBinderDead(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mScanId:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker;I)V

    .line 241
    return-void
.end method

.method declared-synchronized getIsBinderDead()Z
    .locals 1

    monitor-enter p0

    .line 222
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mIsBinderDead:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    throw v0
.end method

.method getRequest()Landroid/telephony/NetworkScanRequest;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    return-object v0
.end method

.method declared-synchronized setIsBinderDead(Z)V
    .locals 0
    .param p1, "val"    # Z

    monitor-enter p0

    .line 218
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mIsBinderDead:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 217
    .end local p1    # "val":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    throw p1
.end method

.method unlinkDeathRecipient()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 233
    :cond_0
    return-void
.end method
