.class public Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;
.super Landroid/widget/ImageView;
.source "ClipImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView$Callback;
    }
.end annotation


# static fields
.field public static final CUST_PERCENT_END:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUST_PERCENT_START:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ClipImageView"


# instance fields
.field private m_callback:Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView$Callback;

.field m_clip:Landroid/graphics/Path;

.field private m_degreeEnd:D

.field private m_degreeStart:D

.field private m_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 239
    new-instance v0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView$1;

    const-string v1, "cust_percent_start"

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->CUST_PERCENT_START:Landroid/util/Property;

    .line 250
    new-instance v0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView$2;

    const-string v1, "cust_percent_end"

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->CUST_PERCENT_END:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const-wide v0, 0x4066800000000000L    # 180.0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeStart:D

    .line 43
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeEnd:D

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_index:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const-wide v0, 0x4066800000000000L    # 180.0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeStart:D

    .line 43
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeEnd:D

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_index:I

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;D)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;
    .param p1, "x1"    # D

    .line 26
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->setDegreeStart(D)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;D)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;
    .param p1, "x1"    # D

    .line 26
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->setDegreeEnd(D)V

    return-void
.end method

.method private clearPath()V
    .locals 1

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_clip:Landroid/graphics/Path;

    .line 202
    return-void
.end method

