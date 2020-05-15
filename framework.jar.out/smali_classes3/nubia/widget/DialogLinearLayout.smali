.class public Lnubia/widget/DialogLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DialogLinearLayout.java"


# instance fields
.field private mMaxHeight:F

.field private mMaxHeightRatio:F

.field private mSplitMaxHeight:F

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/DialogLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/DialogLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lnubia/widget/DialogLinearLayout;->mMaxHeightRatio:F

    .line 37
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/DialogLinearLayout;->mWindowManager:Landroid/view/IWindowManager;

    .line 40
    sget-object v0, Lcn/nubia/internal/R$styleable;->nubiaDialogLinearLayout:[I

    .line 41
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, "ta":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 43
    const/4 v1, 0x0

    iget v2, p0, Lnubia/widget/DialogLinearLayout;->mMaxHeightRatio:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lnubia/widget/DialogLinearLayout;->mMaxHeightRatio:F

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3060032

    .line 48
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lnubia/widget/DialogLinearLayout;->mSplitMaxHeight:F

    .line 49
    return-void
.end method

.method private getAbsScreenWidth()I
    .locals 3

    .line 86
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 87
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Lnubia/widget/DialogLinearLayout;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, v0, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 88
    iget v2, v1, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 91
    .end local v1    # "size":Landroid/graphics/Point;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 89
    :catch_1
    move-exception v1

    .line 90
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 93
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 95
    :goto_0
    return v0
.end method

.method private getDensity()I
    .locals 2

    .line 99
    invoke-virtual {p0}, Lnubia/widget/DialogLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 100
    .local v0, "metric":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v1, v1, 0xa0

    return v1
.end method

.method private getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 81
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    return v1
.end method

.method private isLandScreen()Z
    .locals 2

    .line 76
    invoke-virtual {p0}, Lnubia/widget/DialogLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 53
    invoke-virtual {p0}, Lnubia/widget/DialogLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/widget/DialogLinearLayout;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 54
    .local v0, "sceenHeight":I
    invoke-direct {p0}, Lnubia/widget/DialogLinearLayout;->getAbsScreenWidth()I

    move-result v1

    .line 56
    .local v1, "absScreenWidth":I
    iget v2, p0, Lnubia/widget/DialogLinearLayout;->mMaxHeightRatio:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    .line 57
    .local v2, "calHeight":F
    iget v3, p0, Lnubia/widget/DialogLinearLayout;->mSplitMaxHeight:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    iget v3, p0, Lnubia/widget/DialogLinearLayout;->mSplitMaxHeight:F

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput v3, p0, Lnubia/widget/DialogLinearLayout;->mMaxHeight:F

    .line 59
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 60
    .local v3, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 61
    .local v4, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 62
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 64
    .local v6, "widthSize":I
    if-le v6, v1, :cond_1

    .line 65
    invoke-direct {p0}, Lnubia/widget/DialogLinearLayout;->getDensity()I

    move-result v7

    mul-int/lit8 v7, v7, 0x14

    sub-int v6, v1, v7

    .line 68
    :cond_1
    int-to-float v7, v4

    iget v8, p0, Lnubia/widget/DialogLinearLayout;->mMaxHeight:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    iget v7, p0, Lnubia/widget/DialogLinearLayout;->mMaxHeight:F

    float-to-int v7, v7

    :goto_1
    move v4, v7

    .line 69
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 70
    .local v7, "maxHeightMeasureSpec":I
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 72
    .local v8, "maxWidthMeasureSpec":I
    invoke-super {p0, v8, v7}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 73
    return-void
.end method
