.class public final Landroid/hardware/camera2/utils/HashCodeHelpers;
.super Ljava/lang/Object;
.source "HashCodeHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs hashCode([F)I
    .locals 6
    .param p0, "array"    # [F

    .line 64
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 65
    return v0

    .line 68
    :cond_0
    const/4 v1, 0x1

    .line 69
    .local v1, "h":I
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p0, v0

    .line 70
    .local v3, "f":F
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 71
    .local v4, "x":I
    shl-int/lit8 v5, v1, 0x5

    sub-int/2addr v5, v1

    xor-int v1, v5, v4

    .line 69
    .end local v3    # "f":F
    .end local v4    # "x":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    return v1
.end method

.method public static varargs hashCode([I)I
    .locals 5
    .param p0, "array"    # [I

    .line 34
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 35
    return v0

    .line 45
    :cond_0
    const/4 v1, 0x1

    .line 46
    .local v1, "h":I
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p0, v0

    .line 48
    .local v3, "x":I
    shl-int/lit8 v4, v1, 0x5

    sub-int/2addr v4, v1

    xor-int v1, v4, v3

    .line 46
    .end local v3    # "x":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    return v1
.end method

.method public static varargs hashCodeGeneric([Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .line 87
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 88
    return v0

    .line 91
    :cond_0
    const/4 v1, 0x1

    .line 92
    .local v1, "h":I
    array-length v2, p0

    move v3, v1

    move v1, v0

    .end local v1    # "h":I
    .local v3, "h":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, p0, v1

    .line 93
    .local v4, "o":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 94
    .local v5, "x":I
    :goto_1
    shl-int/lit8 v6, v3, 0x5

    sub-int/2addr v6, v3

    xor-int v3, v6, v5

    .line 92
    .end local v4    # "o":Ljava/lang/Object;, "TT;"
    .end local v5    # "x":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_2
    return v3
.end method