.method private getEdgePointForAcuteDegree(II)[I
    .locals 9
    .param p1, "degreeStart"    # I
    .param p2, "degreeEnd"    # I

    .line 153
    const/16 v0, 0x10e

    const/4 v1, -0x1

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    if-ltz p1, :cond_0

    if-gt p1, v3, :cond_0

    .line 154
    const/4 v4, 0x1

    .line 155
    .local v4, "point1_X":I
    const/4 v5, 0x1

    .local v5, "point1_Y":I
    :goto_0
    goto :goto_1

    .line 156
    .end local v4    # "point1_X":I
    .end local v5    # "point1_Y":I
    :cond_0
    if-le p1, v3, :cond_1

    if-gt p1, v2, :cond_1

    .line 157
    const/4 v4, -0x1

    .line 158
    .restart local v4    # "point1_X":I
    const/4 v5, 0x1

    goto :goto_0

    .line 159
    .end local v4    # "point1_X":I
    :cond_1
    if-le p1, v2, :cond_2

    if-gt p1, v0, :cond_2

    .line 160
    const/4 v4, -0x1

    .line 161
    .restart local v4    # "point1_X":I
    const/4 v5, -0x1

    goto :goto_0

    .line 163
    .end local v4    # "point1_X":I
    :cond_2
    const/4 v4, 0x1

    .line 164
    .restart local v4    # "point1_X":I
    move v5, v1

    .line 166
    .restart local v5    # "point1_Y":I
    :goto_1
    if-ltz p2, :cond_3

    if-gt p2, v3, :cond_3

    .line 167
    const/4 v0, 0x1

    .line 168
    .local v0, "point2_X":I
    const/4 v1, 0x1

    .line 169
    .local v1, "point2_Y":I
    const/4 v2, 0x1

    .line 170
    .local v2, "point3_X":I
    const/4 v3, 0x1

    .local v3, "point3_Y":I
    :goto_2
    goto :goto_5

    .line 171
    .end local v0    # "point2_X":I
    .end local v1    # "point2_Y":I
    .end local v2    # "point3_X":I
    .end local v3    # "point3_Y":I
    :cond_3
    if-le p2, v3, :cond_4

    if-gt p2, v2, :cond_4

    .line 172
    const/4 v0, -0x1

    .line 173
    .restart local v0    # "point2_X":I
    const/4 v1, 0x1

    .line 174
    .restart local v1    # "point2_Y":I
    const/4 v2, -0x1

    .line 175
    .restart local v2    # "point3_X":I
    const/4 v3, 0x1

    goto :goto_2

    .line 176
    .end local v0    # "point2_X":I
    .end local v1    # "point2_Y":I
    .end local v2    # "point3_X":I
    :cond_4
    if-le p2, v2, :cond_6

    if-gt p2, v0, :cond_6

    .line 177
    if-ltz p1, :cond_5

    if-gt p1, v3, :cond_5

    .line 178
    const/4 v0, -0x1

    .line 179
    .restart local v0    # "point2_X":I
    const/4 v1, 0x1

    .restart local v1    # "point2_Y":I
    goto :goto_3

    .line 181
    .end local v0    # "point2_X":I
    .end local v1    # "point2_Y":I
    :cond_5
    const/4 v0, -0x1

    .line 182
    .restart local v0    # "point2_X":I
    nop

    .line 184
    .restart local v1    # "point2_Y":I
    :goto_3
    const/4 v2, -0x1

    .line 185
    .restart local v2    # "point3_X":I
    const/4 v3, -0x1

    goto :goto_2

    .line 187
    .end local v0    # "point2_X":I
    .end local v1    # "point2_Y":I
    .end local v2    # "point3_X":I
    :cond_6
    if-lt p1, v3, :cond_7

    if-gt p1, v2, :cond_7

    .line 188
    const/4 v0, -0x1

    .line 189
    .restart local v0    # "point2_X":I
    const/4 v2, -0x1

    .local v2, "point2_Y":I
    goto :goto_4

    .line 191
    .end local v0    # "point2_X":I
    .end local v2    # "point2_Y":I
    :cond_7
    const/4 v0, 0x1

    .line 192
    .restart local v0    # "point2_X":I
    move v2, v1

    .line 194
    .restart local v2    # "point2_Y":I
    :goto_4
    const/4 v3, 0x1

    .line 195
    .local v3, "point3_X":I
    move v8, v3

    move v3, v1

    move v1, v2

    move v2, v8

    .line 197
    .restart local v1    # "point2_Y":I
    .local v2, "point3_X":I
    .local v3, "point3_Y":I
    :goto_5
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v4, v6, v7

    const/4 v7, 0x1

    aput v5, v6, v7

    const/4 v7, 0x2

    aput v0, v6, v7

    const/4 v7, 0x3

    aput v1, v6, v7

    const/4 v7, 0x4

    aput v2, v6, v7

    const/4 v7, 0x5

    aput v3, v6, v7

    return-object v6
.end method

.method private getEdgePointForDegree(II)[I
    .locals 4
    .param p1, "degreeStart"    # I
    .param p2, "degreeEnd"    # I

    .line 115
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeEnd:D

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeStart:D

    sub-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 116
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->getEdgePointForAcuteDegree(II)[I

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->getEdgePointForObtuseDegree(II)[I

    move-result-object v0

    return-object v0
.end method

.method private getEdgePointForObtuseDegree(II)[I
    .locals 17
    .param p1, "degreeStart"    # I
    .param p2, "degreeEnd"    # I

    move/from16 v0, p1

    .line 125
    move/from16 v1, p2

    const/4 v2, -0x1

    const/16 v3, 0x5a

    if-ltz v0, :cond_0

    if-gt v0, v3, :cond_0

    .line 126
    const/4 v4, 0x1

    .line 127
    .local v4, "point1_X":I
    const/4 v5, 0x1

    .local v5, "point1_Y":I
    goto :goto_0

    .line 129
    .end local v4    # "point1_X":I
    .end local v5    # "point1_Y":I
    :cond_0
    const/4 v4, 0x1

    .line 130
    .restart local v4    # "point1_X":I
    move v5, v2

    .line 132
    .restart local v5    # "point1_Y":I
    :goto_0
    const/16 v6, 0xb4

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-lt v1, v6, :cond_1

    const/16 v6, 0x10e

    if-gt v1, v6, :cond_1

    .line 133
    const/4 v2, -0x1

    .line 134
    .local v2, "point2_X":I
    const/4 v3, 0x1

    .line 135
    .local v3, "point2_Y":I
    const/4 v6, -0x1

    .line 136
    .local v6, "point3_X":I
    const/4 v14, -0x1

    .line 147
    .local v14, "point3_Y":I
    move v15, v6

    move/from16 v16, v14

    move v14, v3

    goto :goto_1

    .line 138
    .end local v2    # "point2_X":I
    .end local v3    # "point2_Y":I
    .end local v6    # "point3_X":I
    .end local v14    # "point3_Y":I
    :cond_1
    const/4 v6, -0x1

    .line 139
    .local v6, "point2_X":I
    const/4 v14, -0x1

    .line 140
    .local v14, "point2_Y":I
    const/4 v15, 0x1

    .line 141
    .local v15, "point3_X":I
    const/16 v16, -0x1

    .line 142
    .local v16, "point3_Y":I
    if-ge v0, v3, :cond_2

    .line 143
    const/16 v3, 0x8

    new-array v3, v3, [I

    aput v4, v3, v12

    aput v5, v3, v13

    aput v2, v3, v11

    aput v13, v3, v10

    aput v6, v3, v9

    aput v14, v3, v8

    aput v15, v3, v7

    const/4 v2, 0x7

    aput v16, v3, v2

    return-object v3

    .line 147
    :cond_2
    move v2, v6

    .end local v6    # "point2_X":I
    .restart local v2    # "point2_X":I
    :goto_1
    new-array v3, v7, [I

    aput v4, v3, v12

    aput v5, v3, v13

    aput v2, v3, v11

    aput v14, v3, v10

    aput v15, v3, v9

    aput v16, v3, v8

    return-object v3
.end method

.method private getPath()Landroid/graphics/Path;
    .locals 15

    .line 67
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeEnd:D

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeStart:D

    sub-double/2addr v0, v2

    const-wide v2, 0x4076700000000000L    # 359.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_clip:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 71
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 72
    .local v0, "radius":I
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_clip:Landroid/graphics/Path;

    .line 77
    const/4 v2, 0x0

    .local v2, "centerX":I
    const/4 v3, 0x0

    .line 84
    .local v3, "centerY":I
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_clip:Landroid/graphics/Path;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 85
    iget-wide v4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeStart:D

    neg-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    int-to-double v10, v0

    mul-double/2addr v4, v10

    double-to-float v4, v4

    .line 86
    .local v4, "startYOnCircle":F
    iget-wide v10, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeStart:D

    neg-double v10, v10

    mul-double/2addr v10, v6

    div-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    int-to-double v12, v0

    mul-double/2addr v10, v12

    double-to-float v5, v10

    .line 87
    .local v5, "startXOnCircle":F
    iget-object v10, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_clip:Landroid/graphics/Path;

    int-to-float v11, v2

    add-float/2addr v11, v5

    int-to-float v12, v3

    add-float/2addr v12, v4

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    iget-wide v10, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeStart:D

    double-to-int v10, v10

    iget-wide v11, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeEnd:D

    double-to-int v11, v11

    invoke-direct {p0, v10, v11}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->getEdgePointForDegree(II)[I

    move-result-object v10

    .line 89
    .local v10, "points":[I
    if-eqz v10, :cond_1

    array-length v11, v10

    const/4 v12, 0x6

    if-lt v11, v12, :cond_1

    .line 92
    iget-object v11, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_clip:Landroid/graphics/Path;

    const/4 v13, 0x0

    aget v13, v10, v13

    mul-int/2addr v13, v0

    add-int/2addr v13, v2

    int-to-float v13, v13

    const/4 v14, 0x1

    aget v14, v10, v14

    mul-int/2addr v14, v0

    sub-int v14, v3, v14

    int-to-float v14, v14

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    iget-object v11, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_clip:Landroid/graphics/Path;

    aget v1, v10, v1

    mul-int/2addr v1, v0

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v13, 0x3

    aget v13, v10, v13

    mul-int/2addr v13, v0

    sub-int v13, v3, v13

    int-to-float v13, v13

    invoke-virtual {v11, v1, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 94
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_clip:Landroid/graphics/Path;

    const/4 v11, 0x4

    aget v11, v10, v11

    mul-int/2addr v11, v0

    add-int/2addr v11, v2

    int-to-float v11, v11

    const/4 v13, 0x5

    aget v13, v10, v13

    mul-int/2addr v13, v0

    sub-int v13, v3, v13

    int-to-float v13, v13

    invoke-virtual {v1, v11, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 95
    array-length v1, v10

    const/16 v11, 0x8

    if-lt v1, v11, :cond_1

    .line 96
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_clip:Landroid/graphics/Path;

    aget v11, v10, v12

    mul-int/2addr v11, v0

    add-int/2addr v11, v2

    int-to-float v11, v11

    const/4 v12, 0x7

    aget v12, v10, v12

    mul-int/2addr v12, v0

    sub-int v12, v3, v12

    int-to-float v12, v12

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 99
    :cond_1
    iget-wide v11, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeEnd:D

    neg-double v11, v11

    mul-double/2addr v11, v6

    div-double/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    int-to-double v13, v0

    mul-double/2addr v11, v13

    double-to-float v1, v11

    .line 100
    .local v1, "endYOnCircle":F
    iget-wide v11, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeEnd:D

    neg-double v11, v11

    mul-double/2addr v11, v6

    div-double/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    int-to-double v8, v0

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 101
    .local v6, "endXOnCircle":F
    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_clip:Landroid/graphics/Path;

    int-to-float v8, v2

    add-float/2addr v8, v6

    int-to-float v9, v3

    add-float/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_clip:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 111
    .end local v0    # "radius":I
    .end local v1    # "endYOnCircle":F
    .end local v2    # "centerX":I
    .end local v3    # "centerY":I
    .end local v4    # "startYOnCircle":F
    .end local v5    # "startXOnCircle":F
    .end local v6    # "endXOnCircle":F
    .end local v10    # "points":[I
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_clip:Landroid/graphics/Path;

    return-object v0
.end method

.method private setDegreeEnd(D)V
    .locals 2
    .param p1, "end"    # D

    .line 57
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeStart:D

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->setDegree(DD)V

    .line 58
    return-void
.end method

.method private setDegreeStart(D)V
    .locals 2
    .param p1, "start"    # D

    .line 54
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeEnd:D

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->setDegree(DD)V

    .line 55
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->getPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 215
    .local v0, "radius":I
    int-to-float v1, v0

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 216
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 217
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 218
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 219
    neg-int v1, v0

    int-to-float v1, v1

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 221
    .end local v0    # "radius":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 223
    return-void
.end method

.method public getDegreeEnd()D
    .locals 2

    .line 63
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeEnd:D

    return-wide v0
.end method

.method public getDegreeStart()D
    .locals 2

    .line 60
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeStart:D

    return-wide v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 206
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 207
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->clearPath()V

    .line 208
    return-void
.end method

.method public setCallback(Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView$Callback;I)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView$Callback;
    .param p2, "index"    # I

    .line 227
    iput p2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_index:I

    .line 228
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_callback:Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView$Callback;

    .line 229
    return-void
.end method

.method public setDegree(DD)V
    .locals 1
    .param p1, "start"    # D
    .param p3, "end"    # D

    .line 45
    cmpl-double v0, p1, p3

    if-lez v0, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    iput-wide p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeStart:D

    .line 49
    iput-wide p3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->m_degreeEnd:D

    .line 50
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->requestLayout()V

    .line 51
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->invalidate()V

    .line 52
    return-void
.end method
