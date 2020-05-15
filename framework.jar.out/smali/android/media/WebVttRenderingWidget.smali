.class Landroid/media/WebVttRenderingWidget;
.super Landroid/view/ViewGroup;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WebVttRenderingWidget$SpanLayout;,
        Landroid/media/WebVttRenderingWidget$CueLayout;,
        Landroid/media/WebVttRenderingWidget$RegionLayout;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_CUE_BACKGROUND:I = -0x7f010000

.field private static final DEBUG_REGION_BACKGROUND:I = -0x7fffff01

.field private static final DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final LINE_HEIGHT_RATIO:F = 0.0533f


# instance fields
.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private final mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private final mCueBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/TextTrackCue;",
            "Landroid/media/WebVttRenderingWidget$CueLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSize:F

.field private mHasChangeListener:Z

.field private mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mManager:Landroid/view/accessibility/CaptioningManager;

.field private final mRegionBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/TextTrackRegion;",
            "Landroid/media/WebVttRenderingWidget$RegionLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1117
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 1157
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 1162
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1126
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    .line 1130
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    .line 1507
    new-instance v0, Landroid/media/WebVttRenderingWidget$1;

    invoke-direct {v0, p0}, Landroid/media/WebVttRenderingWidget$1;-><init>(Landroid/media/WebVttRenderingWidget;)V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 1165
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/WebVttRenderingWidget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1167
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    .line 1168
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1169
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x3d5a511a    # 0.0533f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1170
    return-void
.end method

.method static synthetic access$100(Landroid/media/WebVttRenderingWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttRenderingWidget;

    .line 1114
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 0
    .param p0, "x0"    # Landroid/media/WebVttRenderingWidget;
    .param p1, "x1"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "x2"    # F

    .line 1114
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/WebVttRenderingWidget;)F
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttRenderingWidget;

    .line 1114
    iget v0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    return v0
.end method

