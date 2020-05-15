.class public final Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
.super Ljava/lang/Object;
.source "EuiccSpecVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EuiccSpecVer"

.field private static final TAG_ISD_R_APP_TEMPLATE:I = 0xe0

.field private static final TAG_VERSION:I = 0x82


# instance fields
.field private final mVersionValues:[I


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "revision"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 81
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "version"    # [B

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v1, 0x2

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 90
    return-void
.end method

.method public static fromOpenChannelResponse([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    .locals 6
    .param p0, "response"    # [B

    .line 49
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 50
    .local v1, "decoder":Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->hasNextNode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    return-object v0

    .line 53
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "decoder":Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;
    move-object v1, v2

    .line 57
    .local v1, "node":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    nop

    .line 56
    nop

    .line 60
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x82

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_1

    .line 61
    new-array v2, v3, [I

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v2

    .local v2, "versionType":[B
    goto :goto_0

    .line 63
    .end local v2    # "versionType":[B
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v4, v2, v3

    .line 64
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v2

    .line 66
    .restart local v2    # "versionType":[B
    :goto_0
    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 67
    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;-><init>([B)V

    return-object v3

    .line 69
    :cond_2
    const-string v3, "EuiccSpecVer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse select response of ISD-R: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .end local v2    # "versionType":[B
    goto :goto_1

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "EuiccSpecVer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse select response of ISD-R: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0

    .line 54
    .end local v1    # "node":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    :catch_1
    move-exception v1

    .line 55
    .local v1, "e":Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
    const-string v2, "EuiccSpecVer"

    const-string v3, "Cannot parse the select response of ISD-R."

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I
    .locals 4
    .param p1, "that"    # Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMajor()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 107
    return v2

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMajor()I

    move-result v1

    const/4 v3, -0x1

    if-ge v0, v1, :cond_1

    .line 109
    return v3

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMinor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMinor()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 112
    return v2

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMinor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMinor()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 114
    return v3

    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getRevision()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getRevision()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 117
    return v2

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getRevision()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getRevision()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 119
    return v3

    .line 121
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 126
    if-ne p0, p1, :cond_0

    .line 127
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 130
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMajor()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinor()I
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRevision()I
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
