.class public final Landroid/security/AttestedKeyPair;
.super Ljava/lang/Object;
.source "AttestedKeyPair.java"


# instance fields
.field private final mAttestationRecord:[Ljava/security/cert/Certificate;

.field private final mKeyPair:Ljava/security/KeyPair;


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;[Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "keyPair"    # Ljava/security/KeyPair;
    .param p2, "attestationRecord"    # [Ljava/security/cert/Certificate;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/security/AttestedKeyPair;->mKeyPair:Ljava/security/KeyPair;

    .line 43
    iput-object p2, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:[Ljava/security/cert/Certificate;

    .line 44
    return-void
.end method


# virtual methods
.method public getAttestationRecord()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:[Ljava/security/cert/Certificate;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:[Ljava/security/cert/Certificate;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPair()Ljava/security/KeyPair;
    .locals 1

    .line 51
    iget-object v0, p0, Landroid/security/AttestedKeyPair;->mKeyPair:Ljava/security/KeyPair;

    return-object v0
.end method
