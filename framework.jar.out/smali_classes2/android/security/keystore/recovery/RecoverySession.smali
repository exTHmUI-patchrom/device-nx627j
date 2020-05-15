.class public Landroid/security/keystore/recovery/RecoverySession;
.super Ljava/lang/Object;
.source "RecoverySession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final SESSION_ID_LENGTH_BYTES:I = 0x10

.field private static final TAG:Ljava/lang/String; = "RecoverySession"


# instance fields
.field private final mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

.field private final mSessionId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/security/keystore/recovery/RecoveryController;Ljava/lang/String;)V
    .locals 0
    .param p1, "recoveryController"    # Landroid/security/keystore/recovery/RecoveryController;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    .line 55
    iput-object p2, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private getKeysFromGrants(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 215
    .local p1, "grantAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 216
    .local v0, "keysByAlias":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/Key;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    .local v2, "alias":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 220
    .local v3, "grantAlias":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v4, v3}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .local v4, "key":Ljava/security/Key;
    nop

    .line 223
    nop

    .line 229
    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "grantAlias":Ljava/lang/String;
    .end local v4    # "key":Ljava/security/Key;
    goto :goto_0

    .line 221
    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v3    # "grantAlias":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v4, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    .line 223
    const-string v7, "Failed to get key \'%s\' from grant \'%s\'"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 231
    .end local v1    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "grantAlias":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method static newInstance(Landroid/security/keystore/recovery/RecoveryController;)Landroid/security/keystore/recovery/RecoverySession;
    .locals 2
    .param p0, "recoveryController"    # Landroid/security/keystore/recovery/RecoveryController;

    .line 63
    new-instance v0, Landroid/security/keystore/recovery/RecoverySession;

    invoke-static {}, Landroid/security/keystore/recovery/RecoverySession;->newSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/keystore/recovery/RecoverySession;-><init>(Landroid/security/keystore/recovery/RecoveryController;Ljava/lang/String;)V

    return-object v0
.end method

.method private static newSessionId()Ljava/lang/String;
    .locals 8

    .line 70
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 71
    .local v0, "secureRandom":Ljava/security/SecureRandom;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 72
    .local v1, "sessionId":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-byte v6, v1, v5

    .line 75
    .local v6, "b":B
    invoke-static {v6, v4}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 250
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v0}, Landroid/security/keystore/recovery/RecoveryController;->getBinder()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->closeSession(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RecoverySession"

    const-string v2, "Unexpected error trying to close session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method getSessionId()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public recoverKeyChainSnapshot([BLjava/util/List;)Ljava/util/Map;
    .locals 3
    .param p1, "recoveryKeyBlob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/SessionExpiredException;,
            Landroid/security/keystore/recovery/DecryptionFailedException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 195
    .local p2, "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    .line 196
    invoke-virtual {v0}, Landroid/security/keystore/recovery/RecoveryController;->getBinder()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    .line 197
    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 198
    .local v0, "grantAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Landroid/security/keystore/recovery/RecoverySession;->getKeysFromGrants(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 201
    .end local v0    # "grantAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_1

    .line 205
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    .line 206
    new-instance v1, Landroid/security/keystore/recovery/SessionExpiredException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/SessionExpiredException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v1, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 203
    :cond_1
    new-instance v1, Landroid/security/keystore/recovery/DecryptionFailedException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/DecryptionFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public recoverKeys([BLjava/util/List;)Ljava/util/Map;
    .locals 1
    .param p1, "recoveryKeyBlob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/SessionExpiredException;,
            Landroid/security/keystore/recovery/DecryptionFailedException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    .local p2, "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public start(Ljava/lang/String;Ljava/security/cert/CertPath;[B[BLjava/util/List;)[B
    .locals 7
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;
    .param p2, "verifierCertPath"    # Ljava/security/cert/CertPath;
    .param p3, "vaultParams"    # [B
    .param p4, "vaultChallenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/cert/CertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 141
    .local p5, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    nop

    .line 142
    invoke-static {p2}, Landroid/security/keystore/recovery/RecoveryCertPath;->createRecoveryCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/RecoveryCertPath;

    move-result-object v3

    .line 144
    .local v3, "recoveryCertPath":Landroid/security/keystore/recovery/RecoveryCertPath;
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    .line 145
    invoke-virtual {v0}, Landroid/security/keystore/recovery/RecoveryController;->getBinder()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/widget/ILockSettings;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .local v0, "recoveryClaim":[B
    return-object v0

    .line 155
    .end local v0    # "recoveryClaim":[B
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v1, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 158
    :cond_1
    :goto_0
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Invalid certificate for recovery session"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 153
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public start(Ljava/security/cert/CertPath;[B[BLjava/util/List;)[B
    .locals 1
    .param p1, "verifierCertPath"    # Ljava/security/cert/CertPath;
    .param p2, "vaultParams"    # [B
    .param p3, "vaultChallenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    .local p4, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public start([B[B[BLjava/util/List;)[B
    .locals 1
    .param p1, "verifierPublicKey"    # [B
    .param p2, "vaultParams"    # [B
    .param p3, "vaultChallenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    .local p4, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
