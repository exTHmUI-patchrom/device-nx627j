.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;
.super Ljava/lang/Object;
.source "PointFlip.java"


# static fields
.field public static final NUM:I = 0x6

.field public static final SIDE_B:I = 0x2

.field public static final SIDE_L:I = 0x3

.field public static final SIDE_R:I = 0x1

.field public static final SIDE_T:I = 0x0

.field public static final STATE_FLIP:I = -0x1

.field public static final STATE_FLIP_LINE:I = 0x0

.field public static final STATE_STATIC:I = 0x1


# instance fields
.field private final CORNER_LB:I

.field private final CORNER_LT:I

.field private final CORNER_RB:I

.field private final CORNER_RT:I

.field private mIsAllFlip:Z

.field private final mState:[I

.field public final mTexCoor:[Landroid/graphics/PointF;

.field public final mVertex:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->CORNER_LT:I

    .line 21
    const/4 v1, 0x1

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->CORNER_RT:I

    .line 23
    const/4 v1, 0x2

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->CORNER_RB:I

    .line 25
    const/4 v1, 0x3

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->CORNER_LB:I

    .line 37
    const/4 v1, 0x6

    new-array v2, v1, [I

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    .line 38
    new-array v2, v1, [Landroid/graphics/PointF;

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    .line 40
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 41
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v2, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    new-array v2, v1, [Landroid/graphics/PointF;

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    .line 46
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 47
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v2, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    :cond_1
    return-void
.end method

.method private set(Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 139
    .local v0, "width":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 141
    .local v1, "height":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 142
    packed-switch v2, :pswitch_data_0

    .line 164
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 165
    .local v3, "x":F
    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    goto :goto_1

    .line 159
    .end local v3    # "x":F
    :pswitch_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 160
    .restart local v3    # "x":F
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    .line 161
    .local v4, "y":F
    goto :goto_1

    .line 154
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_1
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    .line 155
    .restart local v3    # "x":F
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    .line 156
    .restart local v4    # "y":F
    goto :goto_1

    .line 149
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    .line 150
    .restart local v3    # "x":F
    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 151
    .restart local v4    # "y":F
    goto :goto_1

    .line 144
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_3
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 145
    .restart local v3    # "x":F
    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 146
    .restart local v4    # "y":F
    nop

    .line 165
    :goto_1
    nop

    .line 169
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aput p2, v5, v2

    .line 170
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v5, v5, v2

    iput v3, v5, Landroid/graphics/PointF;->x:F

    .line 171
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v5, v5, v2

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 172
    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    div-float/2addr v5, v0

    .line 173
    .end local v3    # "x":F
    .local v5, "x":F
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, v4, v3

    div-float/2addr v3, v1

    .line 174
    .end local v4    # "y":F
    .local v3, "y":F
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget-object v4, v4, v2

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 175
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget-object v4, v4, v2

    iput v3, v4, Landroid/graphics/PointF;->y:F

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v3    # "y":F
    .end local v5    # "x":F
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getIndex(I[I)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "index"    # [I

    .line 190
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mIsAllFlip:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 191
    aput v1, p2, v1

    .line 192
    aput v2, p2, v2

    .line 193
    const/4 v0, 0x2

    aput v0, p2, v0

    .line 194
    const/4 v0, 0x3

    aput v0, p2, v0

    .line 195
    const/4 v0, 0x4

    return v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 199
    .local v0, "j":I
    const/4 v3, 0x0

    .line 201
    .local v3, "counter":I
    if-nez p1, :cond_1

    .line 202
    return v1

    .line 205
    :cond_1
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aget v4, v4, v1

    if-ne p1, v4, :cond_2

    .line 206
    const/4 v2, 0x2

    .local v2, "counterEx":I
    goto :goto_0

    .line 208
    .end local v2    # "counterEx":I
    :cond_2
    nop

    .line 211
    .restart local v2    # "counterEx":I
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    const/16 v4, 0xc

    if-ge v1, v4, :cond_5

    .line 212
    rem-int/lit8 v4, v1, 0x6

    .line 214
    .local v4, "n":I
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aget v5, v5, v4

    if-nez v5, :cond_3

    .line 215
    add-int/lit8 v3, v3, 0x1

    .line 217
    if-le v3, v2, :cond_4

    .line 218
    goto :goto_2

    .line 224
    :cond_3
    if-ne v3, v2, :cond_4

    .line 225
    aput v4, p2, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    .line 211
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 230
    .end local v4    # "n":I
    :cond_5
    :goto_2
    return v0
.end method

.method public getRegionIndex(I[I)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "index"    # [I

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "j":I
    const/4 v1, 0x0

    .line 242
    .local v1, "counter":I
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 243
    return v2

    .line 246
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_1

    .line 247
    const/4 v3, 0x2

    .local v3, "counterEx":I
    goto :goto_0

    .line 249
    .end local v3    # "counterEx":I
    :cond_1
    const/4 v3, 0x1

    .line 252
    .restart local v3    # "counterEx":I
    :goto_0
    nop

    .local v2, "i":I
    :goto_1
    const/16 v4, 0xc

    if-ge v2, v4, :cond_5

    .line 253
    rem-int/lit8 v4, v2, 0x6

    .line 255
    .local v4, "n":I
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aget v5, v5, v4

    if-nez v5, :cond_2

    .line 256
    add-int/lit8 v1, v1, 0x1

    .line 259
    :cond_2
    if-lt v1, v3, :cond_3

    .line 260
    aput v4, p2, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    .line 264
    :cond_3
    if-le v1, v3, :cond_4

    .line 265
    goto :goto_2

    .line 252
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    .end local v4    # "n":I
    :cond_5
    :goto_2
    return v0
.end method

.method public set(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;[I)V
    .locals 11
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p3, "basePoint"    # Landroid/graphics/PointF;
    .param p4, "side"    # [I

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mIsAllFlip:Z

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "j":I
    const/4 v2, 0x0

    .line 60
    .local v2, "k":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 61
    .local v3, "width":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 63
    .local v4, "height":F
    move v5, v2

    move v2, v1

    move v1, v0

    .local v1, "i":I
    .local v2, "j":I
    .local v5, "k":I
    :goto_0
    const/4 v6, 0x3

    const/4 v7, 0x1

    if-gt v1, v6, :cond_2

    .line 64
    packed-switch v1, :pswitch_data_0

    .line 86
    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    .line 87
    .local v6, "x":F
    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    goto :goto_1

    .line 81
    .end local v6    # "x":F
    :pswitch_0
    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    .line 82
    .restart local v6    # "x":F
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    .line 83
    .local v8, "y":F
    goto :goto_1

    .line 76
    .end local v6    # "x":F
    .end local v8    # "y":F
    :pswitch_1
    iget v6, p1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    .line 77
    .restart local v6    # "x":F
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    .line 78
    .restart local v8    # "y":F
    goto :goto_1

    .line 71
    .end local v6    # "x":F
    .end local v8    # "y":F
    :pswitch_2
    iget v6, p1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    .line 72
    .restart local v6    # "x":F
    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 73
    .restart local v8    # "y":F
    goto :goto_1

    .line 66
    .end local v6    # "x":F
    .end local v8    # "y":F
    :pswitch_3
    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    .line 67
    .restart local v6    # "x":F
    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 68
    .restart local v8    # "y":F
    nop

    .line 87
    :goto_1
    nop

    .line 91
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aput v7, v9, v2

    .line 92
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v9, v9, v2

    iput v6, v9, Landroid/graphics/PointF;->x:F

    .line 93
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v9, v9, v2

    iput v8, v9, Landroid/graphics/PointF;->y:F

    .line 94
    iget v9, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v9, v6, v9

    div-float/2addr v9, v3

    .line 95
    .end local v6    # "x":F
    .local v9, "x":F
    iget v6, p1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, v8, v6

    div-float/2addr v6, v4

    .line 96
    .end local v8    # "y":F
    .local v6, "y":F
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget-object v8, v8, v2

    iput v9, v8, Landroid/graphics/PointF;->x:F

    .line 97
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget-object v8, v8, v2

    iput v6, v8, Landroid/graphics/PointF;->y:F

    .line 98
    add-int/lit8 v2, v2, 0x1

    .line 100
    aget v8, p4, v0

    aget v7, p4, v7

    const/4 v10, 0x2

    if-ge v8, v7, :cond_0

    .line 101
    move v7, v5

    .local v7, "n":I
    goto :goto_2

    .line 103
    .end local v7    # "n":I
    :cond_0
    add-int/lit8 v7, v5, 0x1

    rem-int/2addr v7, v10

    .line 106
    .restart local v7    # "n":I
    :goto_2
    if-ge v5, v10, :cond_1

    aget v8, p4, v7

    if-ne v1, v8, :cond_1

    .line 107
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aput v0, v8, v2

    .line 108
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v8, v8, v2

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v10, v10, v7

    iput v10, v8, Landroid/graphics/PointF;->x:F

    .line 109
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v8, v8, v2

    iget-object v10, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v10, v10, v7

    iput v10, v8, Landroid/graphics/PointF;->y:F

    .line 110
    iget-object v8, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v8, v8, v7

    iget v10, p1, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v8, v10

    div-float v9, v8, v3

    .line 111
    iget-object v8, p2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v8, v8, v7

    iget v10, p1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v8, v10

    div-float v6, v8, v4

    .line 112
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget-object v8, v8, v2

    iput v9, v8, Landroid/graphics/PointF;->x:F

    .line 113
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget-object v8, v8, v2

    iput v6, v8, Landroid/graphics/PointF;->y:F

    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    add-int/lit8 v5, v5, 0x1

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 119
    .end local v6    # "y":F
    .end local v7    # "n":I
    .end local v9    # "x":F
    :cond_2
    iget v6, p3, Landroid/graphics/PointF;->x:F

    iget v8, p3, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v9, v9, v0

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v10, v10, v0

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v6, v8, v9, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->isSameSide(FFFF)Z

    move-result v6

    .line 121
    .local v6, "isSameSide":Z
    const/4 v1, 0x0

    :goto_3
    const/4 v8, 0x6

    if-ge v1, v8, :cond_6

    .line 122
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aget v8, v8, v1

    if-nez v8, :cond_4

    .line 123
    if-nez v6, :cond_3

    move v8, v7

    goto :goto_4

    :cond_3
    move v8, v0

    :goto_4
    move v6, v8

    .line 124
    goto :goto_5

    .line 127
    :cond_4
    if-eqz v6, :cond_5

    .line 128
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    const/4 v9, -0x1

    aput v9, v8, v1

    .line 121
    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 131
    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAllFlip(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mIsAllFlip:Z

    .line 181
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->set(Landroid/graphics/Rect;I)V

    .line 182
    return-void
.end method
