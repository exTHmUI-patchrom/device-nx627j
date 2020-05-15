.class Landroid/media/WebVttParser$3;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 714
    const-class v0, Landroid/media/WebVttParser;

    return-void
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WebVttParser;

    .line 714
    iput-object p1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .line 793
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 794
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v1}, Landroid/media/WebVttParser;->access$600(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    goto :goto_0

    .line 795
    :cond_0
    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v1}, Landroid/media/WebVttParser;->access$700(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 797
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$100(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 800
    .local v0, "colonAt":I
    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    .line 801
    :cond_2
    iget-object v1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v2, "meta data header has invalid format"

    invoke-static {v1, v2, p1}, Landroid/media/WebVttParser;->access$000(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 806
    .local v2, "value":Ljava/lang/String;
    const-string v3, "Region"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 807
    invoke-virtual {p0, v2}, Landroid/media/WebVttParser$3;->parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;

    move-result-object v3

    .line 808
    .local v3, "region":Landroid/media/TextTrackRegion;
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v4}, Landroid/media/WebVttParser;->access$800(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/media/WebVttCueListener;->onRegionParsed(Landroid/media/TextTrackRegion;)V

    .line 811
    .end local v0    # "colonAt":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "region":Landroid/media/TextTrackRegion;
    :cond_4
    :goto_0
    return-void
.end method

.method parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;
    .locals 21
    .param p1, "s"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 716
    new-instance v0, Landroid/media/TextTrackRegion;

    invoke-direct {v0}, Landroid/media/TextTrackRegion;-><init>()V

    move-object v2, v0

    .line 717
    .local v2, "region":Landroid/media/TextTrackRegion;
    const-string v0, " +"

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_c

    aget-object v8, v4, v7

    .line 718
    .local v8, "setting":Ljava/lang/String;
    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 719
    .local v9, "equalAt":I
    if-lez v9, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v9, v0, :cond_0

    .line 720
    goto/16 :goto_5

    .line 723
    :cond_0
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 724
    .local v15, "name":Ljava/lang/String;
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 725
    .local v14, "value":Ljava/lang/String;
    const-string v0, "id"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    iput-object v14, v2, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    goto/16 :goto_5

    .line 727
    :cond_1
    const-string/jumbo v0, "width"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 729
    :try_start_0
    invoke-static {v14}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Landroid/media/TextTrackRegion;->mWidth:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    goto/16 :goto_5

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v11, "region setting"

    const-string v13, "has invalid value"

    .line 732
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 731
    move-object v12, v15

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    .line 731
    .end local v14    # "value":Ljava/lang/String;
    .local v17, "value":Ljava/lang/String;
    move-object v6, v15

    move-object/from16 v15, v17

    .line 731
    .end local v15    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    invoke-static/range {v10 .. v15}, Landroid/media/WebVttParser;->access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    nop

    .line 717
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "setting":Ljava/lang/String;
    .end local v9    # "equalAt":I
    .end local v17    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 734
    .restart local v8    # "setting":Ljava/lang/String;
    .restart local v9    # "equalAt":I
    .restart local v14    # "value":Ljava/lang/String;
    .restart local v15    # "name":Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v14

    move-object v6, v15

    .line 734
    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    const-string/jumbo v0, "lines"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 735
    const-string v0, ".*[^0-9].*"

    move-object/from16 v15, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 735
    .end local v17    # "value":Ljava/lang/String;
    .local v15, "value":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 736
    iget-object v0, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v10, "lines"

    const-string v11, "contains an invalid character"

    invoke-static {v0, v10, v6, v11, v15}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 739
    :cond_4
    :try_start_1
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/media/TextTrackRegion;->mLines:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 740
    goto :goto_2

    .line 741
    :catch_1
    move-exception v0

    .line 742
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v11, "region setting"

    const-string v12, "is not numeric"

    invoke-static {v10, v11, v6, v12, v15}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "setting":Ljava/lang/String;
    .end local v9    # "equalAt":I
    .end local v15    # "value":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 745
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "setting":Ljava/lang/String;
    .restart local v9    # "equalAt":I
    .restart local v17    # "value":Ljava/lang/String;
    :cond_5
    move-object/from16 v15, v17

    .line 745
    .end local v17    # "value":Ljava/lang/String;
    .restart local v15    # "value":Ljava/lang/String;
    const-string/jumbo v0, "regionanchor"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "viewportanchor"

    .line 746
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 779
    :cond_6
    const-string/jumbo v0, "scroll"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    const-string/jumbo v0, "up"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 781
    const/16 v0, 0x12d

    iput v0, v2, Landroid/media/TextTrackRegion;->mScrollValue:I

    goto :goto_1

    .line 784
    :cond_7
    iget-object v0, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v10, "region setting"

    const-string v11, "has invalid value"

    invoke-static {v0, v10, v6, v11, v15}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "setting":Ljava/lang/String;
    .end local v9    # "equalAt":I
    .end local v15    # "value":Ljava/lang/String;
    goto :goto_1

    .line 747
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "setting":Ljava/lang/String;
    .restart local v9    # "equalAt":I
    .restart local v15    # "value":Ljava/lang/String;
    :cond_8
    :goto_3
    const-string v0, ","

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 748
    .local v14, "commaAt":I
    if-gez v14, :cond_9

    .line 749
    iget-object v0, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v10, "region setting"

    const-string v11, "contains no comma"

    invoke-static {v0, v10, v6, v11, v15}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    goto/16 :goto_1

    .line 753
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v15, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 754
    .local v13, "anchorX":Ljava/lang/String;
    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 758
    .local v12, "anchorY":Ljava/lang/String;
    :try_start_2
    invoke-static {v13}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    move v11, v0

    .line 763
    .local v11, "x":F
    nop

    .line 762
    nop

    .line 765
    :try_start_3
    invoke-static {v12}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 770
    .local v0, "y":F
    nop

    .line 769
    nop

    .line 772
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v10, 0x72

    if-ne v3, v10, :cond_a

    .line 773
    iput v11, v2, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 774
    iput v0, v2, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    goto :goto_4

    .line 776
    :cond_a
    iput v11, v2, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 777
    iput v0, v2, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    .line 779
    .end local v0    # "y":F
    .end local v11    # "x":F
    .end local v12    # "anchorY":Ljava/lang/String;
    .end local v13    # "anchorX":Ljava/lang/String;
    .end local v14    # "commaAt":I
    :goto_4
    goto/16 :goto_1

    .line 766
    .restart local v11    # "x":F
    .restart local v12    # "anchorY":Ljava/lang/String;
    .restart local v13    # "anchorX":Ljava/lang/String;
    .restart local v14    # "commaAt":I
    :catch_2
    move-exception v0

    move-object v3, v0

    .line 767
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    const-string v16, "has invalid y component"

    .line 768
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 767
    const/16 v18, 0x0

    move/from16 v19, v11

    move-object v11, v3

    .line 767
    .end local v11    # "x":F
    .local v19, "x":F
    move-object v3, v12

    move-object v12, v6

    .line 767
    .end local v12    # "anchorY":Ljava/lang/String;
    .local v3, "anchorY":Ljava/lang/String;
    move-object/from16 v20, v13

    move-object/from16 v13, v16

    .line 767
    .end local v13    # "anchorX":Ljava/lang/String;
    .local v20, "anchorX":Ljava/lang/String;
    move/from16 v16, v14

    move-object/from16 v14, v17

    .line 767
    .end local v14    # "commaAt":I
    .local v16, "commaAt":I
    move-object/from16 v17, v15

    move-object v15, v3

    .line 767
    .end local v15    # "value":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    invoke-static/range {v10 .. v15}, Landroid/media/WebVttParser;->access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    goto :goto_6

    .line 759
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "anchorY":Ljava/lang/String;
    .end local v16    # "commaAt":I
    .end local v17    # "value":Ljava/lang/String;
    .end local v19    # "x":F
    .end local v20    # "anchorX":Ljava/lang/String;
    .restart local v12    # "anchorY":Ljava/lang/String;
    .restart local v13    # "anchorX":Ljava/lang/String;
    .restart local v14    # "commaAt":I
    .restart local v15    # "value":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v3, v12

    move-object/from16 v20, v13

    move/from16 v16, v14

    move-object/from16 v17, v15

    const/16 v18, 0x0

    .line 759
    .end local v12    # "anchorY":Ljava/lang/String;
    .end local v13    # "anchorX":Ljava/lang/String;
    .end local v14    # "commaAt":I
    .end local v15    # "value":Ljava/lang/String;
    .restart local v3    # "anchorY":Ljava/lang/String;
    .restart local v16    # "commaAt":I
    .restart local v17    # "value":Ljava/lang/String;
    .restart local v20    # "anchorX":Ljava/lang/String;
    move-object v10, v0

    .line 760
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v11, "region setting"

    const-string v13, "has invalid x component"

    .line 761
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 760
    move-object v12, v6

    move-object/from16 v15, v20

    invoke-static/range {v10 .. v15}, Landroid/media/WebVttParser;->access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    goto :goto_6

    .line 717
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "anchorY":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "setting":Ljava/lang/String;
    .end local v9    # "equalAt":I
    .end local v16    # "commaAt":I
    .end local v17    # "value":Ljava/lang/String;
    .end local v20    # "anchorX":Ljava/lang/String;
    :cond_b
    :goto_5
    move/from16 v18, v6

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v18

    move-object/from16 v3, p1

    goto/16 :goto_0

    .line 788
    :cond_c
    return-object v2
.end method
