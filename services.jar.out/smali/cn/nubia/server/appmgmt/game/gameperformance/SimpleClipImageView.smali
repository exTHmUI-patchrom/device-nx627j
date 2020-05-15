.class public Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;
.super Landroid/widget/ImageView;
.source "SimpleClipImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleClipImageView"


# instance fields
.field private BOTTOM_CORNER_SIZE:F

.field private TOP_CORNER_SIZE:F

.field m_clip:Landroid/graphics/Path;

.field private m_points:[[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->TOP_CORNER_SIZE:F

    .line 48
    iput v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->BOTTOM_CORNER_SIZE:F

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v5, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->TOP_CORNER_SIZE:F

    const/4 v6, 0x1

    aput v5, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    iget v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->TOP_CORNER_SIZE:F

    aput v7, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [F

    aput v5, v2, v4

    iget v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->BOTTOM_CORNER_SIZE:F

    sub-float v7, v5, v7

    aput v7, v2, v6

    aput-object v2, v0, v1

    new-array v1, v1, [F

    aput v3, v1, v4

    iget v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->BOTTOM_CORNER_SIZE:F

    sub-float/2addr v5, v2

    aput v5, v1, v6

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_points:[[F

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->TOP_CORNER_SIZE:F

    .line 48
    iput v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->BOTTOM_CORNER_SIZE:F

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v5, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->TOP_CORNER_SIZE:F

    const/4 v6, 0x1

    aput v5, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    iget v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->TOP_CORNER_SIZE:F

    aput v7, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [F

    aput v5, v2, v4

    iget v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->BOTTOM_CORNER_SIZE:F

    sub-float v7, v5, v7

    aput v7, v2, v6

    aput-object v2, v0, v1

    new-array v1, v1, [F

    aput v3, v1, v4

    iget v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->BOTTOM_CORNER_SIZE:F

    sub-float/2addr v5, v2

    aput v5, v1, v6

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_points:[[F

    .line 40
    return-void
.end method

.method private clearPath()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_clip:Landroid/graphics/Path;

    .line 89
    return-void
.end method

.method private getPath()Landroid/graphics/Path;
    .locals 11

    .line 62
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_clip:Landroid/graphics/Path;

    if-nez v0, :cond_6

    .line 63
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_points:[[F

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_points:[[F

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->getWidth()I

    move-result v0

    .line 67
    .local v0, "width":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->getHeight()I

    move-result v1

    .line 69
    .local v1, "height":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_points:[[F

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 70
    .local v6, "ps":[F
    if-eqz v6, :cond_3

    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 71
    goto :goto_1

    .line 73
    :cond_1
    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_clip:Landroid/graphics/Path;

    const/4 v8, 0x1

    if-nez v7, :cond_2

    .line 74
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_clip:Landroid/graphics/Path;

    .line 75
    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_clip:Landroid/graphics/Path;

    int-to-float v9, v0

    aget v10, v6, v4

    mul-float/2addr v9, v10

    int-to-float v10, v1

    aget v8, v6, v8

    mul-float/2addr v10, v8

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 77
    :cond_2
    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_clip:Landroid/graphics/Path;

    int-to-float v9, v0

    aget v10, v6, v4

    mul-float/2addr v9, v10

    int-to-float v10, v1

    aget v8, v6, v8

    mul-float/2addr v10, v8

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    .end local v6    # "ps":[F
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 80
    :cond_4
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_clip:Landroid/graphics/Path;

    if-eqz v2, :cond_6

    .line 81
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_clip:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .end local v0    # "width":I
    .end local v1    # "height":I
    goto :goto_3

    .line 64
    :cond_5
    :goto_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_clip:Landroid/graphics/Path;

    return-object v0

    .line 84
    :cond_6
    :goto_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_clip:Landroid/graphics/Path;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->getPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 103
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 105
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 93
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 94
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->clearPath()V

    .line 95
    return-void
.end method

.method public setClip([[F)V
    .locals 0
    .param p1, "points"    # [[F

    .line 56
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->m_points:[[F

    .line 57
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/SimpleClipImageView;->requestLayout()V

    .line 58
    return-void
.end method
