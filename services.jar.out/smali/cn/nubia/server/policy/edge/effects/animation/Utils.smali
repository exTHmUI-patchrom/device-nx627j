.class public Lcn/nubia/server/policy/edge/effects/animation/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLinearValue(FFFFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F
    .param p3, "startResult"    # F
    .param p4, "endResult"    # F

    .line 8
    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    .line 9
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 10
    return p3

    .line 11
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_3

    .line 12
    return p4

    .line 15
    :cond_1
    cmpl-float v0, p0, p1

    if-lez v0, :cond_2

    .line 16
    return p3

    .line 17
    :cond_2
    cmpg-float v0, p0, p2

    if-gez v0, :cond_3

    .line 18
    return p4

    .line 22
    :cond_3
    sub-float/2addr p0, p1

    .line 23
    sub-float v0, p2, p1

    div-float/2addr p0, v0

    .line 24
    sub-float v0, p4, p3

    mul-float/2addr v0, p0

    add-float/2addr v0, p3

    return v0
.end method

.method public static getLinearValueEx(FFFFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F
    .param p3, "startResult"    # F
    .param p4, "endResult"    # F

    .line 29
    sub-float/2addr p0, p1

    .line 30
    sub-float v0, p2, p1

    div-float/2addr p0, v0

    .line 31
    sub-float v0, p4, p3

    mul-float/2addr v0, p0

    add-float/2addr v0, p3

    return v0
.end method

.method public static sort([FIZ)V
    .locals 4
    .param p0, "array"    # [F
    .param p1, "num"    # I
    .param p2, "isBigFirst"    # Z

    .line 38
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 39
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_5

    .line 40
    move v1, v0

    .local v1, "j":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 41
    aget v2, p0, v0

    aget v3, p0, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 42
    aget v2, p0, v0

    .line 43
    .local v2, "tmp":F
    aget v3, p0, v1

    aput v3, p0, v0

    .line 44
    aput v2, p0, v1

    .line 40
    .end local v2    # "tmp":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_2
    nop

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p1, :cond_5

    .line 50
    move v1, v0

    .restart local v1    # "j":I
    :goto_3
    if-ge v1, p1, :cond_4

    .line 51
    aget v2, p0, v0

    aget v3, p0, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 52
    aget v2, p0, v0

    .line 53
    .restart local v2    # "tmp":F
    aget v3, p0, v1

    aput v3, p0, v0

    .line 54
    aput v2, p0, v1

    .line 50
    .end local v2    # "tmp":F
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 49
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 59
    .end local v1    # "j":I
    :cond_5
    return-void
.end method
