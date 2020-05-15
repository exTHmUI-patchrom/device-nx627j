.class Landroid/widget/DatePickerSpinnerDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerSpinnerDelegate.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mMaxDate:Landroid/icu/util/Calendar;

.field private mMinDate:Landroid/icu/util/Calendar;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Landroid/icu/util/Calendar;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 20
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 93
    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    .line 79
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 95
    move-object/from16 v3, p1

    iput-object v3, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 96
    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 101
    sget-object v4, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 103
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v8, 0x6

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 105
    .local v8, "spinnersShown":Z
    const/4 v9, 0x7

    invoke-virtual {v4, v9, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 107
    .local v9, "calendarViewShown":Z
    const/16 v10, 0x76c

    invoke-virtual {v4, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 109
    .local v10, "startYear":I
    const/4 v11, 0x2

    const/16 v12, 0x834

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 110
    .local v12, "endYear":I
    const/4 v13, 0x4

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 111
    .local v13, "minDate":Ljava/lang/String;
    const/4 v14, 0x5

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "maxDate":Ljava/lang/String;
    const/16 v14, 0x14

    const v11, 0x1090050

    invoke-virtual {v4, v14, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 114
    .local v11, "layoutResourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    const-string v14, "layout_inflater"

    .line 117
    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 118
    .local v14, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v14, v11, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 121
    new-instance v2, Landroid/widget/DatePickerSpinnerDelegate$1;

    invoke-direct {v2, v0}, Landroid/widget/DatePickerSpinnerDelegate$1;-><init>(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 157
    .local v2, "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .end local v1    # "view":Landroid/view/View;
    .local v17, "view":Landroid/view/View;
    const v3, 0x102037c

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 160
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v3, 0x10201ea

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarView;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    .line 161
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    new-instance v3, Landroid/widget/DatePickerSpinnerDelegate$2;

    invoke-direct {v3, v0}, Landroid/widget/DatePickerSpinnerDelegate$2;-><init>(Landroid/widget/DatePickerSpinnerDelegate;)V

    invoke-virtual {v1, v3}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 170
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v3, 0x102021f

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 171
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 172
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v4

    const-wide/16 v3, 0x64

    .end local v4    # "attributesArray":Landroid/content/res/TypedArray;
    .local v18, "attributesArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 173
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 174
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    const v3, 0x102034c

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 177
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v4, 0x102031a

    invoke-virtual {v1, v4}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 178
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 179
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v4, v0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 180
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v4, v0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 181
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 182
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 183
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v3, 0x102034c

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 186
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v3, 0x10204cd

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 187
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 188
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 189
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const v3, 0x102034c

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 193
    if-nez v8, :cond_0

    if-nez v9, :cond_0

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0, v8}, Landroid/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    .line 197
    invoke-virtual {v0, v9}, Landroid/widget/DatePickerSpinnerDelegate;->setCalendarViewShown(Z)V

    .line 201
    :goto_0
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clear()V

    .line 202
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v13, v1}, Landroid/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 204
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v10, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    goto :goto_1

    .line 207
    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v10, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    .line 209
    :cond_2
    :goto_1
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/widget/DatePickerSpinnerDelegate;->setMinDate(J)V

    .line 212
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clear()V

    .line 213
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x1f

    const/16 v4, 0xb

    if-nez v1, :cond_3

    .line 214
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v15, v1}, Landroid/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 215
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v12, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    goto :goto_2

    .line 218
    :cond_3
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v12, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    .line 220
    :cond_4
    :goto_2
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/widget/DatePickerSpinnerDelegate;->setMaxDate(J)V

    .line 223
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 224
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 225
    move-object/from16 v19, v2

    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .end local v2    # "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    .local v19, "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    const/4 v4, 0x0

    .line 224
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/DatePickerSpinnerDelegate;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 228
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePickerSpinnerDelegate;->reorderSpinners()V

    .line 231
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePickerSpinnerDelegate;->setContentDescriptions()V

    .line 234
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 235
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/DatePicker;->setImportantForAccessibility(I)V

    .line 237
    :cond_5
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePickerSpinnerDelegate;

    .line 47
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePickerSpinnerDelegate;

    .line 47
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePickerSpinnerDelegate;

    .line 47
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePickerSpinnerDelegate;

    .line 47
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePickerSpinnerDelegate;

    .line 47
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/DatePickerSpinnerDelegate;III)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePickerSpinnerDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePickerSpinnerDelegate;

    .line 47
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePickerSpinnerDelegate;

    .line 47
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePickerSpinnerDelegate;

    .line 47
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 441
    if-nez p1, :cond_0

    .line 442
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 444
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 445
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v2

    .line 446
    .local v2, "newCalendar":Landroid/icu/util/Calendar;
    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 447
    return-object v2
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 500
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x2

    .line 501
    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x5

    .line 502
    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 500
    :cond_1
    :goto_0
    return v1
.end method

