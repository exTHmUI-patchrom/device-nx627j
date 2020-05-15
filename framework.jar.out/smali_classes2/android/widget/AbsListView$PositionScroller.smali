.class Landroid/widget/AbsListView$PositionScroller;
.super Landroid/widget/AbsListView$AbsPositionScroller;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .line 7406
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/widget/AbsListView$AbsPositionScroller;-><init>()V

    .line 7407
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4600(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 7408
    return-void
.end method

.method private scrollToVisible(III)V
    .locals 17
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 7600
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7601
    .local v3, "firstPos":I
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 7602
    .local v4, "childCount":I
    add-int v5, v3, v4

    add-int/lit8 v5, v5, -0x1

    .line 7603
    .local v5, "lastPos":I
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 7604
    .local v6, "paddedTop":I
    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    .line 7606
    .local v7, "paddedBottom":I
    if-lt v1, v3, :cond_0

    if-le v1, v5, :cond_1

    .line 7607
    :cond_0
    const-string v8, "AbsListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "scrollToVisible called with targetPos "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " not visible ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7610
    :cond_1
    if-lt v2, v3, :cond_2

    if-le v2, v5, :cond_3

    .line 7612
    :cond_2
    const/4 v2, -0x1

    .line 7615
    .end local p2    # "boundPos":I
    .local v2, "boundPos":I
    :cond_3
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v9, v1, v3

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 7616
    .local v8, "targetChild":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 7617
    .local v9, "targetTop":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 7618
    .local v10, "targetBottom":I
    const/4 v11, 0x0

    .line 7620
    .local v11, "scrollBy":I
    if-le v10, v7, :cond_4

    .line 7621
    sub-int v11, v10, v7

    .line 7623
    :cond_4
    if-ge v9, v6, :cond_5

    .line 7624
    sub-int v11, v9, v6

    .line 7627
    :cond_5
    if-nez v11, :cond_6

    .line 7628
    return-void

    .line 7631
    :cond_6
    if-ltz v2, :cond_8

    .line 7632
    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v13, v2, v3

    invoke-virtual {v12, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 7633
    .local v12, "boundChild":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 7634
    .local v13, "boundTop":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 7635
    .local v14, "boundBottom":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 7637
    .local v15, "absScroll":I
    if-gez v11, :cond_7

    add-int v1, v14, v15

    if-le v1, v7, :cond_7

    .line 7639
    sub-int v1, v14, v7

    move/from16 v16, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 7639
    .end local v2    # "boundPos":I
    .end local v12    # "boundChild":Landroid/view/View;
    .end local v13    # "boundTop":I
    .end local v14    # "boundBottom":I
    .end local v15    # "absScroll":I
    .local v16, "boundPos":I
    :goto_0
    goto :goto_1

    .line 7640
    .end local v16    # "boundPos":I
    .restart local v2    # "boundPos":I
    .restart local v12    # "boundChild":Landroid/view/View;
    .restart local v13    # "boundTop":I
    .restart local v14    # "boundBottom":I
    .restart local v15    # "absScroll":I
    :cond_7
    move/from16 v16, v2

    const/4 v2, 0x0

    .line 7640
    .end local v2    # "boundPos":I
    .restart local v16    # "boundPos":I
    if-lez v11, :cond_9

    sub-int v1, v13, v15

    if-ge v1, v6, :cond_9

    .line 7642
    sub-int v1, v13, v6

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 7642
    .end local v12    # "boundChild":Landroid/view/View;
    .end local v13    # "boundTop":I
    .end local v14    # "boundBottom":I
    .end local v15    # "absScroll":I
    goto :goto_1

    .line 7646
    .end local v16    # "boundPos":I
    .restart local v2    # "boundPos":I
    :cond_8
    move/from16 v16, v2

    goto :goto_0

    .line 7646
    .end local v2    # "boundPos":I
    .restart local v16    # "boundPos":I
    :cond_9
    :goto_1
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v2, p3

    invoke-virtual {v1, v11, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 7647
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .line 7656
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    .line 7657
    .local v1, "listHeight":I
    iget-object v2, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7659
    .local v2, "firstPos":I
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_7

    .line 7791
    :pswitch_0
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v3, v2, :cond_0

    .line 7793
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7794
    return-void

    .line 7797
    :cond_0
    iput v2, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7799
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 7800
    .local v3, "childCount":I
    iget v6, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7801
    .local v6, "position":I
    add-int v7, v2, v3

    sub-int/2addr v7, v5

    .line 7805
    .local v7, "lastPos":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 7806
    .local v8, "firstChild":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 7807
    .local v9, "firstChildHeight":I
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7808
    .local v10, "lastChild":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 7809
    .local v11, "lastChildHeight":I
    int-to-float v12, v9

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v12, :cond_1

    .line 7810
    move v12, v14

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v9

    int-to-float v12, v12

    int-to-float v15, v9

    div-float/2addr v12, v15

    .line 7811
    .local v12, "firstPositionVisiblePart":F
    :goto_0
    int-to-float v15, v11

    cmpl-float v13, v15, v13

    if-nez v13, :cond_2

    .line 7812
    move v13, v14

    goto :goto_1

    .line 7813
    :cond_2
    iget-object v13, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 7812
    invoke-virtual {v13}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    add-int/2addr v13, v11

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v13, v15

    int-to-float v13, v13

    int-to-float v15, v11

    div-float/2addr v13, v15

    .line 7815
    .local v13, "lastPositionVisiblePart":F
    :goto_1
    const/4 v15, 0x0

    .line 7816
    .local v15, "viewTravelCount":F
    if-ge v6, v2, :cond_3

    .line 7817
    sub-int v4, v2, v6

    int-to-float v4, v4

    sub-float v16, v14, v12

    add-float v4, v4, v16

    add-float v15, v4, v14

    goto :goto_2

    .line 7818
    :cond_3
    if-le v6, v7, :cond_4

    .line 7819
    sub-int v4, v6, v7

    int-to-float v4, v4

    sub-float v16, v14, v13

    add-float v15, v4, v16

    .line 7823
    :cond_4
    :goto_2
    int-to-float v4, v3

    div-float v4, v15, v4

    .line 7825
    .local v4, "screenTravelCount":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 7826
    .local v5, "modifier":F
    if-ge v6, v2, :cond_5

    .line 7827
    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    .line 7828
    .local v14, "distance":I
    move/from16 v17, v3

    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .end local v3    # "childCount":I
    .local v17, "childCount":I
    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 7829
    .local v3, "duration":I
    move/from16 v18, v4

    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .end local v4    # "screenTravelCount":F
    .local v18, "screenTravelCount":F
    move-object/from16 v19, v8

    const/4 v8, 0x1

    invoke-virtual {v4, v14, v3, v8, v8}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7830
    .end local v8    # "firstChild":Landroid/view/View;
    .local v19, "firstChild":Landroid/view/View;
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7831
    .end local v3    # "duration":I
    .end local v14    # "distance":I
    goto/16 :goto_7

    .end local v17    # "childCount":I
    .end local v18    # "screenTravelCount":F
    .end local v19    # "firstChild":Landroid/view/View;
    .local v3, "childCount":I
    .restart local v4    # "screenTravelCount":F
    .restart local v8    # "firstChild":Landroid/view/View;
    :cond_5
    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v8

    .end local v3    # "childCount":I
    .end local v4    # "screenTravelCount":F
    .end local v8    # "firstChild":Landroid/view/View;
    .restart local v17    # "childCount":I
    .restart local v18    # "screenTravelCount":F
    .restart local v19    # "firstChild":Landroid/view/View;
    if-le v6, v7, :cond_6

    .line 7832
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 7833
    .local v3, "distance":I
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 7834
    .local v4, "duration":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v14, 0x1

    invoke-virtual {v8, v3, v4, v14, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7835
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7836
    .end local v3    # "distance":I
    .end local v4    # "duration":I
    goto/16 :goto_7

    .line 7838
    :cond_6
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v4, v6, v2

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 7839
    .local v3, "targetTop":I
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    sub-int v4, v3, v4

    .line 7840
    .local v4, "distance":I
    iget v8, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v8, v8

    .line 7841
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    move/from16 v20, v3

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .end local v3    # "targetTop":I
    .local v20, "targetTop":I
    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v14, v3

    mul-float/2addr v8, v14

    float-to-int v3, v8

    .line 7842
    .local v3, "duration":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v21, v5

    const/4 v5, 0x0

    const/4 v14, 0x1

    invoke-virtual {v8, v4, v3, v14, v5}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7844
    .end local v3    # "duration":I
    .end local v4    # "distance":I
    .end local v5    # "modifier":F
    .end local v20    # "targetTop":I
    .local v21, "modifier":F
    goto/16 :goto_7

    .line 7756
    .end local v6    # "position":I
    .end local v7    # "lastPos":I
    .end local v9    # "firstChildHeight":I
    .end local v10    # "lastChild":Landroid/view/View;
    .end local v11    # "lastChildHeight":I
    .end local v12    # "firstPositionVisiblePart":F
    .end local v13    # "lastPositionVisiblePart":F
    .end local v15    # "viewTravelCount":F
    .end local v17    # "childCount":I
    .end local v18    # "screenTravelCount":F
    .end local v19    # "firstChild":Landroid/view/View;
    .end local v21    # "modifier":F
    :pswitch_1
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    .line 7757
    .local v3, "lastViewIndex":I
    if-gez v3, :cond_7

    .line 7758
    return-void

    .line 7760
    :cond_7
    add-int v4, v2, v3

    .line 7762
    .local v4, "lastPos":I
    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v4, v5, :cond_8

    .line 7764
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7765
    return-void

    .line 7768
    :cond_8
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7769
    .local v5, "lastView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 7770
    .local v6, "lastViewHeight":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 7771
    .local v7, "lastViewTop":I
    sub-int v8, v1, v7

    .line 7772
    .local v8, "lastViewPixelsShowing":I
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 7773
    .local v9, "extraScroll":I
    iput v4, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7774
    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-le v4, v10, :cond_9

    .line 7775
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v11, v8, v9

    neg-int v11, v11

    iget v12, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13, v13}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7777
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 7779
    :cond_9
    sub-int v10, v1, v9

    .line 7780
    .local v10, "bottom":I
    add-int v11, v7, v6

    .line 7781
    .local v11, "lastViewBottom":I
    if-le v10, v11, :cond_a

    .line 7782
    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v13, v10, v11

    neg-int v13, v13

    iget v14, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v22, v3

    const/4 v3, 0x0

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .end local v3    # "lastViewIndex":I
    .local v22, "lastViewIndex":I
    goto :goto_3

    .line 7784
    .end local v22    # "lastViewIndex":I
    .restart local v3    # "lastViewIndex":I
    :cond_a
    move/from16 v22, v3

    const/4 v3, 0x0

    .end local v3    # "lastViewIndex":I
    .restart local v22    # "lastViewIndex":I
    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v12, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7787
    .end local v10    # "bottom":I
    .end local v11    # "lastViewBottom":I
    :goto_3
    goto/16 :goto_7

    .line 7692
    .end local v4    # "lastPos":I
    .end local v5    # "lastView":Landroid/view/View;
    .end local v6    # "lastViewHeight":I
    .end local v7    # "lastViewTop":I
    .end local v8    # "lastViewPixelsShowing":I
    .end local v9    # "extraScroll":I
    .end local v22    # "lastViewIndex":I
    :pswitch_2
    const/4 v3, 0x1

    .line 7693
    .local v3, "nextViewIndex":I
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 7695
    .local v4, "childCount":I
    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-eq v2, v5, :cond_f

    const/4 v5, 0x1

    if-le v4, v5, :cond_f

    add-int v5, v2, v4

    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v5, v6, :cond_b

    goto :goto_4

    .line 7700
    :cond_b
    add-int/lit8 v5, v2, 0x1

    .line 7702
    .local v5, "nextPos":I
    iget v6, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v5, v6, :cond_c

    .line 7704
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7705
    return-void

    .line 7708
    :cond_c
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7709
    .local v6, "nextView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 7710
    .local v7, "nextViewHeight":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    .line 7711
    .local v8, "nextViewTop":I
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 7712
    .restart local v9    # "extraScroll":I
    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-ge v5, v10, :cond_d

    .line 7713
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int v11, v7, v8

    sub-int/2addr v11, v9

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v12, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13, v13}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7716
    iput v5, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7718
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 7720
    :cond_d
    if-le v8, v9, :cond_e

    .line 7721
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v11, v8, v9

    iget v12, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_7

    .line 7723
    :cond_e
    const/4 v14, 0x0

    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v14}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7726
    goto/16 :goto_7

    .line 7697
    .end local v5    # "nextPos":I
    .end local v6    # "nextView":Landroid/view/View;
    .end local v7    # "nextViewHeight":I
    .end local v8    # "nextViewTop":I
    .end local v9    # "extraScroll":I
    :cond_f
    :goto_4
    const/4 v14, 0x0

    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v14}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7698
    return-void

    .line 7730
    .end local v3    # "nextViewIndex":I
    .end local v4    # "childCount":I
    :pswitch_3
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v2, v3, :cond_10

    .line 7732
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7733
    return-void

    .line 7736
    :cond_10
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7737
    .local v3, "firstView":Landroid/view/View;
    if-nez v3, :cond_11

    .line 7738
    return-void

    .line 7740
    :cond_11
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    .line 7741
    .local v5, "firstViewTop":I
    if-lez v2, :cond_12

    .line 7742
    iget v6, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_5

    :cond_12
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 7744
    .local v6, "extraScroll":I
    :goto_5
    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v8, v5, v6

    iget v9, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v2, v10, :cond_13

    const/4 v4, 0x1

    nop

    :cond_13
    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7747
    iput v2, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7749
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v2, v4, :cond_18

    .line 7750
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 7661
    .end local v3    # "firstView":Landroid/view/View;
    .end local v5    # "firstViewTop":I
    .end local v6    # "extraScroll":I
    :pswitch_4
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 7662
    .local v3, "lastViewIndex":I
    add-int v5, v2, v3

    .line 7664
    .local v5, "lastPos":I
    if-gez v3, :cond_14

    .line 7665
    return-void

    .line 7668
    :cond_14
    iget v6, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v5, v6, :cond_15

    .line 7670
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7671
    return-void

    .line 7674
    :cond_15
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7675
    .local v6, "lastView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 7676
    .local v7, "lastViewHeight":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    .line 7677
    .local v8, "lastViewTop":I
    sub-int v9, v1, v8

    .line 7678
    .local v9, "lastViewPixelsShowing":I
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v5, v10, :cond_16

    .line 7679
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_6

    :cond_16
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 7681
    .local v10, "extraScroll":I
    :goto_6
    sub-int v11, v7, v9

    add-int/2addr v11, v10

    .line 7682
    .local v11, "scrollBy":I
    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v13, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v14, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v5, v14, :cond_17

    const/4 v4, 0x1

    nop

    :cond_17
    const/4 v14, 0x1

    invoke-virtual {v12, v11, v13, v14, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7684
    iput v5, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7685
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v5, v4, :cond_18

    .line 7686
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7850
    .end local v3    # "lastViewIndex":I
    .end local v5    # "lastPos":I
    .end local v6    # "lastView":Landroid/view/View;
    .end local v7    # "lastViewHeight":I
    .end local v8    # "lastViewTop":I
    .end local v9    # "lastViewPixelsShowing":I
    .end local v10    # "extraScroll":I
    .end local v11    # "scrollBy":I
    :cond_18
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public start(I)V
    .locals 8
    .param p1, "position"    # I

    .line 7412
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7414
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 7416
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7421
    return-void

    .line 7424
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7425
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 7427
    return-void

    .line 7430
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7431
    .local v1, "firstPos":I
    add-int v2, v1, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 7434
    .local v2, "lastPos":I
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 7435
    .local v4, "clampedPosition":I
    const/4 v5, -0x1

    const/16 v6, 0xc8

    if-ge v4, v1, :cond_2

    .line 7436
    sub-int v7, v1, v4

    add-int/2addr v7, v3

    .line 7437
    .local v7, "viewTravelCount":I
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 7438
    .end local v7    # "viewTravelCount":I
    :cond_2
    if-le v4, v2, :cond_4

    .line 7439
    sub-int v7, v4, v2

    add-int/2addr v7, v3

    .line 7440
    .restart local v7    # "viewTravelCount":I
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7443
    :goto_0
    move v3, v7

    .line 7446
    .end local v7    # "viewTravelCount":I
    .local v3, "viewTravelCount":I
    if-lez v3, :cond_3

    .line 7447
    div-int/2addr v6, v3

    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1

    .line 7449
    :cond_3
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7451
    :goto_1
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7452
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7453
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7455
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7456
    return-void

    .line 7442
    .end local v3    # "viewTravelCount":I
    :cond_4
    invoke-direct {p0, v4, v5, v6}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    .line 7443
    return-void
.end method

.method public start(II)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .line 7460
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7462
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 7463
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 7464
    return-void

    .line 7467
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 7469
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7474
    return-void

    .line 7477
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 7478
    .local v1, "childCount":I
    if-nez v1, :cond_2

    .line 7480
    return-void

    .line 7483
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7484
    .local v2, "firstPos":I
    add-int v3, v2, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 7487
    .local v3, "lastPos":I
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 7488
    .local v5, "clampedPosition":I
    const/16 v6, 0xc8

    if-ge v5, v2, :cond_5

    .line 7489
    sub-int v7, v3, p2

    .line 7490
    .local v7, "boundPosFromLast":I
    if-ge v7, v4, :cond_3

    .line 7492
    return-void

    .line 7495
    :cond_3
    sub-int v8, v2, v5

    add-int/2addr v8, v4

    .line 7496
    .local v8, "posTravel":I
    add-int/lit8 v4, v7, -0x1

    .line 7497
    .local v4, "boundTravel":I
    if-ge v4, v8, :cond_4

    .line 7498
    move v9, v4

    .line 7499
    .local v9, "viewTravelCount":I
    const/4 v10, 0x4

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 7501
    .end local v9    # "viewTravelCount":I
    :cond_4
    move v9, v8

    .line 7502
    .restart local v9    # "viewTravelCount":I
    const/4 v10, 0x2

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7504
    .end local v4    # "boundTravel":I
    .end local v7    # "boundPosFromLast":I
    .end local v8    # "posTravel":I
    :goto_0
    goto :goto_1

    .end local v9    # "viewTravelCount":I
    :cond_5
    if-le v5, v3, :cond_9

    .line 7505
    sub-int v7, p2, v2

    .line 7506
    .local v7, "boundPosFromFirst":I
    if-ge v7, v4, :cond_6

    .line 7508
    return-void

    .line 7511
    :cond_6
    sub-int v8, v5, v3

    add-int/2addr v8, v4

    .line 7512
    .restart local v8    # "posTravel":I
    add-int/lit8 v9, v7, -0x1

    .line 7513
    .local v9, "boundTravel":I
    if-ge v9, v8, :cond_7

    .line 7514
    move v4, v9

    .line 7515
    .local v4, "viewTravelCount":I
    const/4 v10, 0x3

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 7517
    .end local v4    # "viewTravelCount":I
    :cond_7
    move v10, v8

    .line 7518
    .local v10, "viewTravelCount":I
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7520
    .end local v7    # "boundPosFromFirst":I
    .end local v8    # "posTravel":I
    .end local v9    # "boundTravel":I
    move v9, v10

    .line 7522
    .end local v10    # "viewTravelCount":I
    .local v9, "viewTravelCount":I
    :goto_1
    move v4, v9

    .line 7525
    .end local v9    # "viewTravelCount":I
    .restart local v4    # "viewTravelCount":I
    if-lez v4, :cond_8

    .line 7526
    div-int/2addr v6, v4

    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2

    .line 7528
    :cond_8
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7530
    :goto_2
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7531
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7532
    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7534
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7535
    return-void

    .line 7521
    .end local v4    # "viewTravelCount":I
    :cond_9
    invoke-direct {p0, v5, p2, v6}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    .line 7522
    return-void
.end method

.method public startWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 7539
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 7540
    return-void
.end method

.method public startWithOffset(III)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .line 7544
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7546
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 7548
    move v0, p2

    .line 7549
    .local v0, "postOffset":I
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v2, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v2, p0, p1, v0, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v2, v1, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7554
    return-void

    .line 7557
    .end local v0    # "postOffset":I
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7558
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 7560
    return-void

    .line 7563
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    .line 7565
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7566
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    .line 7567
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7568
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7569
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7571
    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7572
    .local v4, "firstPos":I
    add-int v5, v4, v0

    sub-int/2addr v5, v2

    .line 7575
    .local v5, "lastPos":I
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v6, v4, :cond_2

    .line 7576
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v2, v4, v2

    .local v2, "viewTravelCount":I
    :goto_0
    goto :goto_1

    .line 7577
    .end local v2    # "viewTravelCount":I
    :cond_2
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v6, v5, :cond_4

    .line 7578
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v2, v5

    goto :goto_0

    .line 7583
    .restart local v2    # "viewTravelCount":I
    :goto_1
    nop

    .line 7587
    int-to-float v3, v2

    int-to-float v6, v0

    div-float/2addr v3, v6

    .line 7588
    .local v3, "screenTravelCount":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v6

    if-gez v6, :cond_3

    .line 7589
    move v6, p3

    goto :goto_2

    :cond_3
    int-to-float v6, p3

    div-float/2addr v6, v3

    float-to-int v6, v6

    :goto_2
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7590
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7592
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7593
    return-void

    .line 7581
    .end local v2    # "viewTravelCount":I
    .end local v3    # "screenTravelCount":F
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v6, v4

    invoke-virtual {v1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 7582
    .local v1, "targetTop":I
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v7, v1, p2

    invoke-virtual {v6, v7, p3, v2, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7583
    return-void
.end method

.method public stop()V
    .locals 1

    .line 7651
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7652
    return-void
.end method
