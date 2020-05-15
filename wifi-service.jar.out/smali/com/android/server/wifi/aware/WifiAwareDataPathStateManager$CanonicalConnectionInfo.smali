.class Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;
.super Ljava/lang/Object;
.source "WifiAwareDataPathStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CanonicalConnectionInfo"
.end annotation


# instance fields
.field public final passphrase:Ljava/lang/String;

.field public final peerDiscoveryMac:[B

.field public final pmk:[B

.field public final sessionId:I


# direct methods
.method constructor <init>([B[BILjava/lang/String;)V
    .locals 0
    .param p1, "peerDiscoveryMac"    # [B
    .param p2, "pmk"    # [B
    .param p3, "sessionId"    # I
    .param p4, "passphrase"    # Ljava/lang/String;

    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1242
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->peerDiscoveryMac:[B

    .line 1243
    iput-object p2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->pmk:[B

    .line 1244
    iput p3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->sessionId:I

    .line 1245
    iput-object p4, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->passphrase:Ljava/lang/String;

    .line 1246
    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;

    .line 1262
    iget-object v0, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->peerDiscoveryMac:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->peerDiscoveryMac:[B

    iget-object v1, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->peerDiscoveryMac:[B

    .line 1263
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->pmk:[B

    iget-object v1, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->pmk:[B

    .line 1264
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->passphrase:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->passphrase:Ljava/lang/String;

    .line 1265
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->passphrase:Ljava/lang/String;

    .line 1266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->sessionId:I

    iget v1, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->sessionId:I

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1262
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CanonicalConnectionInfo: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1272
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "peerDiscoveryMac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->peerDiscoveryMac:[B

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 1273
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->peerDiscoveryMac:[B

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 1272
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pmk="

    .line 1273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->pmk:[B

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    const-string v1, "*"

    .line 1273
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    .line 1274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", passphrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$CanonicalConnectionInfo;->passphrase:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_2

    :cond_2
    const-string v1, "*"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
