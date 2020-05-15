.class public Lcom/android/server/wifi/IMSIParameter;
.super Ljava/lang/Object;
.source "IMSIParameter.java"


# static fields
.field private static final MAX_IMSI_LENGTH:I = 0xf

.field private static final MCC_MNC_LENGTH:I = 0x6


# instance fields
.field private final mImsi:Ljava/lang/String;

.field private final mPrefix:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "prefix"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    .line 40
    iput-boolean p2, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    .line 41
    return-void
.end method

.method public static build(Ljava/lang/String;)Lcom/android/server/wifi/IMSIParameter;
    .locals 6
    .param p0, "imsi"    # Ljava/lang/String;

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    return-object v1

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xf

    if-le v0, v2, :cond_1

    .line 55
    return-object v1

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    .local v0, "stopChar":C
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "nonDigit":I
    .local v3, "stopChar":C
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 63
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    .line 64
    goto :goto_1

    .line 61
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_4

    .line 70
    new-instance v1, Lcom/android/server/wifi/IMSIParameter;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/IMSIParameter;-><init>(Ljava/lang/String;Z)V

    return-object v1

    .line 72
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v0, v4, :cond_5

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_5

    .line 74
    new-instance v1, Lcom/android/server/wifi/IMSIParameter;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/android/server/wifi/IMSIParameter;-><init>(Ljava/lang/String;Z)V

    return-object v1

    .line 76
    :cond_5
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 123
    return v0

    .line 125
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/IMSIParameter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 126
    return v2

    .line 129
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/IMSIParameter;

    .line 130
    .local v1, "that":Lcom/android/server/wifi/IMSIParameter;
    iget-boolean v3, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    iget-boolean v4, v1, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 136
    .local v0, "result":I
    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget-boolean v2, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    add-int/2addr v1, v2

    .line 137
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public matchesImsi(Ljava/lang/String;)Z
    .locals 7
    .param p1, "fullIMSI"    # Ljava/lang/String;

    .line 86
    if-nez p1, :cond_0

    .line 87
    const/4 v0, 0x0

    return v0

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-eqz v0, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public matchesMccMnc(Ljava/lang/String;)Z
    .locals 7
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 108
    return v0

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 111
    return v0

    .line 113
    :cond_1
    const/4 v0, 0x6

    .line 114
    .local v0, "checkLength":I
    iget-boolean v1, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 115
    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    iget-boolean v0, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    return-object v0
.end method
