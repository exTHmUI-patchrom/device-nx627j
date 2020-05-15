.class public Lcom/android/internal/widget/NumericTextView;
.super Landroid/widget/TextView;
.source "NumericTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_RADIX:D

.field private static final RADIX:I = 0xa


# instance fields
.field private mCount:I

.field private mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

.field private mMaxCount:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mPreviousValue:I

.field private mShowLeadingZeroes:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/widget/NumericTextView;->LOG_RADIX:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    .line 39
    const/16 v1, 0x63

    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    .line 42
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 61
    .local v0, "textColorDisabled":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setHintTextColor(I)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NumericTextView;->setFocusable(Z)V

    .line 64
    return-void
.end method

.method private handleKeyUp(I)Z
    .locals 6
    .param p1, "keyCode"    # I

    .line 262
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    .line 264
    iget v2, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    if-lez v2, :cond_2

    .line 265
    iget v2, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    div-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 266
    iget v2, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 269
    iget v2, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    if-ge v2, v3, :cond_2

    .line 270
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->numericKeyCodeToInt(I)I

    move-result v2

    .line 271
    .local v2, "keyValue":I
    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v2

    .line 272
    .local v3, "newValue":I
    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-gt v3, v4, :cond_1

    .line 273
    iput v3, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 274
    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 276
    .end local v2    # "keyValue":I
    .end local v3    # "newValue":I
    :cond_1
    nop

    .line 282
    :cond_2
    :goto_0
    iget v2, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    if-lez v2, :cond_3

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "formattedValue":Ljava/lang/String;
    goto :goto_1

    .line 288
    .end local v2    # "formattedValue":Ljava/lang/String;
    :cond_3
    const-string v2, ""

    .line 291
    .restart local v2    # "formattedValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v3, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    if-eqz v3, :cond_7

    .line 294
    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    if-lt v3, v4, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v0

    .line 295
    .local v3, "isValid":Z
    :goto_2
    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    if-ge v4, v5, :cond_6

    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    mul-int/lit8 v4, v4, 0xa

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-le v4, v5, :cond_5

    goto :goto_3

    :cond_5
    goto :goto_4

    :cond_6
    :goto_3
    move v0, v1

    .line 296
    .local v0, "isFinished":Z
    :goto_4
    iget-object v4, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-interface {v4, p0, v5, v3, v0}, Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V

    .line 299
    .end local v0    # "isFinished":Z
    .end local v3    # "isValid":Z
    :cond_7
    return v1

    .line 278
    .end local v2    # "formattedValue":Ljava/lang/String;
    :cond_8
    return v0
.end method

.method private static isKeyCodeNumeric(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 303
    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static numericKeyCodeToInt(I)I
    .locals 1
    .param p0, "keyCode"    # I

    .line 311
    add-int/lit8 v0, p0, -0x7

    return v0
.end method

.method private updateDisplayedValue()V
    .locals 4

    .line 197
    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "format":Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    const-string v0, "%d"

    .line 205
    .restart local v0    # "format":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method private updateMinimumWidth()V
    .locals 7

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 216
    .local v0, "previousText":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 218
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "maxWidth":I
    :goto_0
    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-ge v1, v4, :cond_1

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/widget/NumericTextView;->measure(II)V

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getMeasuredWidth()I

    move-result v4

    .line 223
    .local v4, "width":I
    if-le v4, v3, :cond_0

    .line 224
    move v3, v4

    .line 218
    .end local v4    # "width":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NumericTextView;->setMinWidth(I)V

    .line 230
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NumericTextView;->setMinimumWidth(I)V

    .line 231
    return-void
.end method


# virtual methods
.method public final getOnDigitEnteredListener()Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    return-object v0
.end method

.method public final getRangeMaximum()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    return v0
.end method

.method public final getRangeMinimum()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    return v0
.end method

.method public final getShowLeadingZeroes()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 68
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mPreviousValue:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 73
    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 77
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    if-nez v0, :cond_1

    .line 81
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mPreviousValue:I

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 88
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    if-ge v0, v1, :cond_2

    .line 89
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 92
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2, v2}, Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V

    .line 98
    :cond_3
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 243
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    .line 245
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 243
    :goto_1
    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 250
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    .line 252
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 250
    :goto_1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 257
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NumericTextView;->handleKeyUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 257
    :goto_1
    return v0
.end method

.method public final setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    .line 234
    iput-object p1, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    .line 235
    return-void
.end method

.method public final setRange(II)V
    .locals 5
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I

    .line 136
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    if-eq v0, p1, :cond_0

    .line 137
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    .line 140
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-eq v0, p2, :cond_1

    .line 141
    iput p2, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    .line 142
    const/4 v0, 0x1

    int-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    sget-wide v3, Lcom/android/internal/widget/NumericTextView;->LOG_RADIX:D

    div-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    .line 144
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateMinimumWidth()V

    .line 145
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    .line 147
    :cond_1
    return-void
.end method

.method public final setShowLeadingZeroes(Z)V
    .locals 1
    .param p1, "showLeadingZeroes"    # Z

    .line 178
    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eq v0, p1, :cond_0

    .line 179
    iput-boolean p1, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    .line 181
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    .line 183
    :cond_0
    return-void
.end method

.method public final setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 110
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    if-eq v0, p1, :cond_0

    .line 111
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 113
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    .line 115
    :cond_0
    return-void
.end method
