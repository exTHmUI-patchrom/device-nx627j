.class public Landroid/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final THUMB_POS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/widget/Switch;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mUseFallbackLineSpacing:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 166
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    .line 1458
    new-instance v0, Landroid/widget/Switch$1;

    const-string/jumbo v1, "thumbPos"

    invoke-direct {v0, v1}, Landroid/widget/Switch$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 187
    const v0, 0x101043f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 222
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 98
    iput-object v0, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    .line 100
    iput-boolean v1, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    .line 103
    iput-object v0, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 104
    iput-object v0, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 105
    iput-boolean v1, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    .line 106
    iput-boolean v1, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    .line 121
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 163
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 224
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 226
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 227
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 228
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 230
    sget-object v4, Lcom/android/internal/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 232
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 233
    iget-object v5, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 234
    iget-object v5, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 236
    :cond_0
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    iget-object v5, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 238
    iget-object v5, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 240
    :cond_1
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 241
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 242
    const/16 v5, 0xb

    invoke-virtual {v4, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/Switch;->mShowText:Z

    .line 243
    const/4 v5, 0x7

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 245
    const/4 v5, 0x5

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 247
    const/4 v5, 0x6

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 249
    const/16 v5, 0x8

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/Switch;->mSplitTrack:Z

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    iput-boolean v5, p0, Landroid/widget/Switch;->mUseFallbackLineSpacing:Z

    .line 253
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 255
    .local v5, "thumbTintList":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_3

    .line 256
    iput-object v5, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 257
    iput-boolean v3, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    .line 259
    :cond_3
    const/16 v6, 0xa

    .line 260
    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 259
    invoke-static {v6, v0}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 261
    .local v6, "thumbTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v8, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v8, v6, :cond_4

    .line 262
    iput-object v6, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 263
    iput-boolean v3, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    .line 265
    :cond_4
    iget-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v8, :cond_6

    .line 266
    :cond_5
    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    .line 269
    :cond_6
    const/16 v8, 0xc

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 271
    .local v8, "trackTintList":Landroid/content/res/ColorStateList;
    if-eqz v8, :cond_7

    .line 272
    iput-object v8, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 273
    iput-boolean v3, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    .line 275
    :cond_7
    const/16 v9, 0xd

    .line 276
    invoke-virtual {v4, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 275
    invoke-static {v7, v0}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 277
    .local v0, "trackTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v7, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v7, v0, :cond_8

    .line 278
    iput-object v0, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 279
    iput-boolean v3, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    .line 281
    :cond_8
    iget-boolean v3, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v3, :cond_a

    .line 282
    :cond_9
    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    .line 285
    :cond_a
    const/4 v3, 0x3

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 287
    .local v1, "appearance":I
    if-eqz v1, :cond_b

    .line 288
    invoke-virtual {p0, p1, v1}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 290
    :cond_b
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 293
    .local v3, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    .line 294
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    iput v7, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    .line 297
    invoke-virtual {p0}, Landroid/widget/Switch;->refreshDrawableState()V

    .line 298
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 299
    return-void
.end method

.method static synthetic access$000(Landroid/widget/Switch;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/Switch;

    .line 84
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    return v0
.end method

.method static synthetic access$100(Landroid/widget/Switch;F)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Switch;
    .param p1, "x1"    # F

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/Switch;->setThumbPosition(F)V

    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 5
    .param p1, "newCheckedState"    # Z

    .line 1046
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1047
    .local v0, "targetPosition":F
    :goto_0
    sget-object v1, Landroid/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1048
    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1049
    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1050
    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1051
    return-void
.end method

.method private applyThumbTint()V
    .locals 2

    .line 714
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    .line 715
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 717
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 721
    :cond_1
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 722
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 727
    :cond_2
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 728
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 731
    :cond_3
    return-void
.end method

.method private applyTrackTint()V
    .locals 2

    .line 591
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v0, :cond_3

    .line 592
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 594
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 598
    :cond_1
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 604
    :cond_2
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 605
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 608
    :cond_3
    return-void
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .line 1054
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1057
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1006
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1007
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1008
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1009
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1010
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .line 1060
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getThumbOffset()I
    .locals 3

    .line 1312
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/widget/Switch;->mThumbPosition:F

    sub-float/2addr v0, v1

    .local v0, "thumbPosition":F
    goto :goto_0

    .line 1315
    .end local v0    # "thumbPosition":F
    :cond_0
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 1317
    .restart local v0    # "thumbPosition":F
    :goto_0
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getThumbScrollRange()I
    .locals 4

    .line 1321
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1322
    iget-object v0, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1323
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1326
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1327
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    .local v1, "insets":Landroid/graphics/Insets;
    goto :goto_0

    .line 1329
    .end local v1    # "insets":Landroid/graphics/Insets;
    :cond_0
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1332
    .restart local v1    # "insets":Landroid/graphics/Insets;
    :goto_0
    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iget v3, p0, Landroid/widget/Switch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v2, v3

    return v2

    .line 1335
    .end local v0    # "padding":Landroid/graphics/Rect;
    .end local v1    # "insets":Landroid/graphics/Insets;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 910
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 911
    return v1

    .line 915
    :cond_0
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbOffset()I

    move-result v0

    .line 917
    .local v0, "thumbOffset":I
    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 918
    iget v2, p0, Landroid/widget/Switch;->mSwitchTop:I

    iget v3, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int/2addr v2, v3

    .line 919
    .local v2, "thumbTop":I
    iget v3, p0, Landroid/widget/Switch;->mSwitchLeft:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int/2addr v3, v4

    .line 920
    .local v3, "thumbLeft":I
    iget v4, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v4, v3

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int/2addr v4, v5

    .line 922
    .local v4, "thumbRight":I
    iget v5, p0, Landroid/widget/Switch;->mSwitchBottom:I

    iget v6, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int/2addr v5, v6

    .line 923
    .local v5, "thumbBottom":I
    int-to-float v6, v3

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1

    int-to-float v6, v4

    cmpg-float v6, p1, v6

    if-gez v6, :cond_1

    int-to-float v6, v2

    cmpl-float v6, p2, v6

    if-lez v6, :cond_1

    int-to-float v6, v5

    cmpg-float v6, p2, v6

    if-gez v6, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 895
    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 897
    :cond_0
    move-object v0, p1

    .line 899
    .local v0, "transformed":Ljava/lang/CharSequence;
    :goto_0
    nop

    .line 900
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/Switch;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v3

    .line 899
    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 901
    .local v1, "width":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v4, v2, v3, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/widget/Switch;->mUseFallbackLineSpacing:Z

    .line 902
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 903
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    .line 901
    return-object v2
.end method

.method private onProvideAutoFillStructureForAssistOrAutofill(Landroid/view/ViewStructure;)V
    .locals 4
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .line 1425
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 1426
    .local v0, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1427
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1428
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1429
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1431
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1432
    .local v2, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1433
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    .end local v2    # "newText":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 366
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 362
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 363
    goto :goto_0

    .line 358
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 359
    nop

    .line 370
    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 371
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setThumbPosition(F)V
    .locals 0
    .param p1, "position"    # F

    .line 1069
    iput p1, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 1070
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 1071
    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1018
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 1022
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1023
    .local v1, "commitChange":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    .line 1025
    .local v3, "oldState":Z
    if-eqz v1, :cond_4

    .line 1026
    iget-object v4, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1027
    iget-object v4, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 1028
    .local v4, "xvel":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 1029
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    cmpg-float v5, v4, v6

    if-gez v5, :cond_1

    :goto_1
    goto :goto_2

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    cmpl-float v5, v4, v6

    if-lez v5, :cond_1

    goto :goto_1

    .local v2, "newState":Z
    :goto_2
    goto :goto_3

    .line 1031
    .end local v2    # "newState":Z
    :cond_3
    invoke-direct {p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v2

    .line 1033
    .end local v4    # "xvel":F
    .restart local v2    # "newState":Z
    :goto_3
    goto :goto_4

    .line 1034
    .end local v2    # "newState":Z
    :cond_4
    move v2, v3

    .line 1037
    .restart local v2    # "newState":Z
    :goto_4
    if-eq v2, v3, :cond_5

    .line 1038
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->playSoundEffect(I)V

    .line 1041
    :cond_5
    invoke-virtual {p0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1042
    invoke-direct {p0, p1}, Landroid/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 1043
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1153
    iget-object v0, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1154
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 1155
    .local v1, "switchLeft":I
    iget v2, p0, Landroid/widget/Switch;->mSwitchTop:I

    .line 1156
    .local v2, "switchTop":I
    iget v3, p0, Landroid/widget/Switch;->mSwitchRight:I

    .line 1157
    .local v3, "switchRight":I
    iget v4, p0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 1159
    .local v4, "switchBottom":I
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 1162
    .local v5, "thumbInitialLeft":I
    iget-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 1163
    iget-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v6

    .local v6, "thumbInsets":Landroid/graphics/Insets;
    goto :goto_0

    .line 1165
    .end local v6    # "thumbInsets":Landroid/graphics/Insets;
    :cond_0
    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1169
    .restart local v6    # "thumbInsets":Landroid/graphics/Insets;
    :goto_0
    iget-object v7, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    .line 1170
    iget-object v7, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1173
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    .line 1176
    move v7, v1

    .line 1177
    .local v7, "trackLeft":I
    move v8, v2

    .line 1178
    .local v8, "trackTop":I
    move v9, v3

    .line 1179
    .local v9, "trackRight":I
    move v10, v4

    .line 1180
    .local v10, "trackBottom":I
    sget-object v11, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq v6, v11, :cond_4

    .line 1181
    iget v11, v6, Landroid/graphics/Insets;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-le v11, v12, :cond_1

    .line 1182
    iget v11, v6, Landroid/graphics/Insets;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    add-int/2addr v7, v11

    .line 1184
    :cond_1
    iget v11, v6, Landroid/graphics/Insets;->top:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    if-le v11, v12, :cond_2

    .line 1185
    iget v11, v6, Landroid/graphics/Insets;->top:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v8, v11

    .line 1187
    :cond_2
    iget v11, v6, Landroid/graphics/Insets;->right:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    if-le v11, v12, :cond_3

    .line 1188
    iget v11, v6, Landroid/graphics/Insets;->right:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    sub-int/2addr v9, v11

    .line 1190
    :cond_3
    iget v11, v6, Landroid/graphics/Insets;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v12, :cond_4

    .line 1191
    iget v11, v6, Landroid/graphics/Insets;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 1194
    :cond_4
    iget-object v11, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1198
    .end local v7    # "trackLeft":I
    .end local v8    # "trackTop":I
    .end local v9    # "trackRight":I
    .end local v10    # "trackBottom":I
    :cond_5
    iget-object v7, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 1199
    iget-object v7, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1201
    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v5, v7

    .line 1202
    .local v7, "thumbLeft":I
    iget v8, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v8, v5

    iget v9, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    .line 1203
    .local v8, "thumbRight":I
    iget-object v9, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v7, v2, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1205
    invoke-virtual {p0}, Landroid/widget/Switch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1206
    .local v9, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_6

    .line 1207
    invoke-virtual {v9, v7, v2, v8, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1212
    .end local v7    # "thumbLeft":I
    .end local v8    # "thumbRight":I
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1213
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1372
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1374
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1378
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1379
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1381
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .line 1350
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1352
    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 1353
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 1355
    .local v1, "changed":Z
    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1356
    .local v2, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1357
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1360
    :cond_0
    iget-object v3, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1361
    .local v3, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1362
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1365
    :cond_1
    if-eqz v1, :cond_2

    .line 1366
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 1368
    :cond_2
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1408
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 1282
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1283
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 1285
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1286
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1287
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1289
    :cond_1
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 1294
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 1297
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1298
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1299
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1301
    :cond_1
    return v0
.end method

.method public getShowText()Z
    .locals 1

    .line 812
    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .line 753
    iget-boolean v0, p0, Landroid/widget/Switch;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .line 464
    iget v0, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .line 439
    iget v0, p0, Landroid/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 781
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 762
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 650
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .line 487
    iget v0, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 681
    iget-object v0, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 710
    iget-object v0, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 527
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 558
    iget-object v0, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 587
    iget-object v0, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1390
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1392
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1396
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1397
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1400
    :cond_1
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1401
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1402
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1404
    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 1341
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1342
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1343
    sget-object v1, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 1345
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 1217
    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1219
    iget-object v2, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1220
    .local v2, "padding":Landroid/graphics/Rect;
    iget-object v3, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1221
    .local v3, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1222
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1224
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1227
    :goto_0
    iget v4, v0, Landroid/widget/Switch;->mSwitchTop:I

    .line 1228
    .local v4, "switchTop":I
    iget v5, v0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 1229
    .local v5, "switchBottom":I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    .line 1230
    .local v6, "switchInnerTop":I
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v5, v7

    .line 1232
    .local v7, "switchInnerBottom":I
    iget-object v8, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1233
    .local v8, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 1234
    iget-boolean v9, v0, Landroid/widget/Switch;->mSplitTrack:Z

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    .line 1235
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v9

    .line 1236
    .local v9, "insets":Landroid/graphics/Insets;
    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1237
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Insets;->left:I

    add-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->left:I

    .line 1238
    iget v10, v2, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Insets;->right:I

    sub-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->right:I

    .line 1240
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1241
    .local v10, "saveCount":I
    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1242
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1243
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1244
    .end local v9    # "insets":Landroid/graphics/Insets;
    .end local v10    # "saveCount":I
    goto :goto_1

    .line 1245
    :cond_1
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1249
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 1251
    .local v9, "saveCount":I
    if-eqz v8, :cond_3

    .line 1252
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1255
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    goto :goto_2

    :cond_4
    iget-object v10, v0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 1256
    .local v10, "switchText":Landroid/text/Layout;
    :goto_2
    if-eqz v10, :cond_7

    .line 1257
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v11

    .line 1258
    .local v11, "drawableState":[I
    iget-object v12, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_5

    .line 1259
    iget-object v12, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v13, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    const/4 v14, 0x0

    invoke-virtual {v13, v11, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 1261
    :cond_5
    iget-object v12, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iput-object v11, v12, Landroid/text/TextPaint;->drawableState:[I

    .line 1264
    if-eqz v8, :cond_6

    .line 1265
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 1266
    .local v12, "bounds":Landroid/graphics/Rect;
    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v14, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    .line 1267
    .end local v12    # "bounds":Landroid/graphics/Rect;
    .local v13, "cX":I
    goto :goto_3

    .line 1268
    .end local v13    # "cX":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getWidth()I

    move-result v13

    .restart local v13    # "cX":I
    :goto_3
    move v12, v13

    .line 1271
    .end local v13    # "cX":I
    .local v12, "cX":I
    div-int/lit8 v13, v12, 0x2

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    .line 1272
    .local v13, "left":I
    add-int v14, v6, v7

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    .line 1273
    .local v14, "top":I
    int-to-float v15, v13

    int-to-float v0, v14

    invoke-virtual {v1, v15, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1274
    invoke-virtual {v10, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1277
    .end local v11    # "drawableState":[I
    .end local v12    # "cX":I
    .end local v13    # "left":I
    .end local v14    # "top":I
    :cond_7
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1278
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1444
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1445
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 1446
    .local v0, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1447
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1448
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1449
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1451
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1452
    .local v2, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1453
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1456
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    .end local v2    # "newText":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1097
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1099
    const/4 v0, 0x0

    .line 1100
    .local v0, "opticalInsetLeft":I
    const/4 v1, 0x0

    .line 1101
    .local v1, "opticalInsetRight":I
    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1102
    iget-object v2, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1103
    .local v2, "trackPadding":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 1104
    iget-object v3, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1106
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1109
    :goto_0
    iget-object v3, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 1110
    .local v3, "insets":Landroid/graphics/Insets;
    iget v4, v3, Landroid/graphics/Insets;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1111
    iget v4, v3, Landroid/graphics/Insets;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1116
    .end local v2    # "trackPadding":Landroid/graphics/Rect;
    .end local v3    # "insets":Landroid/graphics/Insets;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1117
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 1118
    .local v2, "switchLeft":I
    iget v3, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .local v3, "switchRight":I
    goto :goto_1

    .line 1120
    .end local v2    # "switchLeft":I
    .end local v3    # "switchRight":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Switch;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, v2, v1

    .line 1121
    .restart local v3    # "switchRight":I
    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    sub-int v2, v3, v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 1126
    .restart local v2    # "switchLeft":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x10

    if-eq v4, v5, :cond_4

    const/16 v5, 0x50

    if-eq v4, v5, :cond_3

    .line 1129
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v4

    .line 1130
    .local v4, "switchTop":I
    iget v5, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int/2addr v5, v4

    .line 1131
    .local v5, "switchBottom":I
    goto :goto_2

    .line 1140
    .end local v4    # "switchTop":I
    .end local v5    # "switchBottom":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int v5, v4, v5

    .line 1141
    .restart local v5    # "switchBottom":I
    iget v4, p0, Landroid/widget/Switch;->mSwitchHeight:I

    sub-int v4, v5, v4

    goto :goto_2

    .line 1134
    .end local v5    # "switchBottom":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Landroid/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 1136
    .restart local v4    # "switchTop":I
    iget v5, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int/2addr v5, v4

    .line 1137
    .restart local v5    # "switchBottom":I
    nop

    .line 1141
    :goto_2
    nop

    .line 1145
    iput v2, p0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 1146
    iput v4, p0, Landroid/widget/Switch;->mSwitchTop:I

    .line 1147
    iput v5, p0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 1148
    iput v3, p0, Landroid/widget/Switch;->mSwitchRight:I

    .line 1149
    return-void
.end method

.method public onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 817
    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 819
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 822
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 823
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 827
    :cond_1
    iget-object v0, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 830
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 832
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 833
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    .line 834
    .local v1, "thumbWidth":I
    iget-object v3, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .local v3, "thumbHeight":I
    goto :goto_0

    .line 836
    .end local v1    # "thumbWidth":I
    .end local v3    # "thumbHeight":I
    :cond_2
    const/4 v1, 0x0

    .line 837
    .restart local v1    # "thumbWidth":I
    move v3, v2

    .line 841
    .restart local v3    # "thumbHeight":I
    :goto_0
    iget-boolean v4, p0, Landroid/widget/Switch;->mShowText:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_3

    .line 842
    iget-object v4, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v6, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    .local v4, "maxTextWidth":I
    goto :goto_1

    .line 845
    .end local v4    # "maxTextWidth":I
    :cond_3
    move v4, v2

    .line 848
    .restart local v4    # "maxTextWidth":I
    :goto_1
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Landroid/widget/Switch;->mThumbWidth:I

    .line 851
    iget-object v6, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 852
    iget-object v2, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 853
    iget-object v2, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .local v2, "trackHeight":I
    goto :goto_2

    .line 855
    .end local v2    # "trackHeight":I
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 856
    nop

    .line 861
    .restart local v2    # "trackHeight":I
    :goto_2
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 862
    .local v6, "paddingLeft":I
    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 863
    .local v7, "paddingRight":I
    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    .line 864
    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v8

    .line 865
    .local v8, "inset":Landroid/graphics/Insets;
    iget v9, v8, Landroid/graphics/Insets;->left:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 866
    iget v9, v8, Landroid/graphics/Insets;->right:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 869
    .end local v8    # "inset":Landroid/graphics/Insets;
    :cond_5
    iget v8, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    iget v9, p0, Landroid/widget/Switch;->mThumbWidth:I

    mul-int/2addr v5, v9

    add-int/2addr v5, v6

    add-int/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 871
    .local v5, "switchWidth":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 872
    .local v8, "switchHeight":I
    iput v5, p0, Landroid/widget/Switch;->mSwitchWidth:I

    .line 873
    iput v8, p0, Landroid/widget/Switch;->mSwitchHeight:I

    .line 875
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 877
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredHeight()I

    move-result v9

    .line 878
    .local v9, "measuredHeight":I
    if-ge v9, v8, :cond_6

    .line 879
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredWidthAndState()I

    move-result v10

    invoke-virtual {p0, v10, v8}, Landroid/widget/Switch;->setMeasuredDimension(II)V

    .line 881
    :cond_6
    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 886
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 888
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 889
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_1

    .line 890
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    :cond_1
    return-void
.end method

.method public onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 0
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 1419
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 1420
    invoke-direct {p0, p1}, Landroid/widget/Switch;->onProvideAutoFillStructureForAssistOrAutofill(Landroid/view/ViewStructure;)V

    .line 1421
    return-void
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 0
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .line 1413
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onProvideStructure(Landroid/view/ViewStructure;)V

    .line 1414
    invoke-direct {p0, p1}, Landroid/widget/Switch;->onProvideAutoFillStructureForAssistOrAutofill(Landroid/view/ViewStructure;)V

    .line 1415
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 928
    iget-object v0, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 930
    .local v0, "action":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 943
    :pswitch_0
    iget v3, p0, Landroid/widget/Switch;->mTouchMode:I

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 963
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 964
    .local v1, "x":F
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v3

    .line 965
    .local v3, "thumbScrollRange":I
    iget v4, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v4, v1, v4

    .line 967
    .local v4, "thumbScrollOffset":F
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 968
    int-to-float v7, v3

    div-float v7, v4, v7

    .local v7, "dPos":F
    goto :goto_0

    .line 972
    .end local v7    # "dPos":F
    :cond_0
    cmpl-float v7, v4, v6

    if-lez v7, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    const/high16 v7, -0x40800000    # -1.0f

    .line 974
    .restart local v7    # "dPos":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 975
    neg-float v7, v7

    .line 977
    :cond_2
    iget v8, p0, Landroid/widget/Switch;->mThumbPosition:F

    add-float/2addr v8, v7

    invoke-static {v8, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    .line 978
    .local v5, "newPos":F
    iget v6, p0, Landroid/widget/Switch;->mThumbPosition:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_3

    .line 979
    iput v1, p0, Landroid/widget/Switch;->mTouchX:F

    .line 980
    invoke-direct {p0, v5}, Landroid/widget/Switch;->setThumbPosition(F)V

    .line 982
    :cond_3
    return v2

    .line 949
    .end local v1    # "x":F
    .end local v3    # "thumbScrollRange":I
    .end local v4    # "thumbScrollOffset":F
    .end local v5    # "newPos":F
    .end local v7    # "dPos":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 950
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 951
    .local v4, "y":F
    iget v5, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_4

    iget v5, p0, Landroid/widget/Switch;->mTouchY:F

    sub-float v5, v4, v5

    .line 952
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 953
    :cond_4
    iput v1, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 954
    invoke-virtual {p0}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 955
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 956
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    .line 957
    return v2

    .line 946
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_3
    nop

    .line 985
    :cond_5
    :goto_1
    goto :goto_2

    .line 990
    :pswitch_4
    iget v3, p0, Landroid/widget/Switch;->mTouchMode:I

    if-ne v3, v1, :cond_6

    .line 991
    invoke-direct {p0, p1}, Landroid/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 993
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 994
    return v2

    .line 996
    :cond_6
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 997
    iget-object v1, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_2

    .line 932
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 933
    .restart local v1    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 934
    .local v3, "y":F
    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v1, v3}, Landroid/widget/Switch;->hitThumb(FF)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 935
    iput v2, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 936
    iput v1, p0, Landroid/widget/Switch;->mTouchX:F

    .line 937
    iput v3, p0, Landroid/widget/Switch;->mTouchY:F

    .line 1002
    .end local v1    # "x":F
    .end local v3    # "y":F
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 1080
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1084
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    .line 1086
    invoke-virtual {p0}, Landroid/widget/Switch;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Switch;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    invoke-direct {p0, p1}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_1

    .line 1090
    :cond_0
    invoke-direct {p0}, Landroid/widget/Switch;->cancelPositionAnimator()V

    .line 1091
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/Switch;->setThumbPosition(F)V

    .line 1093
    :goto_1
    return-void
.end method

.method public setShowText(Z)V
    .locals 1
    .param p1, "showText"    # Z

    .line 801
    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    if-eq v0, p1, :cond_0

    .line 802
    iput-boolean p1, p0, Landroid/widget/Switch;->mShowText:Z

    .line 803
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 805
    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .line 743
    iput-boolean p1, p0, Landroid/widget/Switch;->mSplitTrack:Z

    .line 744
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 745
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .line 451
    iput p1, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 452
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 453
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .line 427
    iput p1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 428
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 429
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .line 308
    sget-object v0, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 309
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 315
    .local v0, "appearance":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 317
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 318
    iput-object v1, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 324
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 326
    .local v3, "ts":I
    if-eqz v3, :cond_1

    .line 327
    int-to-float v4, v3

    iget-object v5, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 328
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 329
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 335
    :cond_1
    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 337
    .local v6, "typefaceIndex":I
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 340
    .local v4, "styleIndex":I
    invoke-direct {p0, v6, v4}, Landroid/widget/Switch;->setSwitchTypefaceByIndex(II)V

    .line 342
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 344
    .local v2, "allCaps":Z
    if-eqz v2, :cond_2

    .line 345
    new-instance v7, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 346
    iget-object v7, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v7, v5}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    goto :goto_1

    .line 348
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 351
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 352
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .line 411
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 412
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 414
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 415
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 417
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .line 380
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    .line 381
    if-nez p1, :cond_0

    .line 382
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 384
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 387
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 389
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    .line 390
    .local v2, "typefaceStyle":I
    :goto_1
    not-int v3, v2

    and-int/2addr v3, p2

    .line 391
    .local v3, "need":I
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 392
    iget-object v1, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    nop

    :cond_3
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 393
    .end local v2    # "typefaceStyle":I
    .end local v3    # "need":I
    goto :goto_2

    .line 394
    :cond_4
    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 395
    iget-object v1, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 396
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 398
    :goto_2
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .line 790
    iput-object p1, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 791
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 792
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .line 771
    iput-object p1, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 772
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 773
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 619
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 622
    :cond_0
    iput-object p1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 623
    if-eqz p1, :cond_1

    .line 624
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 626
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 627
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 638
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .line 475
    iput p1, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 476
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 477
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 668
    iput-object p1, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    .line 671
    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    .line 672
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 696
    iput-object p1, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    .line 699
    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    .line 700
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 498
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 501
    :cond_0
    iput-object p1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 502
    if-eqz p1, :cond_1

    .line 503
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 505
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 506
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 516
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 545
    iput-object p1, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    .line 548
    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    .line 549
    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 573
    iput-object p1, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    .line 576
    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    .line 577
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1075
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1076
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1385
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
