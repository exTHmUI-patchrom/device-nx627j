.class Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
.super Ljava/lang/Object;
.source "RttServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/rtt/RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RttRequestInfo"
.end annotation


# instance fields
.field public binder:Landroid/os/IBinder;

.field public callback:Landroid/net/wifi/rtt/IRttCallback;

.field public callingPackage:Ljava/lang/String;

.field public cmdId:I

.field public dispatchedToNative:Z

.field public dr:Landroid/os/IBinder$DeathRecipient;

.field public isCalledFromPrivilegedContext:Z

.field public peerHandlesTranslated:Z

.field public request:Landroid/net/wifi/rtt/RangingRequest;

.field public uid:I

.field public workSource:Landroid/os/WorkSource;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->cmdId:I

    .line 1188
    iput-boolean v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->dispatchedToNative:Z

    .line 1189
    iput-boolean v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->peerHandlesTranslated:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl$1;

    .line 1177
    invoke-direct {p0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RttRequestInfo: uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", workSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->workSource:Landroid/os/WorkSource;

    .line 1194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->dr:Landroid/os/IBinder$DeathRecipient;

    .line 1195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->request:Landroid/net/wifi/rtt/RangingRequest;

    .line 1196
    invoke-virtual {v1}, Landroid/net/wifi/rtt/RangingRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->callback:Landroid/net/wifi/rtt/IRttCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cmdId="

    .line 1197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->cmdId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peerHandlesTranslated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->peerHandlesTranslated:Z

    .line 1198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCalledFromPrivilegedContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;->isCalledFromPrivilegedContext:Z

    .line 1199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1193
    return-object v0
.end method
