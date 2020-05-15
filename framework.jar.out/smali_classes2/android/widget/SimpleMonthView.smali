.class Landroid/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthView$OnDayClickListener;,
        Landroid/widget/SimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final DAYS_IN_WEEK:I = 0x7

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final MAX_WEEKS_IN_MONTH:I = 0x6

.field private static final MONTH_YEAR_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final SELECTED_HIGHLIGHT_ALPHA:I = 0xb0


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Landroid/icu/util/Calendar;

.field private mCellWidth:I

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabels:[Ljava/lang/String;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDaySelectorRadius:I

.field private final mDesiredMonthHeight:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mHighlightedDay:I

.field private mIsTouchHighlighted:Z

.field private final mLocale:Ljava/util/Locale;

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mMonthYearLabel:Ljava/lang/String;

.field private mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mPreviouslyHighlightedDay:I

.field private mToday:I

.field private final mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 152
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 73
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 74
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 80
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 118
    iput v0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 121
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 133
    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 136
    const/16 v2, 0x1f

    iput v2, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 143
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 144
    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x1050062

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 164
    const v2, 0x105005d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 165
    const v2, 0x105005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    .line 166
    const v2, 0x1050061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    .line 167
    const v2, 0x105005f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 171
    new-instance v2, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v2, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object v2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 172
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v2}, Landroid/widget/SimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 173
    invoke-virtual {p0, v1}, Landroid/widget/SimpleMonthView;->setImportantForAccessibility(I)V

    .line 175
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 176
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    .line 178
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 180
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 181
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 183
    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    .line 184
    return-void
.end method

