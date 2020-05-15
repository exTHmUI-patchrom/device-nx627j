.class public Landroid/text/style/BulletSpan;
.super Ljava/lang/Object;
.source "BulletSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final STANDARD_BULLET_RADIUS:I = 0x4

.field private static final STANDARD_COLOR:I = 0x0

.field public static final STANDARD_GAP_WIDTH:I = 0x2


# instance fields
.field private mBulletPath:Landroid/graphics/Path;

.field private final mBulletRadius:I

.field private final mColor:I

.field private final mGapWidth:I

.field private final mWantColor:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v0, v2}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    .line 86
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "gapWidth"    # I

    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    .line 95
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "gapWidth"    # I
    .param p2, "color"    # I

    .line 105
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    .line 106
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "gapWidth"    # I
    .param p2, "color"    # I
    .param p3, "bulletRadius"    # I

    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    .line 118
    return-void
.end method

.method private constructor <init>(IIZI)V
    .locals 1
    .param p1, "gapWidth"    # I
    .param p2, "color"    # I
    .param p3, "wantColor"    # Z
    .param p4, "bulletRadius"    # I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/style/BulletSpan;->mBulletPath:Landroid/graphics/Path;

    .line 122
    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 123
    iput p4, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    .line 124
    iput p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 125
    iput-boolean p3, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/style/BulletSpan;->mBulletPath:Landroid/graphics/Path;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    .line 136
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p9

    .line 205
    move-object/from16 v4, p12

    move-object/from16 v5, p8

    check-cast v5, Landroid/text/Spanned;

    invoke-interface {v5, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v3, :cond_5

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v5

    .line 207
    .local v5, "style":Landroid/graphics/Paint$Style;
    const/4 v6, 0x0

    .line 209
    .local v6, "oldcolor":I
    iget-boolean v7, v0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v7, :cond_0

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 211
    iget v7, v0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    :cond_0
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    if-eqz v4, :cond_1

    .line 220
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 221
    .local v7, "line":I
    invoke-virtual {v4, v7}, Landroid/text/Layout;->getLineExtra(I)I

    move-result v8

    sub-int v7, p7, v8

    .end local p7    # "bottom":I
    .local v7, "bottom":I
    goto :goto_0

    .line 224
    .end local v7    # "bottom":I
    .restart local p7    # "bottom":I
    :cond_1
    move/from16 v7, p7

    .end local p7    # "bottom":I
    .restart local v7    # "bottom":I
    :goto_0
    add-int v9, p5, v7

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 225
    .local v9, "yPosition":F
    iget v10, v0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    mul-int v10, v10, p4

    add-int v10, p3, v10

    int-to-float v10, v10

    .line 227
    .local v10, "xPosition":F
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 228
    iget-object v11, v0, Landroid/text/style/BulletSpan;->mBulletPath:Landroid/graphics/Path;

    if-nez v11, :cond_2

    .line 229
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    iput-object v11, v0, Landroid/text/style/BulletSpan;->mBulletPath:Landroid/graphics/Path;

    .line 230
    iget-object v11, v0, Landroid/text/style/BulletSpan;->mBulletPath:Landroid/graphics/Path;

    iget v12, v0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    int-to-float v12, v12

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v4, v12, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 233
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 234
    invoke-virtual {v1, v10, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 235
    iget-object v3, v0, Landroid/text/style/BulletSpan;->mBulletPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 236
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 238
    :cond_3
    iget v3, v0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    int-to-float v3, v3

    invoke-virtual {v1, v10, v9, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 241
    :goto_1
    iget-boolean v3, v0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v3, :cond_4

    .line 242
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    :cond_4
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .end local v5    # "style":Landroid/graphics/Paint$Style;
    .end local v6    # "oldcolor":I
    .end local v9    # "yPosition":F
    .end local v10    # "xPosition":F
    goto :goto_2

    .line 247
    .end local v7    # "bottom":I
    .restart local p7    # "bottom":I
    :cond_5
    move/from16 v7, p7

    .end local p7    # "bottom":I
    .restart local v7    # "bottom":I
    :goto_2
    return-void
.end method

.method public getBulletRadius()I
    .locals 1

    .line 188
    iget v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 197
    iget v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    return v0
.end method

.method public getGapWidth()I
    .locals 1

    .line 179
    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    return v0
.end method

.method public getLeadingMargin(Z)I
    .locals 2
    .param p1, "first"    # Z

    .line 170
    iget v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    add-int/2addr v1, v0

    return v1
.end method

.method public getSpanTypeId()I
    .locals 1

    .line 140
    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .line 146
    const/16 v0, 0x8

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 156
    invoke-virtual {p0, p1, p2}, Landroid/text/style/BulletSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 157
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 162
    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return-void
.end method
