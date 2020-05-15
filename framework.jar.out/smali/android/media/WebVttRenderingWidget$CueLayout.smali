.class Landroid/media/WebVttRenderingWidget$CueLayout;
.super Landroid/widget/LinearLayout;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueLayout"
.end annotation


# instance fields
.field private mActive:Z

.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public final mCue:Landroid/media/TextTrackCue;

.field private mFontSize:F

.field private mOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cue"    # Landroid/media/TextTrackCue;
    .param p3, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p4, "fontSize"    # F

    .line 1666
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1668
    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 1669
    iput-object p3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1670
    iput p4, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1673
    iget v0, p2, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1675
    .local v0, "horizontal":Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrientation(I)V

    .line 1677
    iget v1, p2, Landroid/media/TextTrackCue;->mAlignment:I

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 1689
    :pswitch_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    .line 1690
    goto :goto_2

    .line 1682
    :pswitch_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    .line 1683
    goto :goto_2

    .line 1679
    :pswitch_2
    const v1, 0x800005

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    .line 1680
    goto :goto_2

    .line 1692
    :pswitch_3
    const v1, 0x800003

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_2

    .line 1685
    :pswitch_4
    if-eqz v0, :cond_2

    .line 1686
    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    .line 1685
    :goto_1
    invoke-virtual {p0, v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    .line 1687
    nop

    .line 1700
    :goto_2
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 1701
    return-void

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1655
    iget v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    return v0
.end method


# virtual methods
.method public getCue()Landroid/media/TextTrackCue;
    .locals 1

    .line 1817
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 1810
    iget-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    return v0
.end method

.method public measureForParent(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1762
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 1763
    .local v0, "cue":Landroid/media/TextTrackCue;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1764
    .local v1, "specWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1765
    .local v2, "specHeight":I
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    move-result v3

    .line 1766
    .local v3, "direction":I
    iget v4, v0, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v3, v4}, Landroid/media/WebVttRenderingWidget;->access$400(II)I

    move-result v4

    .line 1771
    .local v4, "absAlignment":I
    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    .line 1786
    const/4 v5, 0x0

    goto :goto_0

    .line 1776
    :pswitch_0
    iget v5, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 1777
    .local v5, "maximumSize":I
    goto :goto_0

    .line 1773
    .end local v5    # "maximumSize":I
    :pswitch_1
    iget v5, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v5, v5, 0x64

    .line 1774
    .restart local v5    # "maximumSize":I
    goto :goto_0

    .line 1779
    .end local v5    # "maximumSize":I
    :cond_0
    iget v5, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    const/16 v6, 0x32

    if-gt v5, v6, :cond_1

    .line 1780
    iget v5, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    mul-int/lit8 v5, v5, 0x2

    .restart local v5    # "maximumSize":I
    goto :goto_0

    .line 1782
    .end local v5    # "maximumSize":I
    :cond_1
    iget v5, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v5, v5, 0x64

    mul-int/lit8 v5, v5, 0x2

    .line 1784
    .restart local v5    # "maximumSize":I
    nop

    .line 1786
    :goto_0
    nop

    .line 1791
    iget v6, v0, Landroid/media/TextTrackCue;->mSize:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x64

    .line 1792
    .local v6, "size":I
    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1793
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1794
    invoke-virtual {p0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->measure(II)V

    .line 1795
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1754
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1755
    return-void
.end method

.method public prepForPrune()V
    .locals 1

    .line 1717
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    .line 1718
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 4
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .line 1704
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1705
    iput p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1707
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildCount()I

    move-result v0

    .line 1708
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1709
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1710
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/media/WebVttRenderingWidget$SpanLayout;

    if-eqz v3, :cond_0

    .line 1711
    move-object v3, v2

    check-cast v3, Landroid/media/WebVttRenderingWidget$SpanLayout;

    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1708
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1714
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .line 1803
    iput p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    .line 1804
    return-void
.end method

.method public update()V
    .locals 10

    .line 1721
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    .line 1723
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->removeAllViews()V

    .line 1725
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    move-result v0

    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget v1, v1, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v0, v1}, Landroid/media/WebVttRenderingWidget;->access$400(II)I

    move-result v0

    .line 1727
    .local v0, "cueAlignment":I
    packed-switch v0, :pswitch_data_0

    .line 1736
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1732
    :pswitch_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1733
    .local v1, "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 1729
    .end local v1    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 1730
    .restart local v1    # "alignment":Landroid/text/Layout$Alignment;
    nop

    .line 1736
    :goto_0
    nop

    .line 1739
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1740
    .local v2, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget v3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1741
    .local v3, "fontSize":F
    iget-object v4, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget-object v4, v4, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 1742
    .local v4, "lines":[[Landroid/media/TextTrackCueSpan;
    array-length v5, v4

    .line 1743
    .local v5, "lineCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 1744
    new-instance v7, Landroid/media/WebVttRenderingWidget$SpanLayout;

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    aget-object v9, v4, v6

    invoke-direct {v7, v8, v9}, Landroid/media/WebVttRenderingWidget$SpanLayout;-><init>(Landroid/content/Context;[Landroid/media/TextTrackCueSpan;)V

    .line 1745
    .local v7, "lineBox":Landroid/media/WebVttRenderingWidget$SpanLayout;
    invoke-virtual {v7, v1}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1746
    invoke-virtual {v7, v2, v3}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1748
    const/4 v8, -0x2

    invoke-virtual {p0, v7, v8, v8}, Landroid/media/WebVttRenderingWidget$CueLayout;->addView(Landroid/view/View;II)V

    .line 1743
    .end local v7    # "lineBox":Landroid/media/WebVttRenderingWidget$SpanLayout;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1750
    .end local v6    # "i":I
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