.method static synthetic access$000(Landroid/widget/SimpleMonthView;II)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .line 61
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/SimpleMonthView;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .line 61
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/SimpleMonthView;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/SimpleMonthView;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .line 61
    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .line 61
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .line 61
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object v0
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "resId"    # I

    .line 211
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 214
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "fontFamily":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 216
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 219
    :cond_0
    nop

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    .line 219
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 222
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 223
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_1

    .line 224
    sget-object v4, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 225
    .local v2, "enabledColor":I
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    .end local v2    # "enabledColor":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    return-object v3
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 664
    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 665
    .local v2, "p":Landroid/text/TextPaint;
    iget v3, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v4, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    .line 666
    .local v3, "headerHeight":I
    iget v4, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 667
    .local v4, "rowHeight":I
    iget v5, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 670
    .local v5, "colWidth":I
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 671
    .local v6, "halfLineHeight":F
    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v3

    .line 673
    .local v7, "rowCenter":I
    const/4 v8, 0x1

    .local v8, "day":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    .local v9, "col":I
    :goto_0
    iget v10, v0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt v8, v10, :cond_b

    .line 674
    mul-int v10, v5, v9

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    .line 676
    .local v10, "colCenter":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 677
    iget v11, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v11, v10

    .local v11, "colCenterRtl":I
    goto :goto_1

    .line 679
    .end local v11    # "colCenterRtl":I
    :cond_0
    move v11, v10

    .line 682
    .restart local v11    # "colCenterRtl":I
    :goto_1
    const/4 v12, 0x0

    .line 684
    .local v12, "stateMask":I
    invoke-direct {v0, v8}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v13

    .line 685
    .local v13, "isDayEnabled":Z
    if-eqz v13, :cond_1

    .line 686
    or-int/lit8 v12, v12, 0x8

    .line 689
    :cond_1
    iget v14, v0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    const/16 v16, 0x1

    if-ne v14, v8, :cond_2

    move/from16 v14, v16

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 690
    .local v14, "isDayActivated":Z
    :goto_2
    iget v15, v0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-ne v15, v8, :cond_3

    move/from16 v15, v16

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 691
    .local v15, "isDayHighlighted":Z
    :goto_3
    if-eqz v14, :cond_5

    .line 692
    or-int/lit8 v12, v12, 0x20

    .line 695
    if-eqz v15, :cond_4

    move/from16 v17, v3

    iget-object v3, v0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .end local v3    # "headerHeight":I
    .local v17, "headerHeight":I
    goto :goto_4

    .line 696
    .end local v17    # "headerHeight":I
    .restart local v3    # "headerHeight":I
    :cond_4
    move/from16 v17, v3

    .end local v3    # "headerHeight":I
    .restart local v17    # "headerHeight":I
    iget-object v3, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 697
    .local v3, "paint":Landroid/graphics/Paint;
    :goto_4
    move/from16 v18, v5

    int-to-float v5, v11

    .end local v5    # "colWidth":I
    .local v18, "colWidth":I
    move/from16 v19, v10

    int-to-float v10, v7

    .end local v10    # "colCenter":I
    .local v19, "colCenter":I
    move/from16 v20, v12

    iget v12, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    .end local v12    # "stateMask":I
    .local v20, "stateMask":I
    int-to-float v12, v12

    invoke-virtual {v1, v5, v10, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 698
    .end local v3    # "paint":Landroid/graphics/Paint;
    nop

    .line 708
    move/from16 v12, v20

    goto :goto_6

    .line 698
    .end local v17    # "headerHeight":I
    .end local v18    # "colWidth":I
    .end local v19    # "colCenter":I
    .end local v20    # "stateMask":I
    .local v3, "headerHeight":I
    .restart local v5    # "colWidth":I
    .restart local v10    # "colCenter":I
    .restart local v12    # "stateMask":I
    :cond_5
    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v10

    .end local v3    # "headerHeight":I
    .end local v5    # "colWidth":I
    .end local v10    # "colCenter":I
    .restart local v17    # "headerHeight":I
    .restart local v18    # "colWidth":I
    .restart local v19    # "colCenter":I
    if-eqz v15, :cond_7

    .line 699
    or-int/lit8 v12, v12, 0x10

    .line 701
    if-eqz v13, :cond_6

    .line 703
    int-to-float v3, v11

    int-to-float v5, v7

    iget v10, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    int-to-float v10, v10

    move/from16 v21, v12

    iget-object v12, v0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .end local v12    # "stateMask":I
    .local v21, "stateMask":I
    invoke-virtual {v1, v3, v5, v10, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 708
    .end local v21    # "stateMask":I
    .restart local v12    # "stateMask":I
    :cond_6
    move/from16 v21, v12

    .end local v12    # "stateMask":I
    .restart local v21    # "stateMask":I
    :goto_5
    move/from16 v12, v21

    .end local v21    # "stateMask":I
    .restart local v12    # "stateMask":I
    :cond_7
    :goto_6
    iget v3, v0, Landroid/widget/SimpleMonthView;->mToday:I

    if-ne v3, v8, :cond_8

    goto :goto_7

    :cond_8
    const/16 v16, 0x0

    :goto_7
    move/from16 v3, v16

    .line 710
    .local v3, "isDayToday":Z
    if-eqz v3, :cond_9

    if-nez v14, :cond_9

    .line 711
    iget-object v5, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 714
    .local v5, "dayTextColor":I
    move/from16 v22, v3

    goto :goto_8

    .line 713
    .end local v5    # "dayTextColor":I
    :cond_9
    invoke-static {v12}, Landroid/util/StateSet;->get(I)[I

    move-result-object v5

    .line 714
    .local v5, "stateSet":[I
    iget-object v10, v0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    move/from16 v22, v3

    const/4 v3, 0x0

    invoke-virtual {v10, v5, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    .end local v3    # "isDayToday":Z
    .local v5, "dayTextColor":I
    .local v22, "isDayToday":Z
    :goto_8
    move v3, v5

    .line 716
    .end local v5    # "dayTextColor":I
    .local v3, "dayTextColor":I
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 718
    iget-object v5, v0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    move/from16 v24, v12

    move/from16 v23, v13

    int-to-long v12, v8

    .end local v12    # "stateMask":I
    .end local v13    # "isDayEnabled":Z
    .local v23, "isDayEnabled":Z
    .local v24, "stateMask":I
    invoke-virtual {v5, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    int-to-float v10, v11

    int-to-float v12, v7

    sub-float/2addr v12, v6

    invoke-virtual {v1, v5, v10, v12, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 720
    add-int/lit8 v9, v9, 0x1

    .line 722
    const/4 v5, 0x7

    if-ne v9, v5, :cond_a

    .line 723
    const/4 v5, 0x0

    .line 724
    .end local v9    # "col":I
    .local v5, "col":I
    add-int/2addr v7, v4

    .line 673
    .end local v3    # "dayTextColor":I
    .end local v11    # "colCenterRtl":I
    .end local v14    # "isDayActivated":Z
    .end local v15    # "isDayHighlighted":Z
    .end local v19    # "colCenter":I
    .end local v22    # "isDayToday":Z
    .end local v23    # "isDayEnabled":Z
    .end local v24    # "stateMask":I
    move v9, v5

    .end local v5    # "col":I
    .restart local v9    # "col":I
    :cond_a
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v17

    move/from16 v5, v18

    goto/16 :goto_0

    .line 727
    .end local v8    # "day":I
    .end local v9    # "col":I
    .end local v17    # "headerHeight":I
    .end local v18    # "colWidth":I
    .local v3, "headerHeight":I
    .local v5, "colWidth":I
    :cond_b
    move/from16 v17, v3

    move/from16 v18, v5

    .end local v3    # "headerHeight":I
    .end local v5    # "colWidth":I
    .restart local v17    # "headerHeight":I
    .restart local v18    # "colWidth":I
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 637
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 638
    .local v0, "p":Landroid/text/TextPaint;
    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 639
    .local v1, "headerHeight":I
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 640
    .local v2, "rowHeight":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 643
    .local v3, "colWidth":I
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 644
    .local v4, "halfLineHeight":F
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v1

    .line 646
    .local v5, "rowCenter":I
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_0
    const/4 v7, 0x7

    if-ge v6, v7, :cond_1

    .line 647
    mul-int v7, v3, v6

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    .line 649
    .local v7, "colCenter":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 650
    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v8, v7

    .local v8, "colCenterRtl":I
    goto :goto_1

    .line 652
    .end local v8    # "colCenterRtl":I
    :cond_0
    move v8, v7

    .line 655
    .restart local v8    # "colCenterRtl":I
    :goto_1
    iget-object v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v9, v9, v6

    .line 656
    .local v9, "label":Ljava/lang/String;
    int-to-float v10, v8

    int-to-float v11, v5

    sub-float/2addr v11, v4

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 646
    .end local v7    # "colCenter":I
    .end local v8    # "colCenterRtl":I
    .end local v9    # "label":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 658
    .end local v6    # "col":I
    :cond_1
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 623
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 626
    .local v0, "x":F
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    .line 627
    .local v2, "lineHeight":F
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    .line 629
    .local v3, "y":F
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 630
    return-void
.end method

.method private ensureFocusedDay()V
    .locals 2

    .line 585
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 586
    return-void

    .line 588
    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_1

    .line 589
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 590
    return-void

    .line 592
    :cond_1
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    if-eq v0, v1, :cond_2

    .line 593
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 594
    return-void

    .line 596
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 597
    return-void
.end method

.method private findClosestColumn(Landroid/graphics/Rect;)I
    .locals 4
    .param p1, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 548
    if-nez p1, :cond_0

    .line 549
    const/4 v0, 0x3

    return v0

    .line 550
    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 551
    return v1

    .line 553
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v2, p0, Landroid/widget/SimpleMonthView;->mPaddingLeft:I

    sub-int/2addr v0, v2

    .line 554
    .local v0, "centerX":I
    iget v2, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    div-int v2, v0, v2

    const/4 v3, 0x6

    .line 555
    invoke-static {v2, v1, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 556
    .local v1, "columnFromLeft":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    rsub-int/lit8 v2, v1, 0x7

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    return v2
.end method

.method private findClosestRow(Landroid/graphics/Rect;)I
    .locals 11
    .param p1, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 518
    if-nez p1, :cond_0

    .line 519
    const/4 v0, 0x3

    return v0

    .line 520
    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 521
    return v1

    .line 523
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 525
    .local v0, "centerY":I
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 526
    .local v2, "p":Landroid/text/TextPaint;
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    .line 527
    .local v3, "headerHeight":I
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 530
    .local v4, "rowHeight":I
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 531
    .local v5, "halfLineHeight":F
    div-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v3

    .line 533
    .local v6, "rowCenter":I
    int-to-float v7, v0

    int-to-float v8, v6

    sub-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-int v0, v7

    .line 534
    int-to-float v7, v0

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 535
    .local v7, "row":I
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v8

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v8, v9

    .line 536
    .local v8, "maxDay":I
    div-int/lit8 v9, v8, 0x7

    rem-int/lit8 v10, v8, 0x7

    if-nez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    move v10, v1

    :goto_0
    sub-int/2addr v9, v10

    .line 538
    .local v9, "maxRows":I
    invoke-static {v7, v1, v9}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 539
    .end local v7    # "row":I
    .local v1, "row":I
    return v1
.end method

.method private findDayOffset()I
    .locals 3

    .line 930
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    .line 931
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    if-ge v1, v2, :cond_0

    .line 932
    add-int/lit8 v1, v0, 0x7

    return v1

    .line 934
    :cond_0
    return v0
.end method

.method private getDayAtLocation(II)I
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 947
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    .line 948
    .local v0, "paddedX":I
    const/4 v1, -0x1

    if-ltz v0, :cond_5

    iget v2, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-lt v0, v2, :cond_0

    goto :goto_2

    .line 952
    :cond_0
    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v2, v3

    .line 953
    .local v2, "headerHeight":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v3

    sub-int v3, p2, v3

    .line 954
    .local v3, "paddedY":I
    if-lt v3, v2, :cond_4

    iget v4, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 960
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 961
    iget v4, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v4, v0

    .local v4, "paddedXRtl":I
    goto :goto_0

    .line 963
    .end local v4    # "paddedXRtl":I
    :cond_2
    move v4, v0

    .line 966
    .restart local v4    # "paddedXRtl":I
    :goto_0
    sub-int v5, v3, v2

    iget v6, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    div-int/2addr v5, v6

    .line 967
    .local v5, "row":I
    mul-int/lit8 v6, v4, 0x7

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/2addr v6, v7

    .line 968
    .local v6, "col":I
    mul-int/lit8 v7, v5, 0x7

    add-int/2addr v7, v6

    .line 969
    .local v7, "index":I
    add-int/lit8 v8, v7, 0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    sub-int/2addr v8, v9

    .line 970
    .local v8, "day":I
    invoke-direct {p0, v8}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 971
    return v1

    .line 974
    :cond_3
    return v8

    .line 955
    .end local v4    # "paddedXRtl":I
    .end local v5    # "row":I
    .end local v6    # "col":I
    .end local v7    # "index":I
    .end local v8    # "day":I
    :cond_4
    :goto_1
    return v1

    .line 949
    .end local v2    # "headerHeight":I
    .end local v3    # "paddedY":I
    :cond_5
    :goto_2
    return v1
.end method

.method private static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .line 838
    packed-switch p0, :pswitch_data_0

    .line 855
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :pswitch_0
    const/16 v0, 0x1e

    return v0

    .line 853
    :pswitch_1
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    return v0

    .line 846
    :pswitch_2
    const/16 v0, 0x1f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initPaints(Landroid/content/res/Resources;)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 265
    const v0, 0x1040198

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "monthTypeface":Ljava/lang/String;
    const v1, 0x104018e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "dayOfWeekTypeface":Ljava/lang/String;
    const v2, 0x104018f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "dayTypeface":Ljava/lang/String;
    const v3, 0x1050063

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 271
    .local v3, "monthTextSize":I
    const v4, 0x105005e

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 273
    .local v4, "dayOfWeekTextSize":I
    const v5, 0x1050060

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 276
    .local v5, "dayTextSize":I
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 277
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v8, v3

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 278
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 279
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 280
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 282
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 283
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v9, v4

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 284
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 285
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 286
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 288
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 289
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 291
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 292
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 294
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 295
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 297
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 298
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 299
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 300
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 301
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    return-void
.end method

.method private isDayEnabled(I)Z
    .locals 1
    .param p1, "day"    # I

    .line 730
    iget v0, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFirstDayOfWeek(I)Z
    .locals 3
    .param p1, "day"    # I

    .line 600
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 601
    .local v0, "offset":I
    add-int v1, v0, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isLastDayOfWeek(I)Z
    .locals 2
    .param p1, "day"    # I

    .line 605
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 606
    .local v0, "offset":I
    add-int v1, v0, p1

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isValidDayOfMonth(I)Z
    .locals 2
    .param p1, "day"    # I

    .line 734
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2
    .param p0, "day"    # I

    .line 738
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidMonth(I)Z
    .locals 1
    .param p0, "month"    # I

    .line 742
    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveOneDay(Z)Z
    .locals 4
    .param p1, "positive"    # Z

    .line 459
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "focusChanged":Z
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 462
    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v2}, Landroid/widget/SimpleMonthView;->isLastDayOfWeek(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v2, v3, :cond_1

    .line 463
    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 464
    const/4 v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v2}, Landroid/widget/SimpleMonthView;->isFirstDayOfWeek(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-le v2, v1, :cond_1

    .line 468
    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 469
    const/4 v0, 0x1

    .line 472
    :cond_1
    :goto_0
    return v0
.end method

.method private onDayClicked(I)Z
    .locals 3
    .param p1, "day"    # I

    .line 1018
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1022
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_1

    .line 1023
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 1024
    .local v0, "date":Landroid/icu/util/Calendar;
    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/util/Calendar;->set(III)V

    .line 1025
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Landroid/icu/util/Calendar;)V

    .line 1029
    .end local v0    # "date":Landroid/icu/util/Calendar;
    :cond_1
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    .line 1030
    return v1

    .line 1019
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private sameDay(ILandroid/icu/util/Calendar;)Z
    .locals 3
    .param p1, "day"    # I
    .param p2, "today"    # Landroid/icu/util/Calendar;

    .line 860
    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x5

    .line 861
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 860
    :goto_0
    return v1
.end method

.method private updateDayOfWeekLabels()V
    .locals 5

    .line 196
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    .line 197
    .local v0, "tinyWeekdayNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 198
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget-object v2, v0, v4

    aput-object v2, v3, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private updateMonthYearLabel()V
    .locals 3

    .line 187
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    const-string v1, "MMMMy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 189
    .local v1, "formatter":Landroid/icu/text/SimpleDateFormat;
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 190
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    .line 191
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 344
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 10
    .param p1, "id"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 984
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 985
    const/4 v0, 0x0

    return v0

    .line 988
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 991
    .local v0, "index":I
    rem-int/lit8 v1, v0, 0x7

    .line 992
    .local v1, "col":I
    iget v2, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 994
    .local v2, "colWidth":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 995
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v4, v2

    sub-int/2addr v3, v4

    .local v3, "left":I
    goto :goto_0

    .line 997
    .end local v3    # "left":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v3

    mul-int v4, v1, v2

    add-int/2addr v3, v4

    .line 1001
    .restart local v3    # "left":I
    :goto_0
    div-int/lit8 v4, v0, 0x7

    .line 1002
    .local v4, "row":I
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 1003
    .local v5, "rowHeight":I
    iget v6, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v7, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v6, v7

    .line 1004
    .local v6, "headerHeight":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v6

    mul-int v8, v4, v5

    add-int/2addr v7, v8

    .line 1006
    .local v7, "top":I
    add-int v8, v3, v2

    add-int v9, v7, v5

    invoke-virtual {p2, v3, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1008
    const/4 v8, 0x1

    return v8
.end method

.method public getCellWidth()I
    .locals 1

    .line 238
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 562
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-lez v0, :cond_0

    .line 563
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    goto :goto_0

    .line 565
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 567
    :goto_0
    return-void
.end method

.method public getMonthHeight()I
    .locals 1

    .line 234
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    return v0
.end method

.method public getMonthYearLabel()Ljava/lang/String;
    .locals 1

    .line 633
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 611
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    .line 612
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    .line 613
    .local v1, "paddingTop":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 615
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    .line 616
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    .line 617
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    .line 619
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 620
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 478
    if-eqz p1, :cond_7

    .line 482
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 483
    .local v0, "offset":I
    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eq p2, v1, :cond_6

    const/16 v1, 0x21

    if-eq p2, v1, :cond_4

    const/16 v1, 0x42

    if-eq p2, v1, :cond_2

    const/16 v1, 0x82

    if-eq p2, v1, :cond_0

    goto :goto_3

    .line 495
    :cond_0
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    .line 496
    .local v1, "col":I
    sub-int v3, v1, v0

    add-int/2addr v3, v2

    .line 497
    .local v3, "day":I
    if-ge v3, v2, :cond_1

    add-int/lit8 v2, v3, 0x7

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 498
    goto :goto_3

    .line 485
    .end local v1    # "col":I
    .end local v3    # "day":I
    :cond_2
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    .line 486
    .local v1, "row":I
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    mul-int/lit8 v3, v1, 0x7

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :goto_1
    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 487
    goto :goto_3

    .line 501
    .end local v1    # "row":I
    :cond_4
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    .line 502
    .local v1, "col":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v3, v0

    const/4 v4, 0x7

    div-int/2addr v3, v4

    .line 503
    .local v3, "maxWeeks":I
    sub-int v5, v1, v0

    mul-int/2addr v4, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    .line 504
    .local v5, "day":I
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-le v5, v2, :cond_5

    add-int/lit8 v2, v5, -0x7

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 505
    goto :goto_3

    .line 490
    .end local v1    # "col":I
    .end local v3    # "maxWeeks":I
    .end local v5    # "day":I
    :cond_6
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    add-int/2addr v1, v2

    .line 491
    .local v1, "row":I
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    mul-int/lit8 v3, v1, 0x7

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 492
    nop

    .line 508
    .end local v1    # "row":I
    :goto_3
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 509
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 511
    .end local v0    # "offset":I
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 512
    return-void
.end method

.method protected onFocusLost()V
    .locals 1

    .line 571
    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    if-nez v0, :cond_0

    .line 573
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 574
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 575
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 577
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onFocusLost()V

    .line 578
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "focusChanged":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 398
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 399
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v0

    goto/16 :goto_1

    .line 393
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 394
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v0

    goto :goto_1

    .line 412
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 413
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 414
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_7

    .line 415
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 416
    const/4 v0, 0x1

    goto :goto_1

    .line 403
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 404
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 405
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-le v1, v2, :cond_7

    .line 406
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 407
    const/4 v0, 0x1

    goto :goto_1

    .line 422
    :cond_0
    :pswitch_4
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 423
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 424
    return v3

    .line 428
    :cond_1
    const/4 v1, 0x0

    .line 429
    .local v1, "focusChangeDirection":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    const/4 v1, 0x2

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 432
    const/4 v1, 0x1

    .line 434
    :cond_3
    :goto_0
    if-eqz v1, :cond_7

    .line 435
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 437
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v4, p0

    .line 439
    .local v4, "nextFocus":Landroid/view/View;
    :cond_4
    invoke-virtual {v4, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 440
    if-eqz v4, :cond_5

    if-eq v4, p0, :cond_5

    .line 441
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v2, :cond_4

    .line 442
    :cond_5
    if-eqz v4, :cond_6

    .line 443
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 444
    return v3

    .line 446
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v4    # "nextFocus":Landroid/view/View;
    :cond_6
    nop

    .line 450
    .end local v1    # "focusChangeDirection":I
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 451
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 452
    return v3

    .line 454
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object/from16 v0, p0

    .line 885
    if-nez p1, :cond_0

    .line 886
    return-void

    .line 890
    :cond_0
    sub-int v4, p4, p2

    .line 891
    .local v4, "w":I
    sub-int v5, p5, p3

    .line 892
    .local v5, "h":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v6

    .line 893
    .local v6, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v7

    .line 894
    .local v7, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v8

    .line 895
    .local v8, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v9

    .line 896
    .local v9, "paddingBottom":I
    sub-int v10, v4, v8

    .line 897
    .local v10, "paddedRight":I
    sub-int v11, v5, v9

    .line 898
    .local v11, "paddedBottom":I
    sub-int v12, v10, v6

    .line 899
    .local v12, "paddedWidth":I
    sub-int v13, v11, v7

    .line 900
    .local v13, "paddedHeight":I
    iget v1, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-eq v12, v1, :cond_2

    iget v1, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-ne v13, v1, :cond_1

    .line 901
    move/from16 v19, v4

    goto :goto_0

    .line 904
    :cond_1
    iput v12, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 905
    iput v13, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    .line 909
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v7

    sub-int/2addr v1, v9

    .line 910
    .local v1, "measuredPaddedHeight":I
    int-to-float v2, v13

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 911
    .local v2, "scaleH":F
    iget v3, v0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 912
    .local v3, "monthHeight":I
    move v14, v1

    iget v1, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .end local v1    # "measuredPaddedHeight":I
    .local v14, "measuredPaddedHeight":I
    div-int/lit8 v1, v1, 0x7

    .line 913
    .local v1, "cellWidth":I
    iput v3, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 914
    move v15, v3

    iget v3, v0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .end local v3    # "monthHeight":I
    .local v15, "monthHeight":I
    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 915
    iget v3, v0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 916
    iput v1, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 920
    div-int/lit8 v3, v1, 0x2

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v16

    add-int v3, v3, v16

    .line 921
    .local v3, "maxSelectorWidth":I
    move/from16 v17, v1

    iget v1, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .end local v1    # "cellWidth":I
    .local v17, "cellWidth":I
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v9

    .line 922
    .local v1, "maxSelectorHeight":I
    move/from16 v18, v2

    iget v2, v0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 923
    .end local v2    # "scaleH":F
    .local v18, "scaleH":F
    move/from16 v19, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 922
    .end local v4    # "w":I
    .local v19, "w":I
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 926
    iget-object v2, v0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v2}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 927
    return-void

    .line 901
    .end local v1    # "maxSelectorHeight":I
    .end local v3    # "maxSelectorWidth":I
    .end local v14    # "measuredPaddedHeight":I
    .end local v15    # "monthHeight":I
    .end local v17    # "cellWidth":I
    .end local v18    # "scaleH":F
    .end local v19    # "w":I
    .restart local v4    # "w":I
    :cond_2
    move/from16 v19, v4

    .end local v4    # "w":I
    .restart local v19    # "w":I
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 866
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    add-int/2addr v0, v1

    .line 868
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 869
    .local v0, "preferredHeight":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v1, v1, 0x7

    .line 870
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 871
    .local v1, "preferredWidth":I
    invoke-static {v1, p1}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v2

    .line 872
    .local v2, "resolvedWidth":I
    invoke-static {v0, p2}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v3

    .line 873
    .local v3, "resolvedHeight":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/SimpleMonthView;->setMeasuredDimension(II)V

    .line 874
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1035
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    const/4 v0, 0x0

    return-object v0

    .line 1039
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1040
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 1041
    .local v1, "y":I
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v2

    .line 1042
    .local v2, "dayUnderPointer":I
    if-ltz v2, :cond_1

    .line 1043
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3

    .line 1045
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 878
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 880
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->requestLayout()V

    .line 881
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 350
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 352
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 353
    .local v2, "action":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v5

    .line 371
    .local v5, "clickedDay":I
    invoke-direct {p0, v5}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 375
    .end local v5    # "clickedDay":I
    :pswitch_1
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 376
    iput-boolean v4, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 377
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    goto :goto_0

    .line 356
    :pswitch_2
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v5

    .line 357
    .local v5, "touchedItem":I
    iput-boolean v3, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 358
    iget v6, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-eq v6, v5, :cond_0

    .line 359
    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 360
    iput v5, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 361
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 363
    :cond_0
    if-nez v2, :cond_1

    if-gez v5, :cond_1

    .line 365
    return v4

    .line 380
    .end local v5    # "touchedItem":I
    :cond_1
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "dayHighlightColor"    # Landroid/content/res/ColorStateList;

    .line 331
    nop

    .line 332
    const/16 v0, 0x18

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    .line 331
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 333
    .local v0, "pressedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 335
    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 248
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 249
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 250
    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "dayOfWeekTextColor"    # Landroid/content/res/ColorStateList;

    .line 311
    sget-object v0, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 312
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 313
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 314
    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayBackgroundColor"    # Landroid/content/res/ColorStateList;

    .line 322
    nop

    .line 323
    const/16 v0, 0x28

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    .line 322
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 324
    .local v0, "activatedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 327
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 328
    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 253
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 254
    .local v0, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 255
    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 258
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 259
    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "dayTextColor"    # Landroid/content/res/ColorStateList;

    .line 317
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 318
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 319
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "weekStart"    # I

    .line 766
    invoke-static {p1}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 769
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 772
    :goto_0
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 775
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 776
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 777
    return-void
.end method

.method setMonthParams(IIIIII)V
    .locals 5
    .param p1, "selectedDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I
    .param p4, "weekStart"    # I
    .param p5, "enabledDayStart"    # I
    .param p6, "enabledDayEnd"    # I

    .line 797
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 799
    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    .line 802
    :cond_0
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    .line 804
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 805
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 806
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 807
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    .line 809
    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 812
    :cond_1
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 816
    :goto_0
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 817
    .local v0, "today":Landroid/icu/util/Calendar;
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 818
    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-static {v1, v3}, Landroid/widget/SimpleMonthView;->getDaysInMonth(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 819
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v1, v3, :cond_3

    .line 820
    add-int/lit8 v3, v1, 0x1

    .line 821
    .local v3, "day":I
    invoke-direct {p0, v3, v0}, Landroid/widget/SimpleMonthView;->sameDay(ILandroid/icu/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 822
    iput v3, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 819
    .end local v3    # "day":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 826
    .end local v1    # "i":I
    :cond_3
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p5, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 827
    iget v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p6, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 829
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 830
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 833
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 834
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 835
    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 242
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 244
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 245
    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "monthTextColor"    # Landroid/content/res/ColorStateList;

    .line 305
    sget-object v0, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 306
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 307
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 308
    return-void
.end method

.method public setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 338
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 339
    return-void
.end method

.method public setSelectedDay(I)V
    .locals 1
    .param p1, "dayOfMonth"    # I

    .line 752
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 755
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 756
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 757
    return-void
.end method
