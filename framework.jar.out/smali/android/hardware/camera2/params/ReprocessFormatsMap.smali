.class public final Landroid/hardware/camera2/params/ReprocessFormatsMap;
.super Ljava/lang/Object;
.source "ReprocessFormatsMap.java"


# instance fields
.field private final mEntry:[I

.field private final mInputCount:I


# direct methods
.method public constructor <init>([I)V
    .locals 10
    .param p1, "entry"    # [I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "entry must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "numInputs":I
    array-length v1, p1

    .line 78
    .local v1, "left":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "numInputs":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_4

    .line 79
    aget v4, p1, v0

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v4

    .line 81
    .local v4, "inputFormat":I
    add-int/lit8 v1, v1, -0x1

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 84
    const/4 v5, 0x1

    if-lt v1, v5, :cond_3

    .line 89
    aget v6, p1, v0

    .line 90
    .local v6, "length":I
    add-int/lit8 v1, v1, -0x1

    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 93
    move v7, v2

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 94
    add-int v8, v0, v7

    aget v8, p1, v8

    .line 95
    .local v8, "outputFormat":I
    invoke-static {v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    .line 93
    .end local v8    # "outputFormat":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 98
    .end local v7    # "j":I
    :cond_0
    if-lez v6, :cond_2

    .line 99
    if-lt v1, v6, :cond_1

    .line 106
    add-int/2addr v0, v6

    .line 107
    sub-int/2addr v1, v6

    goto :goto_2

    .line 100
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 103
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v5

    const/4 v2, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    .line 101
    const-string v2, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 110
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 111
    .end local v4    # "inputFormat":I
    .end local v6    # "length":I
    goto :goto_0

    .line 85
    .restart local v4    # "inputFormat":I
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-array v5, v5, [Ljava/lang/Object;

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    const-string v2, "Input %x had no output format length listed"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 113
    .end local v0    # "i":I
    .end local v4    # "inputFormat":I
    :cond_4
    iput-object p1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    .line 114
    iput v3, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    .line 115
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 236
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 237
    return v0

    .line 239
    :cond_0
    if-ne p0, p1, :cond_1

    .line 240
    const/4 v0, 0x1

    return v0

    .line 242
    :cond_1
    instance-of v1, p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    if-eqz v1, :cond_2

    .line 243
    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 245
    .local v0, "other":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    iget-object v1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    iget-object v2, v0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1

    .line 247
    .end local v0    # "other":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    :cond_2
    return v0
.end method

.method public getInputs()[I
    .locals 11

    .line 130
    iget v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    new-array v0, v0, [I

    .line 132
    .local v0, "inputs":[I
    iget-object v1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v1, v1

    .line 133
    .local v1, "left":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "j":I
    .local v4, "left":I
    :goto_0
    iget-object v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 134
    iget-object v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v5, v5, v2

    .line 136
    .local v5, "format":I
    add-int/lit8 v4, v4, -0x1

    .line 137
    add-int/lit8 v2, v2, 0x1

    .line 139
    const/4 v6, 0x1

    if-lt v4, v6, :cond_2

    .line 144
    iget-object v7, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v7, v7, v2

    .line 145
    .local v7, "length":I
    add-int/lit8 v4, v4, -0x1

    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 148
    if-lez v7, :cond_1

    .line 149
    if-lt v4, v7, :cond_0

    .line 156
    add-int/2addr v2, v7

    .line 157
    sub-int/2addr v4, v7

    goto :goto_1

    .line 150
    :cond_0
    new-instance v8, Ljava/lang/AssertionError;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v6

    const/4 v3, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v3

    .line 151
    const-string v3, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 160
    :cond_1
    :goto_1
    aput v5, v0, v1

    .line 133
    .end local v5    # "format":I
    .end local v7    # "length":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .restart local v5    # "format":I
    :cond_2
    new-instance v7, Ljava/lang/AssertionError;

    new-array v6, v6, [Ljava/lang/Object;

    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    const-string v3, "Input %x had no output format length listed"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 163
    .end local v1    # "j":I
    .end local v2    # "i":I
    .end local v5    # "format":I
    :cond_3
    invoke-static {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object v1

    return-object v1
.end method

.method public getOutputs(I)[I
    .locals 9
    .param p1, "format"    # I

    .line 180
    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v0, v0

    .line 181
    .local v0, "left":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "left":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_5

    .line 182
    iget-object v3, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v3, v3, v0

    .line 184
    .local v3, "inputFormat":I
    add-int/lit8 v2, v2, -0x1

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 187
    if-lt v2, v4, :cond_4

    .line 192
    iget-object v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v5, v5, v0

    .line 193
    .local v5, "length":I
    add-int/lit8 v2, v2, -0x1

    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 196
    if-lez v5, :cond_1

    .line 197
    if-lt v2, v5, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    new-instance v6, Ljava/lang/AssertionError;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v1

    .line 199
    const-string v1, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 205
    :cond_1
    :goto_1
    if-ne v3, p1, :cond_3

    .line 206
    new-array v4, v5, [I

    .line 209
    .local v4, "outputs":[I
    nop

    .local v1, "k":I
    :goto_2
    if-ge v1, v5, :cond_2

    .line 210
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    add-int v7, v0, v1

    aget v6, v6, v7

    aput v6, v4, v1

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 213
    .end local v1    # "k":I
    :cond_2
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object v1

    return-object v1

    .line 216
    .end local v4    # "outputs":[I
    :cond_3
    add-int/2addr v0, v5

    .line 217
    sub-int/2addr v2, v5

    .line 219
    .end local v3    # "inputFormat":I
    .end local v5    # "length":I
    goto :goto_0

    .line 188
    .restart local v3    # "inputFormat":I
    :cond_4
    new-instance v5, Ljava/lang/AssertionError;

    new-array v4, v4, [Ljava/lang/Object;

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    const-string v1, "Input %x had no output format length listed"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 221
    .end local v0    # "i":I
    .end local v3    # "inputFormat":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v3, v4, [Ljava/lang/Object;

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Input format %x was not one in #getInputs"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 256
    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
