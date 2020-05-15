.class Landroid/widget/StackView$StackSlider;
.super Ljava/lang/Object;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackSlider"
.end annotation


# static fields
.field static final BEGINNING_OF_STACK_MODE:I = 0x1

.field static final END_OF_STACK_MODE:I = 0x2

.field static final NORMAL_MODE:I


# instance fields
.field mMode:I

.field mView:Landroid/view/View;

.field mXProgress:F

.field mYProgress:F

.field final synthetic this$0:Landroid/widget/StackView;


# direct methods
.method public constructor <init>(Landroid/widget/StackView;)V
    .locals 0

    .line 905
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 906
    return-void
.end method

.method public constructor <init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V
    .locals 0
    .param p2, "copy"    # Landroid/widget/StackView$StackSlider;

    .line 908
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 909
    iget-object p1, p2, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 910
    iget p1, p2, Landroid/widget/StackView$StackSlider;->mYProgress:F

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    .line 911
    iget p1, p2, Landroid/widget/StackView$StackSlider;->mXProgress:F

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    .line 912
    iget p1, p2, Landroid/widget/StackView$StackSlider;->mMode:I

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 913
    return-void
.end method

.method private cubic(F)F
    .locals 5
    .param p1, "r"    # F

    .line 916
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    double-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private getDuration(ZF)F
    .locals 7
    .param p1, "invert"    # Z
    .param p2, "velocity"    # F

    .line 1048
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1049
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .line 1051
    .local v0, "viewLp":Landroid/widget/StackView$LayoutParams;
    iget v2, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    int-to-double v2, v2

    iget v4, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1052
    .local v2, "d":F
    iget-object v3, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v3}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v3

    int-to-double v3, v3

    const v5, 0x3ecccccd    # 0.4f

    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v6}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 1053
    .local v3, "maxd":F
    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    .line 1056
    move v2, v3

    .line 1059
    :cond_0
    cmpl-float v4, p2, v1

    const/high16 v5, 0x43c80000    # 400.0f

    if-nez v4, :cond_2

    .line 1060
    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v4, v2, v3

    sub-float/2addr v1, v4

    goto :goto_0

    :cond_1
    div-float v1, v2, v3

    :goto_0
    mul-float/2addr v1, v5

    return v1

    .line 1062
    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float v4, v2, v4

    goto :goto_1

    .line 1063
    :cond_3
    sub-float v4, v3, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v4, v6

    .line 1064
    .local v4, "duration":F
    :goto_1
    const/high16 v6, 0x42480000    # 50.0f

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    goto :goto_2

    .line 1068
    :cond_4
    return v4

    .line 1066
    :cond_5
    :goto_2
    invoke-direct {p0, p1, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v1

    return v1

    .line 1072
    .end local v0    # "viewLp":Landroid/widget/StackView$LayoutParams;
    .end local v2    # "d":F
    .end local v3    # "maxd":F
    .end local v4    # "duration":F
    :cond_6
    return v1
.end method

.method private highlightAlphaInterpolator(F)F
    .locals 5
    .param p1, "r"    # F

    .line 920
    const v0, 0x3ecccccd    # 0.4f

    .line 921
    .local v0, "pivot":F
    cmpg-float v1, p1, v0

    const v2, 0x3f59999a    # 0.85f

    if-gez v1, :cond_0

    .line 922
    div-float v1, p1, v0

    invoke-direct {p0, v1}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    move-result v1

    mul-float/2addr v2, v1

    return v2

    .line 924
    :cond_0
    sub-float v1, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v0

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    invoke-direct {p0, v3}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    move-result v1

    mul-float/2addr v2, v1

    return v2
.end method

.method private rotationInterpolator(F)F
    .locals 3
    .param p1, "r"    # F

    .line 938
    const v0, 0x3e4ccccd    # 0.2f

    .line 939
    .local v0, "pivot":F
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 940
    const/4 v1, 0x0

    return v1

    .line 942
    :cond_0
    sub-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method private viewAlphaInterpolator(F)F
    .locals 3
    .param p1, "r"    # F

    .line 929
    const v0, 0x3e99999a    # 0.3f

    .line 930
    .local v0, "pivot":F
    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 931
    sub-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    return v1

    .line 933
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method getDurationForNeutralPosition()F
    .locals 2

    .line 1032
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForNeutralPosition(F)F
    .locals 1
    .param p1, "velocity"    # F

    .line 1040
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForOffscreenPosition()F
    .locals 2

    .line 1036
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForOffscreenPosition(F)F
    .locals 1
    .param p1, "velocity"    # F

    .line 1044
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method public getXProgress()F
    .locals 1

    .line 1084
    iget v0, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    return v0
.end method

.method public getYProgress()F
    .locals 1

    .line 1078
    iget v0, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    return v0
.end method

.method setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 1028
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 1029
    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 947
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 948
    return-void
.end method

.method public setXProgress(F)V
    .locals 3
    .param p1, "r"    # F

    .line 1013
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1014
    const/high16 v0, -0x40000000    # -2.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1016
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    .line 1018
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1019
    :cond_0
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .line 1020
    .local v0, "viewLp":Landroid/widget/StackView$LayoutParams;
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .line 1022
    .local v1, "highlightLp":Landroid/widget/StackView$LayoutParams;
    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v2

    .line 1023
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v2}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1024
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v2}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1025
    return-void