.method static synthetic access$400(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 1114
    invoke-static {p0, p1}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result v0

    return v0
.end method

.method private calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .locals 7
    .param p1, "cueBox"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1472
    invoke-virtual {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v0

    .line 1473
    .local v0, "cue":Landroid/media/TextTrackCue;
    iget-object v1, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 1474
    .local v1, "linePosition":Ljava/lang/Integer;
    iget-boolean v2, v0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 1475
    .local v2, "snapToLines":Z
    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1477
    .local v4, "autoPosition":Z
    :goto_0
    const/16 v5, 0x64

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v5, :cond_2

    .line 1479
    :cond_1
    return v5

    .line 1480
    :cond_2
    if-nez v4, :cond_3

    .line 1482
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 1483
    :cond_3
    if-nez v2, :cond_4

    .line 1485
    return v5

    .line 1488
    :cond_4
    invoke-static {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->access$000(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result v5

    add-int/2addr v5, v3

    neg-int v3, v5

    return v3
.end method

.method private layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V
    .locals 16
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "cueBox"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1400
    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v2

    .line 1401
    .local v2, "cue":Landroid/media/TextTrackCue;
    invoke-virtual/range {p0 .. p0}, Landroid/media/WebVttRenderingWidget;->getLayoutDirection()I

    move-result v3

    .line 1402
    .local v3, "direction":I
    iget v4, v2, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v3, v4}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result v4

    .line 1403
    .local v4, "absAlignment":I
    iget-boolean v5, v2, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 1405
    .local v5, "cueSnapToLines":Z
    invoke-virtual/range {p3 .. p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getMeasuredWidth()I

    move-result v6

    const/16 v7, 0x64

    mul-int/2addr v6, v7

    div-int v6, v6, p1

    .line 1409
    .local v6, "size":I
    packed-switch v4, :pswitch_data_0

    .line 1418
    iget v8, v2, Landroid/media/TextTrackCue;->mTextPosition:I

    div-int/lit8 v9, v6, 0x2

    sub-int/2addr v8, v9

    goto :goto_0

    .line 1414
    :pswitch_0
    iget v8, v2, Landroid/media/TextTrackCue;->mTextPosition:I

    sub-int/2addr v8, v6

    .line 1415
    .local v8, "xPosition":I
    goto :goto_0

    .line 1411
    .end local v8    # "xPosition":I
    :pswitch_1
    iget v8, v2, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 1412
    .restart local v8    # "xPosition":I
    nop

    .line 1418
    :goto_0
    nop

    .line 1423
    const/4 v9, 0x1

    if-ne v3, v9, :cond_0

    .line 1424
    rsub-int/lit8 v8, v8, 0x64

    .line 1430
    :cond_0
    if-eqz v5, :cond_2

    .line 1431
    invoke-virtual/range {p0 .. p0}, Landroid/media/WebVttRenderingWidget;->getPaddingLeft()I

    move-result v9

    mul-int/2addr v9, v7

    div-int v9, v9, p1

    .line 1432
    .local v9, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/WebVttRenderingWidget;->getPaddingRight()I

    move-result v10

    mul-int/2addr v10, v7

    div-int v10, v10, p1

    .line 1433
    .local v10, "paddingRight":I
    if-ge v8, v9, :cond_1

    add-int v11, v8, v6

    if-le v11, v9, :cond_1

    .line 1434
    add-int/2addr v8, v9

    .line 1435
    sub-int/2addr v6, v9

    .line 1437
    :cond_1
    rsub-int/lit8 v11, v10, 0x64

    int-to-float v11, v11

    .line 1438
    .local v11, "rightEdge":F
    int-to-float v12, v8

    cmpg-float v12, v12, v11

    if-gez v12, :cond_2

    add-int v12, v8, v6

    int-to-float v12, v12

    cmpl-float v12, v12, v11

    if-lez v12, :cond_2

    .line 1439
    sub-int/2addr v6, v10

    .line 1444
    .end local v9    # "paddingLeft":I
    .end local v10    # "paddingRight":I
    .end local v11    # "rightEdge":F
    :cond_2
    mul-int v9, v8, p1

    div-int/2addr v9, v7

    .line 1445
    .local v9, "left":I
    mul-int v10, v6, p1

    div-int/2addr v10, v7

    .line 1448
    .local v10, "width":I
    move-object/from16 v11, p0

    invoke-direct {v11, v1}, Landroid/media/WebVttRenderingWidget;->calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result v12

    .line 1451
    .local v12, "yPosition":I
    invoke-virtual/range {p3 .. p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getMeasuredHeight()I

    move-result v13

    .line 1453
    .local v13, "height":I
    if-gez v12, :cond_3

    .line 1455
    mul-int v7, v12, v13

    add-int v7, p2, v7

    .local v7, "top":I
    goto :goto_1

    .line 1457
    .end local v7    # "top":I
    :cond_3
    sub-int v14, p2, v13

    mul-int/2addr v14, v12

    div-int/lit8 v7, v14, 0x64

    .line 1461
    .restart local v7    # "top":I
    :goto_1
    add-int v14, v9, v10

    add-int v0, v7, v13

    invoke-virtual {v1, v9, v7, v14, v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->layout(IIII)V

    .line 1462
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V
    .locals 9
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "regionBox"    # Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1382
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getRegion()Landroid/media/TextTrackRegion;

    move-result-object v0

    .line 1383
    .local v0, "region":Landroid/media/TextTrackRegion;
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getMeasuredHeight()I

    move-result v1

    .line 1384
    .local v1, "regionHeight":I
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getMeasuredWidth()I

    move-result v2

    .line 1387
    .local v2, "regionWidth":I
    iget v3, v0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 1388
    .local v3, "x":F
    iget v4, v0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    .line 1389
    .local v4, "y":F
    sub-int v5, p1, v2

    int-to-float v5, v5

    mul-float/2addr v5, v3

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 1390
    .local v5, "left":I
    sub-int v7, p2, v1

    int-to-float v7, v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v6

    float-to-int v6, v7

    .line 1392
    .local v6, "top":I
    add-int v7, v5, v2

    add-int v8, v6, v1

    invoke-virtual {p3, v5, v6, v7, v8}, Landroid/media/WebVttRenderingWidget$RegionLayout;->layout(IIII)V

    .line 1393
    return-void
.end method

.method private manageChangeListener()V
    .locals 4

    .line 1215
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1216
    .local v0, "needsListener":Z
    :goto_0
    iget-boolean v1, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    if-eq v1, v0, :cond_2

    .line 1217
    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    .line 1219
    if-eqz v0, :cond_1

    .line 1220
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 1222
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    .line 1223
    .local v1, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const v3, 0x3d5a511a    # 0.0533f

    mul-float/2addr v2, v3

    .line 1224
    .local v2, "fontSize":F
    invoke-direct {p0, v1, v2}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1225
    .end local v1    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v2    # "fontSize":F
    goto :goto_1

    .line 1226
    :cond_1
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 1229
    :cond_2
    :goto_1
    return-void
.end method

.method private prepForPrune()V
    .locals 4

    .line 1324
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1325
    .local v0, "regionCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1326
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1327
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prepForPrune()V

    .line 1325
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1330
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1331
    .local v2, "cueCount":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1332
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1333
    .local v3, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$CueLayout;->prepForPrune()V

    .line 1331
    .end local v3    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1335
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private prune()V
    .locals 5

    .line 1297
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1298
    .local v0, "regionCount":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "regionCount":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1299
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1300
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prune()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1301
    invoke-virtual {p0, v3}, Landroid/media/WebVttRenderingWidget;->removeView(Landroid/view/View;)V

    .line 1302
    iget-object v4, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1303
    add-int/lit8 v2, v2, -0x1

    .line 1304
    add-int/lit8 v0, v0, -0x1

    .line 1298
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1308
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1309
    .local v0, "cueCount":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1310
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1311
    .local v3, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$CueLayout;->isActive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1312
    invoke-virtual {p0, v3}, Landroid/media/WebVttRenderingWidget;->removeView(Landroid/view/View;)V

    .line 1313
    iget-object v4, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1314
    add-int/lit8 v0, v0, -0x1

    .line 1315
    add-int/lit8 v1, v1, -0x1

    .line 1309
    .end local v3    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1318
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private static resolveCueAlignment(II)I
    .locals 2
    .param p0, "layoutDirection"    # I
    .param p1, "alignment"    # I

    .line 1496
    const/16 v0, 0xcb

    const/16 v1, 0xcc

    packed-switch p1, :pswitch_data_0

    .line 1504
    return p1

    .line 1501
    :pswitch_0
    if-nez p0, :cond_0

    .line 1502
    nop

    .line 1501
    move v0, v1

    goto :goto_0

    .line 1502
    :cond_0
    nop

    .line 1501
    :goto_0
    return v0

    .line 1498
    :pswitch_1
    if-nez p0, :cond_1

    .line 1499
    goto :goto_1

    .line 1498
    :cond_1
    move v0, v1

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 4
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .line 1276
    sget-object v0, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    .line 1277
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1278
    iput p2, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1280
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1281
    .local v0, "cueCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1282
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1283
    .local v3, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1281
    .end local v3    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1286
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1287
    .local v2, "regionCount":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1288
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1289
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1287
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1291
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 1183
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1185
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1186
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1190
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1192
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1193
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1356
    sub-int v0, p4, p2

    .line 1357
    .local v0, "viewportWidth":I
    sub-int v1, p5, p3

    .line 1359
    .local v1, "viewportHeight":I
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    .line 1360
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v3

    const v4, 0x3d5a511a    # 0.0533f

    mul-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    .line 1359
    invoke-direct {p0, v2, v3}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1362
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1363
    .local v2, "regionCount":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1364
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1365
    .local v5, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-direct {p0, v0, v1, v5}, Landroid/media/WebVttRenderingWidget;->layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V

    .line 1363
    .end local v5    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1368
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1369
    .local v4, "cueCount":I
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 1370
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1371
    .local v5, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-direct {p0, v0, v1, v5}, Landroid/media/WebVttRenderingWidget;->layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V

    .line 1369
    .end local v5    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1373
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1339
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1341
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1342
    .local v0, "regionCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1343
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1344
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->measureForParent(II)V

    .line 1342
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1347
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1348
    .local v2, "cueCount":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1349
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1350
    .local v3, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->measureForParent(II)V

    .line 1348
    .end local v3    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1352
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setActiveCues(Ljava/util/Vector;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 1232
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1233
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1234
    .local v1, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget v2, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1236
    .local v2, "fontSize":F
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prepForPrune()V

    .line 1239
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1240
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1241
    invoke-virtual {p1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/TextTrackCue;

    .line 1242
    .local v5, "cue":Landroid/media/TextTrackCue;
    iget-object v6, v5, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 1243
    .local v6, "region":Landroid/media/TextTrackRegion;
    const/4 v7, -0x2

    if-eqz v6, :cond_1

    .line 1244
    iget-object v8, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1245
    .local v8, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    if-nez v8, :cond_0

    .line 1246
    new-instance v9, Landroid/media/WebVttRenderingWidget$RegionLayout;

    invoke-direct {v9, v0, v6, v1, v2}, Landroid/media/WebVttRenderingWidget$RegionLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackRegion;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    move-object v8, v9

    .line 1247
    iget-object v9, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    invoke-virtual {p0, v8, v7, v7}, Landroid/media/WebVttRenderingWidget;->addView(Landroid/view/View;II)V

    .line 1250
    :cond_0
    invoke-virtual {v8, v5}, Landroid/media/WebVttRenderingWidget$RegionLayout;->put(Landroid/media/TextTrackCue;)V

    .line 1251
    .end local v8    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    goto :goto_1

    .line 1252
    :cond_1
    iget-object v8, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1253
    .local v8, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    if-nez v8, :cond_2

    .line 1254
    new-instance v9, Landroid/media/WebVttRenderingWidget$CueLayout;

    invoke-direct {v9, v0, v5, v1, v2}, Landroid/media/WebVttRenderingWidget$CueLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    move-object v8, v9

    .line 1255
    iget-object v9, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    invoke-virtual {p0, v8, v7, v7}, Landroid/media/WebVttRenderingWidget;->addView(Landroid/view/View;II)V

    .line 1258
    :cond_2
    invoke-virtual {v8}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 1259
    invoke-virtual {v8, v4}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrder(I)V

    .line 1240
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v6    # "region":Landroid/media/TextTrackRegion;
    .end local v8    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1263
    .end local v4    # "i":I
    :cond_3
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prune()V

    .line 1266
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getWidth()I

    move-result v4

    .line 1267
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v5

    .line 1268
    .local v5, "height":I
    invoke-virtual {p0, v4, v5}, Landroid/media/WebVttRenderingWidget;->setSize(II)V

    .line 1270
    iget-object v6, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v6, :cond_4

    .line 1271
    iget-object v6, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v6, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 1273
    :cond_4
    return-void
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 1197
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 1198
    return-void
.end method

.method public setSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1174
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1175
    .local v1, "widthSpec":I
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1177
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/WebVttRenderingWidget;->measure(II)V

    .line 1178
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/WebVttRenderingWidget;->layout(IIII)V

    .line 1179
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 1202
    if-eqz p1, :cond_0

    .line 1203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget;->setVisibility(I)V

    goto :goto_0

    .line 1205
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget;->setVisibility(I)V

    .line 1208
    :goto_0
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1209
    return-void
.end method
