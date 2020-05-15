.class Landroid/media/Cea608CCWidget$CCLineBox;
.super Landroid/widget/TextView;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBox"
.end annotation


# static fields
.field private static final EDGE_OUTLINE_RATIO:F = 0.1f

.field private static final EDGE_SHADOW_RATIO:F = 0.05f

.field private static final FONT_PADDING_RATIO:F = 0.75f


# instance fields
.field private mBgColor:I

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mOutlineWidth:F

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mTextColor:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1275
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1269
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    .line 1270
    const/high16 v1, -0x1000000

    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    .line 1271
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 1272
    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 1276
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Landroid/media/Cea608CCWidget$CCLineBox;->setGravity(I)V

    .line 1277
    invoke-virtual {p0, v1}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundColor(I)V

    .line 1278
    invoke-virtual {p0, v0}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 1279
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/media/Cea608CCWidget$CCLineBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1280
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/media/Cea608CCWidget$CCLineBox;->setVisibility(I)V

    .line 1282
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1285
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10501a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    .line 1287
    const v1, 0x10501a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 1289
    const v1, 0x10501a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    .line 1291
    return-void
.end method

.method private drawEdgeOutline(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1346
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1348
    .local v0, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 1349
    .local v1, "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v2

    .line 1350
    .local v2, "previousJoin":Landroid/graphics/Paint$Join;
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v3

    .line 1352
    .local v3, "previousWidth":F
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 1353
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1354
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1355
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 1358
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1361
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 1362
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1363
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1364
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 1367
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1369
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1371
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1372
    return-void
.end method

.method private drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1375
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1377
    .local v0, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 1378
    .local v1, "previousStyle":Landroid/graphics/Paint$Style;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1380
    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1381
    .local v2, "raised":Z
    :goto_0
    const/4 v4, -0x1

    if-eqz v2, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    iget v5, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 1382
    .local v5, "colorUp":I
    :goto_1
    if-eqz v2, :cond_2

    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    nop

    .line 1383
    .local v4, "colorDown":I
    :cond_2
    iget v6, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 1386
    .local v6, "offset":F
    iget v7, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    neg-float v8, v6

    neg-float v9, v6

    invoke-virtual {p0, v7, v8, v9, v5}, Landroid/media/Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 1387
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1390
    invoke-direct {p0, v3}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1393
    iget v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    invoke-virtual {p0, v3, v6, v6, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 1394
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1397
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1400
    iget v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, v3}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1401
    return-void
.end method

.method private setBackgroundSpans(I)V
    .locals 5
    .param p1, "color"    # I

    .line 1404
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1405
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 1406
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    .line 1407
    .local v1, "spannable":Landroid/text/Spannable;
    nop

    .line 1408
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    .line 1407
    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    .line 1409
    .local v2, "bgSpans":[Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;
    nop

    .local v4, "i":I
    :goto_0
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1410
    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->setBackgroundColor(I)V

    .line 1409
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1413
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "bgSpans":[Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;
    .end local v4    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1329
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1337
    :cond_0
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1338
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeOutline(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1341
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V

    .line 1343
    :goto_0
    return-void

    .line 1333
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1334
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1310
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    .line 1311
    .local v0, "fontSize":F
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextSize(IF)V

    .line 1313
    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    iput v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    .line 1314
    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    iput v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 1315
    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iput v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    .line 1318
    invoke-virtual {p0, v3}, Landroid/media/Cea608CCWidget$CCLineBox;->setScaleX(F)V

    .line 1319
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const-string v3, "1234567890123456789012345678901234"

    const-string v4, "1234567890123456789012345678901234"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {}, Landroid/media/Cea608CCWidget;->access$000()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1320
    invoke-static {}, Landroid/media/Cea608CCWidget;->access$000()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 1321
    .local v1, "actualTextWidth":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 1322
    .local v2, "requiredTextWidth":F
    div-float v3, v2, v1

    invoke-virtual {p0, v3}, Landroid/media/Cea608CCWidget$CCLineBox;->setScaleX(F)V

    .line 1324
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 1325
    return-void
.end method

.method setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 4
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1294
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    .line 1295
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    .line 1296
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 1297
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 1299
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v0}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 1300
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1301
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iget v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    iget v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 1303
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/media/Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 1305
    :goto_0
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->invalidate()V

    .line 1306
    return-void
.end method