.end method

.method public setYProgress(F)V
    .locals 9
    .param p1, "r"    # F

    .line 952
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 953
    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 955
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    .line 956
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-nez v2, :cond_0

    return-void

    .line 958
    :cond_0
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/StackView$LayoutParams;

    .line 959
    .local v2, "viewLp":Landroid/widget/StackView$LayoutParams;
    iget-object v3, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v3}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/StackView$LayoutParams;

    .line 961
    .local v3, "highlightLp":Landroid/widget/StackView$LayoutParams;
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v4}, Landroid/widget/StackView;->access$100(Landroid/widget/StackView;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    .line 965
    .local v4, "stackDirection":I
    :goto_0
    iget v5, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_2

    .line 966
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayerType()I

    move-result v5

    if-nez v5, :cond_3

    .line 967
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v8, 0x2

    invoke-virtual {v5, v8, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    .line 970
    :cond_2
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayerType()I

    move-result v5

    if-eqz v5, :cond_3

    .line 971
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 975
    :cond_3
    :goto_1
    iget v5, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    const v7, 0x3e4ccccd    # 0.2f

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    .line 997
    :pswitch_0
    mul-float/2addr p1, v7

    .line 998
    neg-int v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 999
    neg-int v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1000
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v0}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1001
    goto/16 :goto_3

    .line 1003
    :pswitch_1
    sub-float/2addr v0, p1

    mul-float p1, v0, v7

    .line 1004
    int-to-float v0, v4

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1005
    int-to-float v0, v4

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1006
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v0}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_3

    .line 977
    :pswitch_2
    neg-float v5, p1

    int-to-float v7, v4

    mul-float/2addr v5, v7

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v7}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 978
    neg-float v5, p1

    int-to-float v7, v4

    mul-float/2addr v5, v7

    iget-object v7, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v7}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 979
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v5}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 981
    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->viewAlphaInterpolator(F)F

    move-result v0

    .line 985
    .local v0, "alpha":F
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v1

    if-nez v5, :cond_4

    cmpl-float v5, v0, v1

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_4

    .line 986
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 987
    :cond_4
    cmpl-float v5, v0, v1

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v1, v5, v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 988
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 989
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 992
    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 993
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    int-to-float v5, v4

    const/high16 v6, 0x42b40000    # 90.0f

    mul-float/2addr v5, v6

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    move-result v7

    mul-float/2addr v5, v7

    invoke-virtual {v1, v5}, Landroid/view/View;->setRotationX(F)V

    .line 994
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v1

    int-to-float v5, v4

    mul-float/2addr v5, v6

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 995
    nop

    .line 1009
    .end local v0    # "alpha":F
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
