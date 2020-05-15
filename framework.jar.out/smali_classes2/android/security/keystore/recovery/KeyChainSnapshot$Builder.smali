.class public Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
.super Ljava/lang/Object;
.source "KeyChainSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/recovery/KeyChainSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Landroid/security/keystore/recovery/KeyChainSnapshot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/keystore/recovery/KeyChainSnapshot;-><init>(Landroid/security/keystore/recovery/KeyChainSnapshot$1;)V

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 2

    .line 294
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$600(Landroid/security/keystore/recovery/KeyChainSnapshot;)Ljava/util/List;

    move-result-object v0

    const-string v1, "keyChainProtectionParams"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 296
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$700(Landroid/security/keystore/recovery/KeyChainSnapshot;)Ljava/util/List;

    move-result-object v0

    const-string v1, "entryRecoveryData"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 298
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$800(Landroid/security/keystore/recovery/KeyChainSnapshot;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$400(Landroid/security/keystore/recovery/KeyChainSnapshot;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$500(Landroid/security/keystore/recovery/KeyChainSnapshot;)Landroid/security/keystore/recovery/RecoveryCertPath;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    return-object v0
.end method

.method public setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .locals 1
    .param p1, "counterId"    # J

    .line 210
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1, p2}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$302(Landroid/security/keystore/recovery/KeyChainSnapshot;J)J

    .line 211
    return-object p0
.end method

.method public setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .locals 1
    .param p1, "encryptedRecoveryKeyBlob"    # [B

    .line 282
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$802(Landroid/security/keystore/recovery/KeyChainSnapshot;[B)[B

    .line 283
    return-object p0
.end method

.method public setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)",
            "Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;"
        }
    .end annotation

    .line 260
    .local p1, "keyChainProtectionParams":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$602(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/util/List;)Ljava/util/List;

    .line 261
    return-object p0
.end method

.method public setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .locals 1
    .param p1, "maxAttempts"    # I

    .line 199
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$202(Landroid/security/keystore/recovery/KeyChainSnapshot;I)I

    .line 200
    return-object p0
.end method

.method public setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .locals 1
    .param p1, "serverParams"    # [B

    .line 221
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$402(Landroid/security/keystore/recovery/KeyChainSnapshot;[B)[B

    .line 222
    return-object p0
.end method

.method public setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .locals 1
    .param p1, "snapshotVersion"    # I

    .line 188
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$102(Landroid/security/keystore/recovery/KeyChainSnapshot;I)I

    .line 189
    return-object p0
.end method

.method public setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .locals 2
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {p1}, Landroid/security/keystore/recovery/RecoveryCertPath;->createRecoveryCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/RecoveryCertPath;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$502(Landroid/security/keystore/recovery/KeyChainSnapshot;Landroid/security/keystore/recovery/RecoveryCertPath;)Landroid/security/keystore/recovery/RecoveryCertPath;

    .line 249
    return-object p0
.end method

.method public setTrustedHardwarePublicKey([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .locals 1
    .param p1, "publicKey"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;"
        }
    .end annotation

    .line 271
    .local p1, "entryRecoveryData":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$702(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/util/List;)Ljava/util/List;

    .line 272
    return-object p0
.end method
