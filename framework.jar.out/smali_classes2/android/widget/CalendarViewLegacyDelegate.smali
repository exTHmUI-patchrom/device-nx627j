.class Landroid/widget/CalendarViewLegacyDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarViewLegacyDelegate$WeekView;,
        Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;,
        Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private mDateTextAppearanceResId:I

.field private mDateTextSize:I

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDayNamesLong:[Ljava/lang/String;

.field private mDayNamesShort:[Ljava/lang/String;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Landroid/icu/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Landroid/icu/util/Calendar;

.field private mMinDate:Landroid/icu/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

.field private mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Landroid/icu/util/Calendar;

.field private mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekDayTextAppearanceResId:I

.field private mWeekMinVisibleHeight:I

.field private mWeekNumberColor:I

.field private mWeekSeparatorLineColor:I

.field private final mWeekSeparatorLineWidth:I


# direct methods
.method constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    move-object/from16 v0, p0

    .line 260
    invoke-direct/range {p0 .. p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    .line 131
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    .line 136
    const/16 v2, 0xc

    iput v2, v0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    .line 141
    const/16 v3, 0x14

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    .line 156
    const/4 v3, 0x7

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    .line 161
    const v4, 0x3d4ccccd    # 0.05f

    iput v4, v0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    .line 166
    const v4, 0x3eaa7efa    # 0.333f

    iput v4, v0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    .line 206
    const/4 v4, -0x1

    iput v4, v0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    .line 216
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 221
    iput v5, v0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 226
    iput v5, v0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    .line 236
    new-instance v6, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate$1;)V

    iput-object v6, v0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    .line 262
    sget-object v6, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual {v8, v9, v6, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 264
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v12, 0x1

    invoke-virtual {v6, v12, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    .line 266
    nop

    .line 267
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-static {v13}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v13

    iget-object v13, v13, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 266
    invoke-virtual {v6, v5, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 268
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "minDate":Ljava/lang/String;
    iget-object v13, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v1, v13}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 270
    const-string v13, "01/01/1900"

    iget-object v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v13, v14}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    .line 272
    :cond_0
    const/4 v13, 0x3

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 273
    .local v13, "maxDate":Ljava/lang/String;
    iget-object v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v13, v14}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 274
    const-string v14, "01/01/2100"

    iget-object v15, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v14, v15}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    .line 276
    :cond_1
    iget-object v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    iget-object v15, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v14, v15}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 279
    const/4 v14, 0x4

    const/4 v15, 0x6

    invoke-virtual {v6, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    .line 281
    const/4 v14, 0x5

    invoke-virtual {v6, v14, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    iput v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    .line 283
    invoke-virtual {v6, v15, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    iput v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    .line 285
    invoke-virtual {v6, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    .line 287
    const/16 v3, 0x9

    invoke-virtual {v6, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    .line 289
    const/16 v3, 0x8

    invoke-virtual {v6, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    .line 290
    const/16 v3, 0xa

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 293
    const v3, 0x1030046

    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    .line 295
    invoke-direct/range {p0 .. p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    .line 297
    const/16 v2, 0xb

    invoke-virtual {v6, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    .line 300
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 302
    iget-object v2, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v2}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 303
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v12, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    .line 305
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v12, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    .line 307
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v12, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    .line 309
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v12, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    .line 311
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v12, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineWidth:I

    .line 314
    iget-object v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    .line 315
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 316
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x1090042

    invoke-virtual {v3, v4, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 317
    .local v4, "content":Landroid/view/View;
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v7, v4}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    .line 319
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    const v14, 0x102000a

    invoke-virtual {v7, v14}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 320
    const v7, 0x1020220

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 321
    const v7, 0x102031b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    .line 323
    invoke-direct/range {p0 .. p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 324
    invoke-direct/range {p0 .. p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpListView()V

    .line 325
    invoke-direct/range {p0 .. p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpAdapter()V

    .line 328
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 329
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v7, v14}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 330
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v7, v5, v12, v12}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    iget-object v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v7, v14}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 332
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v7, v5, v12, v12}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    goto :goto_0

    .line 334
    :cond_3
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v7, v5, v12, v12}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 337
    :goto_0
    iget-object v5, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v5}, Landroid/widget/CalendarView;->invalidate()V

    .line 338
    return-void

    .line 277
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v4    # "content":Landroid/view/View;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Max date cannot be before min date."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$1002(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # Landroid/icu/util/Calendar;

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # Landroid/icu/util/Calendar;

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineWidth:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 48
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;III)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarViewLegacyDelegate;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method private static getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 3
    .param p0, "oldCalendar"    # Landroid/icu/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 673
    if-nez p0, :cond_0

    .line 674
    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 676
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 677
    .local v0, "currentTimeMillis":J
    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v2

    .line 678
    .local v2, "newCalendar":Landroid/icu/util/Calendar;
    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 679
    return-object v2
.end method

.method private getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I
    .locals 10
    .param p1, "date"    # Landroid/icu/util/Calendar;

    .line 948
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 953
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 954
    .local v0, "endTimeMillis":J
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 955
    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v5}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 956
    .local v2, "startTimeMillis":J
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    .line 958
    .local v4, "dayOffsetMillis":J
    sub-long v6, v0, v2

    add-long/2addr v6, v4

    const-wide/32 v8, 0x240c8400

    div-long/2addr v6, v8

    long-to-int v6, v6

    return v6

    .line 949
    .end local v0    # "endTimeMillis":J
    .end local v2    # "startTimeMillis":J
    .end local v4    # "dayOffsetMillis":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not precede toDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private goTo(Landroid/icu/util/Calendar;ZZZ)V
    .locals 9
    .param p1, "date"    # Landroid/icu/util/Calendar;
    .param p2, "animate"    # Z
    .param p3, "setSelected"    # Z
    .param p4, "forceScroll"    # Z

    .line 797
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 802
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 803
    .local v0, "firstFullyVisiblePosition":I
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 804
    .local v1, "firstChild":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_0

    .line 805
    add-int/lit8 v0, v0, 0x1

    .line 807
    :cond_0
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    add-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 808
    .local v3, "lastFullyVisiblePosition":I
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    if-le v5, v6, :cond_1

    .line 809
    add-int/lit8 v3, v3, -0x1

    .line 811
    :cond_1
    if-eqz p3, :cond_2

    .line 812
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v5, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    .line 815
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    move-result v5

    .line 819
    .local v5, "position":I
    if-lt v5, v0, :cond_4

    if-gt v5, v3, :cond_4

    if-eqz p4, :cond_3

    goto :goto_0

    .line 842
    :cond_3
    if-eqz p3, :cond_7

    .line 844
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    goto :goto_3

    .line 821
    :cond_4
    :goto_0
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 822
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 824
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    .line 827
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v4, v6}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 828
    const/4 v4, 0x0

    .line 833
    .end local v5    # "position":I
    .local v4, "position":I
    :goto_1
    move v5, v4

    goto :goto_2

    .line 830
    .end local v4    # "position":I
    .restart local v5    # "position":I
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    move-result v4

    goto :goto_1

    .line 833
    :goto_2
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 834
    if-eqz p2, :cond_6

    .line 835
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    const/16 v6, 0x3e8

    invoke-virtual {v2, v5, v4, v6}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    goto :goto_3

    .line 838
    :cond_6
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 840
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v4, v2}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 846
    :cond_7
    :goto_3
    return-void

    .line 798
    .end local v0    # "firstFullyVisiblePosition":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v3    # "lastFullyVisiblePosition":I
    .end local v5    # "position":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeInMillis must be between the values of getMinDate() and getMaxDate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateAllWeekViews()V
    .locals 3

    .line 659
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 660
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 661
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 662
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 660
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 3
    .param p0, "firstDate"    # Landroid/icu/util/Calendar;
    .param p1, "secondDate"    # Landroid/icu/util/Calendar;

    .line 688
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 689
    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 688
    :goto_0
    return v2
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .locals 9
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 862
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 863
    .local v1, "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    if-nez v1, :cond_0

    .line 864
    return-void

    .line 868
    :cond_0
    nop

    .line 869
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 872
    .local v2, "currScroll":J
    iget-wide v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-gez v4, :cond_1

    .line 873
    iput-boolean v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    goto :goto_0

    .line 874
    :cond_1
    iget-wide v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    cmp-long v4, v2, v6

    if-lez v4, :cond_c

    .line 875
    iput-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 884
    :goto_0
    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result v4

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    if-ge v4, v6, :cond_2

    move v0, v5

    nop

    .line 885
    .local v0, "offset":I
    :cond_2
    iget-boolean v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v4, :cond_3

    .line 886
    const/4 v4, 0x2

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    goto :goto_1

    .line 887
    :cond_3
    if-eqz v0, :cond_4

    .line 888
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 891
    :cond_4
    :goto_1
    if-eqz v1, :cond_b

    .line 894
    iget-boolean v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v4, :cond_5

    .line 895
    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfFirstWeekDay()I

    move-result v4

    .local v4, "month":I
    goto :goto_2

    .line 897
    .end local v4    # "month":I
    :cond_5
    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfLastWeekDay()I

    move-result v4

    .line 902
    .restart local v4    # "month":I
    :goto_2
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_6

    if-nez v4, :cond_6

    .line 903
    const/4 v5, 0x1

    .local v5, "monthDiff":I
    :goto_3
    goto :goto_4

    .line 904
    .end local v5    # "monthDiff":I
    :cond_6
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    if-nez v5, :cond_7

    if-ne v4, v6, :cond_7

    .line 905
    const/4 v5, -0x1

    goto :goto_3

    .line 907
    :cond_7
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    sub-int v5, v4, v5

    .line 912
    .restart local v5    # "monthDiff":I
    :goto_4
    iget-boolean v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-nez v6, :cond_8

    if-gtz v5, :cond_9

    :cond_8
    iget-boolean v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v6, :cond_b

    if-gez v5, :cond_b

    .line 913
    :cond_9
    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getFirstDay()Landroid/icu/util/Calendar;

    move-result-object v6

    .line 914
    .local v6, "firstDay":Landroid/icu/util/Calendar;
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    const/4 v8, 0x5

    if-eqz v7, :cond_a

    .line 915
    const/4 v7, -0x7

    invoke-virtual {v6, v8, v7}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_5

    .line 917
    :cond_a
    const/4 v7, 0x7

    invoke-virtual {v6, v8, v7}, Landroid/icu/util/Calendar;->add(II)V

    .line 919
    :goto_5
    invoke-direct {p0, v6}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    .line 922
    .end local v4    # "month":I
    .end local v5    # "monthDiff":I
    .end local v6    # "firstDay":Landroid/icu/util/Calendar;
    :cond_b
    iput-wide v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    .line 923
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    iput v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 924
    return-void

    .line 877
    .end local v0    # "offset":I
    :cond_c
    return-void
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 853
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 854
    return-void