.method private notifyDateChanged()V
    .locals 5

    .line 576
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 577
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    .line 579
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    .line 578
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 581
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    .line 583
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    .line 582
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 585
    :cond_1
    return-void
.end method

.method private parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z
    .locals 2
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Landroid/icu/util/Calendar;

    .line 491
    :try_start_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    const/4 v0, 0x1

    return v0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 495
    const/4 v1, 0x0

    return v1
.end method

.method private reorderSpinners()V
    .locals 6

    .line 457
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 460
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "yyyyMMMdd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "pattern":Ljava/lang/String;
    invoke-static {v0}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v1

    .line 462
    .local v1, "order":[C
    array-length v2, v1

    .line 463
    .local v2, "spinnerCount":I
    const/4 v3, 0x0

    .line 463
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 464
    aget-char v4, v1, v3

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_2

    const/16 v5, 0x64

    if-eq v4, v5, :cond_1

    const/16 v5, 0x79

    if-ne v4, v5, :cond_0

    .line 474
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 476
    goto :goto_1

    .line 478
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 466
    :cond_1
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 467
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 468
    goto :goto_1

    .line 470
    :cond_2
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 472
    nop

    .line 463
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .line 607
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x10202ae

    const v2, 0x1040194

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 609
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    const v2, 0x1020224

    const v3, 0x1040190

    invoke-direct {p0, v0, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 612
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v3, 0x1040195

    invoke-direct {p0, v0, v1, v3}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 614
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v3, 0x1040191

    invoke-direct {p0, v0, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 617
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const v3, 0x1040196

    invoke-direct {p0, v0, v1, v3}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 619
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040192

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 621
    return-void
.end method

.method private setDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 506
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/Calendar;->set(III)V

    .line 507
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->resetAutofilledValue()V

    .line 508
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 513
    :cond_1
    :goto_0
    return-void
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 2
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .line 596
    add-int/lit8 v0, p2, -0x1

    if-ge p3, v0, :cond_0

    .line 597
    const/4 v0, 0x5

    .local v0, "imeOptions":I
    goto :goto_0

    .line 599
    .end local v0    # "imeOptions":I
    :cond_0
    const/4 v0, 0x6

    .line 601
    .restart local v0    # "imeOptions":I
    :goto_0
    const v1, 0x102034c

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 602
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 603
    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .line 624
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 625
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 626
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 628
    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 4

    .line 568
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 569
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .line 636
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 637
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 638
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 640
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 641
    :cond_0
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 643
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 644
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 646
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 649
    :cond_2
    :goto_0
    return-void
.end method

.method private updateSpinners()V
    .locals 7

    .line 517
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 519
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 520
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 521
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 523
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 524
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v6}, Landroid/icu/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 527
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 528
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 529
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 531
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 532
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    .line 534
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 535
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 536
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 537
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 539
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 540
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 545
    :goto_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 546
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v6

    add-int/2addr v6, v5

    .line 545
    invoke-static {v0, v1, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 547
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 551
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 552
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 555
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 556
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 557
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 559
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 562
    :cond_2
    return-void
.end method

.method private usingNumericMonths()Z
    .locals 2

    .line 431
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 395
    invoke-virtual {p0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 396
    const/4 v0, 0x1

    return v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .line 349
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .line 359
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 272
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 282
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()Landroid/icu/util/Calendar;
    .locals 3

    .line 328
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 329
    .local v0, "maxDate":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 330
    return-object v0
.end method

.method public getMinDate()Landroid/icu/util/Calendar;
    .locals 3

    .line 304
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 305
    .local v0, "minDate":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 306
    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .line 267
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .line 369
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 262
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .line 242
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 243
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 244
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 246
    iput-object p4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 247
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 374
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 375
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 385
    instance-of v0, p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 386
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 387
    .local v0, "ss":Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 388
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 389
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 391
    .end local v0    # "ss":Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 10
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 379
    new-instance v9, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    .line 380
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMinDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMaxDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJ)V

    .line 379
    return-object v9
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .line 354
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CalendarView;->setVisibility(I)V

    .line 355
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 7
    .param p1, "locale"    # Ljava/util/Locale;

    .line 406
    invoke-super {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 408
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 409
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 410
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 411
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 413
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 414
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 416
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 420
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    if-ge v2, v3, :cond_0

    .line 421
    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    const-string v4, "%d"

    new-array v5, v1, [Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 335
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 339
    iput-boolean p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 340
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .line 277
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    .line 278
    return-void
.end method

.method public setMaxDate(J)V
    .locals 3
    .param p1, "maxDate"    # J

    .line 311
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 312
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 313
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 318
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 319
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 321
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 323
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 324
    return-void
.end method

.method public setMinDate(J)V
    .locals 3
    .param p1, "minDate"    # J

    .line 287
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 288
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 289
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 294
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 295
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 297
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 299
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 300
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .line 364
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 251
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    return-void

    .line 254
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 255
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 256
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 257
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    .line 258
    return-void
.end method
