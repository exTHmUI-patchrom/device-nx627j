.class public Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
.super Ljava/lang/Object;
.source "KeyChainProtectionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/recovery/KeyChainProtectionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;-><init>(Landroid/security/keystore/recovery/KeyChainProtectionParams$1;)V

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .locals 2

    .line 220
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$100(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$102(Landroid/security/keystore/recovery/KeyChainProtectionParams;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 223
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$200(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$300(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$400(Landroid/security/keystore/recovery/KeyChainProtectionParams;)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$402(Landroid/security/keystore/recovery/KeyChainProtectionParams;[B)[B

    .line 228
    :cond_1
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    return-object v0
.end method

.method public setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
    .locals 1
    .param p1, "keyDerivationParams"    # Landroid/security/keystore/recovery/KeyDerivationParams;

    .line 195
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$302(Landroid/security/keystore/recovery/KeyChainProtectionParams;Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyDerivationParams;

    .line 196
    return-object p0
.end method

.method public setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
    .locals 2
    .param p1, "lockScreenUiFormat"    # I

    .line 183
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$202(Landroid/security/keystore/recovery/KeyChainProtectionParams;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 184
    return-object p0
.end method

.method public setSecret([B)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
    .locals 1
    .param p1, "secret"    # [B

    .line 206
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$402(Landroid/security/keystore/recovery/KeyChainProtectionParams;[B)[B

    .line 207
    return-object p0
.end method

.method public setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
    .locals 2
    .param p1, "userSecretType"    # I

    .line 169
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$102(Landroid/security/keystore/recovery/KeyChainProtectionParams;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 170
    return-object p0
.end method
