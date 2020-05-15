.class public Landroid/inputmethodservice/CompactExtractEditLayout;
.super Landroid/widget/LinearLayout;
.source "CompactExtractEditLayout.java"


# instance fields
.field private mInputExtractAccessories:Landroid/view/View;

.field private mInputExtractAction:Landroid/view/View;

.field private mInputExtractEditText:Landroid/view/View;

.field private mPerformLayoutChanges:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method private applyFractionInt(II)I
    .locals 1
    .param p1, "fraction"    # I
    .param p2, "whole"    # I

    .line 70
    invoke-virtual {p0}, Landroid/inputmethodservice/CompactExtractEditLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private applyProportionalLayout(II)V
    .locals 3
    .param p1, "screenWidthPx"    # I
    .param p2, "screenHeightPx"    # I

    .line 86
    invoke-virtual {p0}, Landroid/inputmethodservice/CompactExtractEditLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/CompactExtractEditLayout;->setGravity(I)V

    .line 89
    :cond_0
    const v0, 0x1130006

    invoke-direct {p0, v0, p2}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v0

    invoke-static {p0, v0}, Landroid/inputmethodservice/CompactExtractEditLayout;->setLayoutHeight(Landroid/view/View;I)V

    .line 92
    const v0, 0x1130007

    .line 93
    invoke-direct {p0, v0, p1}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v0

    const v1, 0x1130009

    .line 96
    invoke-direct {p0, v1, p1}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v1

    .line 92
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/inputmethodservice/CompactExtractEditLayout;->setPadding(IIII)V

    .line 100
    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractEditText:Landroid/view/View;

    const v1, 0x113000a

    .line 101
    invoke-direct {p0, v1, p2}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v1

    .line 100
    invoke-static {v0, v1}, Landroid/inputmethodservice/CompactExtractEditLayout;->setLayoutMarginBottom(Landroid/view/View;I)V

    .line 104
    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAccessories:Landroid/view/View;

    const v1, 0x1130005

    .line 105
    invoke-direct {p0, v1, p2}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v1

    .line 104
    invoke-static {v0, v1}, Landroid/inputmethodservice/CompactExtractEditLayout;->setLayoutMarginBottom(Landroid/view/View;I)V

    .line 107
    return-void
.end method

.method private static setLayoutHeight(Landroid/view/View;I)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "px"    # I

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 75
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

.method private static setLayoutMarginBottom(Landroid/view/View;I)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "px"    # I

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 81
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .line 111
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 112
    iget-boolean v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mPerformLayoutChanges:Z

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Landroid/inputmethodservice/CompactExtractEditLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 115
    .local v1, "cfg":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 116
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 117
    .local v3, "widthPixels":I
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 130
    .local v4, "heightPixels":I
    invoke-virtual {v1}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v5

    if-eqz v5, :cond_0

    if-ge v4, v3, :cond_0

    .line 131
    move v4, v3

    .line 133
    :cond_0
    invoke-direct {p0, v3, v4}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyProportionalLayout(II)V

    .line 135
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "cfg":Landroid/content/res/Configuration;
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "widthPixels":I
    .end local v4    # "heightPixels":I
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 59
    const v0, 0x1020025

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/CompactExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractEditText:Landroid/view/View;

    .line 60
    const v0, 0x10202b3

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/CompactExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAccessories:Landroid/view/View;

    .line 61
    const v0, 0x10202b4

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/CompactExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAction:Landroid/view/View;

    .line 63
    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractEditText:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAccessories:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAction:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mPerformLayoutChanges:Z

    .line 67
    :cond_0
    return-void
.end method
