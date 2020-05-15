.class Landroid/media/TextTrackRegion;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# static fields
.field static final SCROLL_VALUE_NONE:I = 0x12c

.field static final SCROLL_VALUE_SCROLL_UP:I = 0x12d


# instance fields
.field mAnchorPointX:F

.field mAnchorPointY:F

.field mId:Ljava/lang/String;

.field mLines:I

.field mScrollValue:I

.field mViewportAnchorPointX:F

.field mViewportAnchorPointY:F

.field mWidth:F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const-string v0, ""

    iput-object v0, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    .line 353
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/media/TextTrackRegion;->mWidth:F

    .line 354
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/TextTrackRegion;->mLines:I

    .line 355
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    iput v1, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 356
    iput v0, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    iput v0, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    .line 357
    const/16 v0, 0x12c

    iput v0, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    .line 358
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " {id:\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", width:"

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackRegion;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lines:"

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackRegion;->mLines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anchorPoint:("

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "), viewportAnchorPoints:"

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "), scrollValue:"

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget v1, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "none"

    goto :goto_0

    .line 370
    :cond_0
    iget v1, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "scroll_up"

    goto :goto_0

    .line 371
    :cond_1
    const-string v1, "INVALID"

    .line 369
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 373
    .local v0, "res":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
