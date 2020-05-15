.class public Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;
.super Landroid/widget/ImageView;
.source "CircleClipImageView.java"


# static fields
.field public static final CUST_MOVE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CircleClipImageView"


# instance fields
.field private final DEF_GRADIENT_COLORS:[I

.field private m_bClipOut:Z

.field m_clip:Landroid/graphics/Path;

.field m_clipFull:Landroid/graphics/Path;

.field private m_clipHeight:I

.field private m_clipWidth:I

.field private m_gradient:Landroid/graphics/LinearGradient;

.field private m_gradientColors:[I

.field private m_moveY:F

.field private m_oldHeight:I

.field private m_oldWidth:I

.field m_paint:Landroid/graphics/Paint;

.field private m_radausPercent:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 168
    new-instance v0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView$1;

    const-string v1, "cust_moveY"

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->CUST_MOVE_Y:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/16 v0, 0x64

    iput v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_radausPercent:I

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->DEF_GRADIENT_COLORS:[I

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_bClipOut:Z

    .line 34
    return-void

    nop

    :array_0
    .array-data 4
        0xf51400
        -0x2e0aec00
        0xf51400
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/16 v0, 0x64

    iput v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_radausPercent:I

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->DEF_GRADIENT_COLORS:[I

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_bClipOut:Z

    .line 39
    return-void

    nop

    :array_0
    .array-data 4
        0xf51400
        -0x2e0aec00
        0xf51400
    .end array-data
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getMoveY()F

    move-result v0

    return v0
.end method

.method private clearGradient()V
    .locals 1

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_gradient:Landroid/graphics/LinearGradient;

    .line 113
    return-void
.end method

.method private clearPaint()V
    .locals 1

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_paint:Landroid/graphics/Paint;

    .line 110
    return-void
.end method

.method private clearPath()V
    .locals 1

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_clip:Landroid/graphics/Path;

    .line 106
    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_clipFull:Landroid/graphics/Path;

    .line 107
    return-void
.end method

.method private getGradient()Landroid/graphics/LinearGradient;
    .locals 11

    .line 87
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_gradient:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getWidth()I

    move-result v0

    .line 92
    .local v0, "width":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getHeight()I

    move-result v1

    .line 93
    .local v1, "height":I
    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v1

    .line 97
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_gradientColors:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_gradientColors:[I

    .line 98
    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->DEF_GRADIENT_COLORS:[I

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_gradient:Landroid/graphics/LinearGradient;

    .line 102
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_gradient:Landroid/graphics/LinearGradient;

    return-object v0
.end method

.method private getMoveY()F
    .locals 1

    .line 160
    iget v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_moveY:F

    return v0
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_paint:Landroid/graphics/Paint;

    .line 77
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getPath()Landroid/graphics/Path;
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_clip:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 45
    iget v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_radausPercent:I

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getPath(I)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_clip:Landroid/graphics/Path;

    .line 47
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_clip:Landroid/graphics/Path;

    return-object v0
.end method

.method private getPath(I)Landroid/graphics/Path;
    .locals 9
    .param p1, "percent"    # I

    .line 56
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getWidth()I

    move-result v0

    .line 57
    .local v0, "width":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getHeight()I

    move-result v1

    .line 58
    .local v1, "height":I
    div-int/lit8 v2, v0, 0x2

    .line 59
    .local v2, "centerX":I
    div-int/lit8 v3, v1, 0x2

    .line 60
    .local v3, "centerY":I
    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 61
    .local v4, "radius":F
    int-to-float v5, p1

    mul-float/2addr v5, v4

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    .line 63
    .end local v4    # "radius":F
    .local v5, "radius":F
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 64
    .local v4, "p":Landroid/graphics/Path;
    int-to-float v6, v2

    int-to-float v7, v3

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 65
    return-object v4
.end method

.method private getPathFull()Landroid/graphics/Path;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_clipFull:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 51
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getPath(I)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_clipFull:Landroid/graphics/Path;

    .line 53
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_clipFull:Landroid/graphics/Path;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 135
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_bClipOut:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 137
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getPathFull()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 138
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 143
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getGradient()Landroid/graphics/LinearGradient;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getGradient()Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 145
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    const/4 v0, 0x0

    iget v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_moveY:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 147
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    .line 148
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 147
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 151
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 152
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 119
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 120
    iget v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_oldWidth:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_oldHeight:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 121
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->clearPath()V

    .line 122
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->clearPaint()V

    .line 123
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->clearGradient()V

    .line 124
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_oldWidth:I

    .line 125
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_oldHeight:I

    .line 127
    :cond_1
    return-void
.end method

.method public setClipOut(Z)V
    .locals 0
    .param p1, "out"    # Z

    .line 130
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_bClipOut:Z

    .line 131
    return-void
.end method

.method public setGradientColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .line 83
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_gradientColors:[I

    .line 84
    return-void
.end method

.method public setMoveY(F)V
    .locals 0
    .param p1, "y"    # F

    .line 155
    iput p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_moveY:F

    .line 156
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->requestLayout()V

    .line 157
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->invalidate()V

    .line 158
    return-void
.end method

.method public setRadiusPercent(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 69
    iput p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->m_radausPercent:I

    .line 70
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->clearPath()V

    .line 71
    return-void
.end method
