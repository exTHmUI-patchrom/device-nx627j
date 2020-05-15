.class Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;
.super Ljava/lang/Object;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdditionalAuthenticationDataStream"
.end annotation


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mOperationToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mKeyStore:Landroid/security/KeyStore;

    .line 410
    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    .line 411
    return-void
.end method

.method synthetic constructor <init>(Landroid/security/KeyStore;Landroid/os/IBinder;Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/security/KeyStore;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$1;

    .line 403
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public finish([B[B)Landroid/security/keymaster/OperationResult;
    .locals 10
    .param p1, "signature"    # [B
    .param p2, "additionalEntropy"    # [B

    .line 436
    if-eqz p2, :cond_1

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "AAD stream does not support additional entropy"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    :goto_0
    new-instance v0, Landroid/security/keymaster/OperationResult;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    sget-object v8, Llibcore/util/EmptyArray;->BYTE:[B

    new-instance v9, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v9}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/security/keymaster/OperationResult;-><init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V

    return-object v0
.end method

.method public update([B)Landroid/security/keymaster/OperationResult;
    .locals 12
    .param p1, "input"    # [B

    .line 415
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 416
    .local v0, "keymasterArgs":Landroid/security/keymaster/KeymasterArguments;
    const v1, -0x6ffffc18

    invoke-virtual {v0, v1, p1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 421
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mKeyStore:Landroid/security/KeyStore;

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/security/KeyStore;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v1

    .line 422
    .local v1, "result":Landroid/security/keymaster/OperationResult;
    iget v2, v1, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 423
    new-instance v2, Landroid/security/keymaster/OperationResult;

    iget v5, v1, Landroid/security/keymaster/OperationResult;->resultCode:I

    iget-object v6, v1, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iget-wide v7, v1, Landroid/security/keymaster/OperationResult;->operationHandle:J

    array-length v9, p1

    iget-object v10, v1, Landroid/security/keymaster/OperationResult;->output:[B

    iget-object v11, v1, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Landroid/security/keymaster/OperationResult;-><init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V

    move-object v1, v2

    .line 431
    :cond_0
    return-object v1
.end method
