.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
.super Ljava/lang/Object;
.source "Triangle.java"


# instance fields
.field public mIsValid:Z

.field private final mTextureCoor:[F

.field private final mVertex:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    .line 13
    return-void
.end method


# virtual methods
.method public IsValid()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mIsValid:Z

    return v0
.end method

.method public getTextureCoor()[F
    .locals 1

    .line 35
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    return-object v0
.end method

.method public getVertex()[F
    .locals 1

    .line 16
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    return-object v0
.end method

.method public setIsValid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .line 87
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mIsValid:Z

    .line 88
    return-void
.end method

.method public setTextureCoor(FFFFFFI)V
    .locals 10
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F
    .param p7, "rotation"    # I

    move-object v0, p0

    .line 43
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    packed-switch p7, :pswitch_data_0

    goto/16 :goto_0

    .line 72
    :pswitch_0
    iget-object v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p2, v8, v6

    .line 73
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v8, v7, p1

    aput v8, v6, v5

    .line 74
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p4, v5, v4

    .line 75
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v5, v7, p3

    aput v5, v4, v3

    .line 76
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p6, v3, v2

    .line 77
    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float/2addr v7, p5

    aput v7, v2, v1

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v9, v7, p1

    aput v9, v8, v6

    .line 64
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v8, v7, p2

    aput v8, v6, v5

    .line 65
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v6, v7, p3

    aput v6, v5, v4

    .line 66
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v5, v7, p4

    aput v5, v4, v3

    .line 67
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v4, v7, p5

    aput v4, v3, v2

    .line 68
    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v7, v7, p6

    aput v7, v2, v1

    .line 69
    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v9, v7, p2

    aput v9, v8, v6

    .line 55
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p1, v6, v5

    .line 56
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v6, v7, p4

    aput v6, v5, v4

    .line 57
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p3, v4, v3

    .line 58
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    sub-float v7, v7, p6

    aput v7, v3, v2

    .line 59
    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p5, v2, v1

    .line 60
    goto :goto_0

    .line 45
    :pswitch_3
    iget-object v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p1, v7, v6

    .line 46
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p2, v6, v5

    .line 47
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p3, v5, v4

    .line 48
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p4, v4, v3

    .line 49
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p5, v3, v2

    .line 50
    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mTextureCoor:[F

    aput p6, v2, v1

    .line 51
    nop

    .line 80
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVertex(FFFFFFFFF)V
    .locals 2
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "z0"    # F
    .param p4, "x1"    # F
    .param p5, "y1"    # F
    .param p6, "z1"    # F
    .param p7, "x2"    # F
    .param p8, "y2"    # F
    .param p9, "z2"    # F

    .line 23
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 24
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 25
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 26
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 27
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x4

    aput p5, v0, v1

    .line 28
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x5

    aput p6, v0, v1

    .line 29
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x6

    aput p7, v0, v1

    .line 30
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/4 v1, 0x7

    aput p8, v0, v1

    .line 31
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mVertex:[F

    const/16 v1, 0x8

    aput p9, v0, v1

    .line 32
    return-void
.end method