.end method

.method private setMonthDisplayed(Landroid/icu/util/Calendar;)V
    .locals 9
    .param p1, "calendar"    # Landroid/icu/util/Calendar;

    .line 933
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    .line 934
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    invoke-virtual {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setFocusMonth(I)V

    .line 935
    const/16 v0, 0x34

    .line 937
    .local v0, "flags":I
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 938
    .local v7, "millis":J
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    const/16 v6, 0x34

    move-wide v2, v7

    move-wide v4, v7

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    .line 939
    .local v1, "newMonthName":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 941
    return-void
.end method

.method private setUpAdapter()V
    .locals 2

    .line 696
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 698
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$1;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 710
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 714
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 715
    return-void
.end method

.method private setUpHeader()V
    .locals 7

    .line 721
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    .line 722
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    .line 723
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .local v0, "i":I
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    add-int/2addr v1, v2

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 724
    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x7

    goto :goto_1

    :cond_0
    move v2, v0

    .line 725
    .local v2, "calendarDay":I
    :goto_1
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int v4, v0, v4

    const/16 v5, 0x32

    invoke-static {v2, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 727
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int v4, v0, v4

    const/16 v5, 0xa

    invoke-static {v2, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 723
    .end local v2    # "calendarDay":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 732
    .local v0, "label":Landroid/widget/TextView;
    iget-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    .line 733
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 735
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    :goto_2
    const/4 v2, 0x1

    .local v2, "i":I
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .local v4, "count":I
    :goto_3
    if-ge v2, v4, :cond_5

    .line 738
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    .line 739
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_3

    .line 740
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 742
    :cond_3
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_4

    .line 743
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 745
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 747
    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 750
    .end local v2    # "i":I
    .end local v4    # "count":I
    :cond_5
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 751
    return-void
.end method

.method private setUpListView()V
    .locals 2

    .line 758
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 759
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 760
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 761
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$2;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 774
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    .line 775
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    .line 776
    return-void
.end method

.method private updateDateTextSize()V
    .locals 3

    .line 648
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    sget-object v2, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 650
    .local v0, "dateTextAppearance":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    .line 652
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 653
    return-void
.end method


# virtual methods
.method public getBoundsForDate(JLandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "date"    # J
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 606
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 607
    .local v0, "calendarDate":Landroid/icu/util/Calendar;
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 608
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 609
    .local v1, "listViewEntryCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 610
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 611
    .local v4, "currWeekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-virtual {v4, v0, p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 614
    const/4 v2, 0x2

    new-array v5, v2, [I

    .line 615
    .local v5, "weekViewPositionOnScreen":[I
    new-array v2, v2, [I

    .line 616
    .local v2, "delegatorPositionOnScreen":[I
    invoke-virtual {v4, v5}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getLocationOnScreen([I)V

    .line 617
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v6, v2}, Landroid/widget/CalendarView;->getLocationOnScreen([I)V

    .line 618
    const/4 v6, 0x1

    aget v7, v5, v6

    aget v8, v2, v6

    sub-int/2addr v7, v8

    .line 620
    .local v7, "extraVerticalOffset":I
    iget v8, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v7

    iput v8, p3, Landroid/graphics/Rect;->top:I

    .line 621
    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v7

    iput v8, p3, Landroid/graphics/Rect;->bottom:I

    .line 622
    return v6

    .line 609
    .end local v2    # "delegatorPositionOnScreen":[I
    .end local v4    # "currWeekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    .end local v5    # "weekViewPositionOnScreen":[I
    .end local v7    # "extraVerticalOffset":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 625
    .end local v3    # "i":I
    :cond_1
    return v2
.end method

.method public getDate()J
    .locals 2

    .line 596
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    .line 487
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 577
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .locals 1

    .line 388
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 546
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 520
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 460
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    .line 369
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    .line 561
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    .line 350
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    .line 407
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    .line 473
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    .line 422
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    .line 435
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 630
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 631
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 640
    invoke-super {p0, p1}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 642
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 643
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    .line 644
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 645
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 646
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    .line 582
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(JZZ)V

    .line 583
    return-void
.end method

.method public setDate(JZZ)V
    .locals 2
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    .line 587
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 588
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p4}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 592
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .line 478
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    .line 479
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    .line 480
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    .line 481
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 483
    :cond_0
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .line 566
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_0

    .line 567
    return-void

    .line 569
    :cond_0
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 570
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 571
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 572
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 573
    return-void
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 4
    .param p1, "color"    # I

    .line 374
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    if-eq v0, p1, :cond_1

    .line 375
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    .line 376
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 377
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 378
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 379
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$200(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 377
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setMaxDate(J)V
    .locals 3
    .param p1, "maxDate"    # J

    .line 525
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 526
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 531
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 532
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 533
    .local v0, "date":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    goto :goto_0

    .line 540
    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 542
    :goto_0
    return-void
.end method

.method public setMinDate(J)V
    .locals 3
    .param p1, "minDate"    # J

    .line 492
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 493
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 501
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 502
    .local v0, "date":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    .line 506
    :cond_1
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 507
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    goto :goto_0

    .line 514
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 516
    :goto_0
    return-void
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    .line 601
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    .line 602
    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .line 440
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 441
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    .line 442
    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 446
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 447
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 448
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 449
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 450
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 451
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$100(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 449
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    .line 355
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    if-eq v0, p1, :cond_1

    .line 356
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    .line 357
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 358
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 359
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 360
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$100(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 358
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1
    .param p1, "showWeekNumber"    # Z

    .line 551
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_0

    .line 552
    return-void

    .line 554
    :cond_0
    iput-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    .line 555
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 556
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 557
    return-void
.end method

.method public setShownWeekCount(I)V
    .locals 1
    .param p1, "count"    # I

    .line 342
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    if-eq v0, p1, :cond_0

    .line 343
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    .line 344
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->invalidate()V

    .line 346
    :cond_0
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 4
    .param p1, "color"    # I

    .line 393
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    if-eq v0, p1, :cond_1

    .line 394
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    .line 395
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 396
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 397
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 398
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$300(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 396
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .line 465
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    .line 466
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    .line 467
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 469
    :cond_0
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 412
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    if-eq v0, p1, :cond_0

    .line 413
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    .line 414
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 418
    :cond_0
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 427
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    if-eq v0, p1, :cond_0

    .line 428
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    .line 429
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 431
    :cond_0
    return-void
.end method
