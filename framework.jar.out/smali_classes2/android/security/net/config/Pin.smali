.class public final Landroid/security/net/config/Pin;
.super Ljava/lang/Object;
.source "Pin.java"


# instance fields
.field public final digest:[B

.field public final digestAlgorithm:Ljava/lang/String;

.field private final mHashCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "digestAlgorithm"    # Ljava/lang/String;
    .param p2, "digest"    # [B

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Landroid/security/net/config/Pin;->digest:[B

    .line 31
    invoke-static {p2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Landroid/security/net/config/Pin;->mHashCode:I

    .line 32
    return-void
.end method

.method public static getDigestLength(Ljava/lang/String;)I
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 47
    const-string v0, "SHA-256"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/16 v0, 0x20

    return v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSupportedDigestAlgorithm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 40
    const-string v0, "SHA-256"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 60
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 61
    return v0

    .line 63
    :cond_0
    instance-of v1, p1, Landroid/security/net/config/Pin;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 64
    return v2

    .line 66
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/security/net/config/Pin;

    .line 67
    .local v1, "other":Landroid/security/net/config/Pin;
    invoke-virtual {v1}, Landroid/security/net/config/Pin;->hashCode()I

    move-result v3

    iget v4, p0, Landroid/security/net/config/Pin;->mHashCode:I

    if-eq v3, v4, :cond_2

    .line 68
    return v2

    .line 70
    :cond_2
    iget-object v3, p0, Landroid/security/net/config/Pin;->digest:[B

    iget-object v4, v1, Landroid/security/net/config/Pin;->digest:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 71
    return v2

    .line 73
    :cond_3
    iget-object v3, p0, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    iget-object v4, v1, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 74
    return v2

    .line 76
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 55
    iget v0, p0, Landroid/security/net/config/Pin;->mHashCode:I

    return v0
.end method
