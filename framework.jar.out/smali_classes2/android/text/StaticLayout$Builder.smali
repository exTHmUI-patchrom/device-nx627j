.class public final Landroid/text/StaticLayout$Builder;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/StaticLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddLastLineLineSpacing:Z

.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBreakStrategy:I

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mEnd:I

.field private mFallbackLineSpacing:Z

.field private final mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mJustificationMode:I

.field private mLeftIndents:[I

.field private mLeftPaddings:[I

.field private mMaxLines:I

.field private mPaint:Landroid/text/TextPaint;

.field private mRightIndents:[I

.field private mRightPaddings:[I

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mStart:I

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 455
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 76
    return-void
.end method

.method static synthetic access$100(Landroid/text/StaticLayout$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget-boolean v0, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/text/StaticLayout$Builder;)F
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget v0, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    return v0
.end method

.method static synthetic access$1100(Landroid/text/StaticLayout$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget v0, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    return v0
.end method

.method static synthetic access$1200(Landroid/text/StaticLayout$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget v0, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    return v0
.end method

.method static synthetic access$1300(Landroid/text/StaticLayout$Builder;)[I
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    return-object v0
.end method

.method static synthetic access$1400(Landroid/text/StaticLayout$Builder;)[I
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    return-object v0
.end method

.method static synthetic access$1500(Landroid/text/StaticLayout$Builder;)[I
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftPaddings:[I

    return-object v0
.end method

.method static synthetic access$1600(Landroid/text/StaticLayout$Builder;)[I
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightPaddings:[I

    return-object v0
.end method

.method static synthetic access$1700(Landroid/text/StaticLayout$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget v0, p0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    return v0
.end method

.method static synthetic access$1800(Landroid/text/StaticLayout$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget v0, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    return v0
.end method

.method static synthetic access$1900(Landroid/text/StaticLayout$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget v0, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    return v0
.end method

.method static synthetic access$200(Landroid/text/StaticLayout$Builder;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/text/StaticLayout$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget-boolean v0, p0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    return v0
.end method

.method static synthetic access$2100(Landroid/text/StaticLayout$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget-boolean v0, p0, Landroid/text/StaticLayout$Builder;->mAddLastLineLineSpacing:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/text/StaticLayout$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget v0, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    return v0
.end method

.method static synthetic access$2400(Landroid/text/StaticLayout$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget v0, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    return v0
.end method

.method static synthetic access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method static synthetic access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$600(Landroid/text/StaticLayout$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget v0, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    return v0
.end method

.method static synthetic access$700(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method static synthetic access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method static synthetic access$900(Landroid/text/StaticLayout$Builder;)F
    .locals 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .line 75
    iget v0, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    return v0
.end method

.method public static obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    .locals 3
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I

    .line 92
    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout$Builder;

    .line 93
    .local v0, "b":Landroid/text/StaticLayout$Builder;
    if-nez v0, :cond_0

    .line 94
    new-instance v1, Landroid/text/StaticLayout$Builder;

    invoke-direct {v1}, Landroid/text/StaticLayout$Builder;-><init>()V

    move-object v0, v1

    .line 98
    :cond_0
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 99
    iput p1, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    .line 100
    iput p2, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    .line 101
    iput-object p3, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 102
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    .line 103
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 104
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 105
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    .line 106
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    .line 109
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 110
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 111
    const v2, 0x7fffffff

    iput v2, v0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    .line 112
    iput v1, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    .line 113
    iput v1, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    .line 114
    iput v1, v0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    .line 115
    return-object v0
.end method

.method private static recycle(Landroid/text/StaticLayout$Builder;)V
    .locals 1
    .param p0, "b"    # Landroid/text/StaticLayout$Builder;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 124
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 125
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 126
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 127
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftPaddings:[I

    .line 128
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightPaddings:[I

    .line 129
    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method


# virtual methods
.method public build()Landroid/text/StaticLayout;
    .locals 2

    .line 425
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V

    .line 426
    .local v0, "result":Landroid/text/StaticLayout;
    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    .line 427
    return-object v0
.end method

.method finish()V
    .locals 1

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 135
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 136
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 137
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 138
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftPaddings:[I

    .line 139
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightPaddings:[I

    .line 140
    return-void
.end method

.method setAddLastLineLineSpacing(Z)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 410
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mAddLastLineLineSpacing:Z

    .line 411
    return-object p0
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .line 205
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 206
    return-object p0
.end method

.method public setAvailablePaddings([I[I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "leftPaddings"    # [I
    .param p2, "rightPaddings"    # [I

    .line 383
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLeftPaddings:[I

    .line 384
    iput-object p2, p0, Landroid/text/StaticLayout$Builder;->mRightPaddings:[I

    .line 385
    return-object p0
.end method

.method public setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "breakStrategy"    # I

    .line 331
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    .line 332
    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .line 302
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 303
    return-object p0
.end method

.method public setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "ellipsizedWidth"    # I

    .line 285
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 286
    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "hyphenationFrequency"    # I

    .line 347
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    .line 348
    return-object p0
.end method

.method public setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "includePad"    # Z

    .line 251
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    .line 252
    return-object p0
.end method

.method public setIndents([I[I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "leftIndents"    # [I
    .param p2, "rightIndents"    # [I

    .line 361
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 362
    iput-object p2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 363
    return-object p0
.end method

.method public setJustificationMode(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "justificationMode"    # I

    .line 398
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    .line 399
    return-object p0
.end method

.method public setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "spacingAdd"    # F
    .param p2, "spacingMult"    # F

    .line 235
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    .line 236
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    .line 237
    return-object p0
.end method

.method public setMaxLines(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "maxLines"    # I

    .line 317
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    .line 318
    return-object p0
.end method

.method public setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 176
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 177
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout$Builder;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 143
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 160
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 161
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    .line 162
    iput p3, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    .line 163
    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 219
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 220
    return-object p0
.end method

.method public setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "useLineSpacingFromFallbacks"    # Z

    .line 270
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    .line 271
    return-object p0
.end method

.method public setWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 1
    .param p1, "width"    # I

    .line 190
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    .line 191
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 192
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 194
    :cond_0
    return-object p0
.end method
