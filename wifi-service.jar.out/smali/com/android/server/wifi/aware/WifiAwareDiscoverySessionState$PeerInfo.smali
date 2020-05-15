.class Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;
.super Ljava/lang/Object;
.source "WifiAwareDiscoverySessionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PeerInfo"
.end annotation


# instance fields
.field mInstanceId:I

.field mMac:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 0
    .param p1, "instanceId"    # I
    .param p2, "mac"    # [B

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;->mInstanceId:I

    .line 57
    iput-object p2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;->mMac:[B

    .line 58
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "instanceId ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;->mMac:[B

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
