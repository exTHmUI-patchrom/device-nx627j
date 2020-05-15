.class Landroid/widget/TimePickerClockDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;,
        Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;,
        Landroid/widget/TimePickerClockDelegate$ChangeSource;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DELAY_COMMIT_MILLIS:J = 0x7d0L

.field private static final FROM_EXTERNAL_API:I = 0x0

.field private static final FROM_INPUT_PICKER:I = 0x2

.field private static final FROM_RADIAL_PICKER:I = 0x1

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final HOUR_INDEX:I = 0x0

.field private static final MINUTE_INDEX:I = 0x1

.field private static final PM:I = 0x1


# instance fields
.field private mAllowAutoAdvance:Z

.field private final mAmLabel:Landroid/widget/RadioButton;

.field private final mAmPmLayout:Landroid/view/View;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mCommitHour:Ljava/lang/Runnable;

.field private final mCommitMinute:Ljava/lang/Runnable;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHourFormatShowLeadingZero:Z

.field private mHourFormatStartsAtZero:Z

.field private final mHourView:Lcom/android/internal/widget/NumericTextView;

.field private mIs24Hour:Z

.field private mIsAmPmAtLeft:Z

.field private mIsAmPmAtTop:Z

.field private mIsEnabled:Z

.field private mLastAnnouncedIsHour:Z

.field private mLastAnnouncedText:Ljava/lang/CharSequence;

.field private final mMinuteView:Lcom/android/internal/widget/NumericTextView;

.field private final mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private final mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final mPmLabel:Landroid/widget/RadioButton;

.field private mRadialPickerModeEnabled:Z

.field private final mRadialTimePickerHeader:Landroid/view/View;

.field private final mRadialTimePickerModeButton:Landroid/widget/ImageButton;

.field private final mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

.field private final mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

.field private final mSelectHours:Ljava/lang/String;

.field private final mSelectMinutes:Ljava/lang/String;

.field private final mSeparatorView:Landroid/widget/TextView;

.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTextInputPickerHeader:Landroid/view/View;

.field private final mTextInputPickerModeEnabledDescription:Ljava/lang/String;

.field private final mTextInputPickerView:Landroid/widget/TextInputTimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 80
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010098

    aput v3, v1, v2

    sput-object v1, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    .line 81
    new-array v0, v0, [I

    const v1, 0x1010033

    aput v1, v0, v2

    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 132
    move/from16 v4, p5

    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    .line 96
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 111
    iput-boolean v5, v0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 118
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtLeft:Z

    .line 120
    iput-boolean v6, v0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtTop:Z

    .line 915
    new-instance v7, Landroid/widget/TimePickerClockDelegate$2;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$2;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 947
    new-instance v7, Landroid/widget/TimePickerClockDelegate$3;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$3;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 965
    new-instance v7, Landroid/widget/TimePickerClockDelegate$4;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$4;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    .line 1001
    new-instance v7, Landroid/widget/TimePickerClockDelegate$5;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$5;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    .line 1008
    new-instance v7, Landroid/widget/TimePickerClockDelegate$6;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$6;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    .line 1015
    new-instance v7, Landroid/widget/TimePickerClockDelegate$7;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$7;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 1042
    new-instance v7, Landroid/widget/TimePickerClockDelegate$8;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$8;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    .line 135
    iget-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {v7, v2, v8, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 137
    .local v7, "a":Landroid/content/res/TypedArray;
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 139
    .local v8, "inflater":Landroid/view/LayoutInflater;
    iget-object v9, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 141
    .local v9, "res":Landroid/content/res/Resources;
    const v10, 0x10405c1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    .line 142
    const v11, 0x10405c5

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 144
    const/16 v12, 0xc

    const v13, 0x1090112

    invoke-virtual {v7, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 146
    .local v13, "layoutResourceId":I
    move-object/from16 v14, p1

    invoke-virtual {v8, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 147
    .local v15, "mainView":Landroid/view/View;
    invoke-virtual {v15, v6}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 148
    const v12, 0x1020464

    invoke-virtual {v15, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    .line 149
    iget-object v12, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    new-instance v5, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Landroid/widget/TimePickerClockDelegate$1;)V

    invoke-virtual {v12, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    const v5, 0x102029a

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/NumericTextView;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    .line 153
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-object v12, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v12}, Lcom/android/internal/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-object v12, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v5, v12}, Lcom/android/internal/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-object v12, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v5, v12}, Lcom/android/internal/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V

    .line 156
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    new-instance v12, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    invoke-direct {v12, v1, v10}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v12}, Lcom/android/internal/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 158
    const v5, 0x10203e3

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    .line 159
    const v5, 0x102030f

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/NumericTextView;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    .line 160
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 162
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V

    .line 163
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    new-instance v10, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    invoke-direct {v10, v1, v11}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 165
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    const/16 v10, 0x3b

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Lcom/android/internal/widget/NumericTextView;->setRange(II)V

    .line 168
    const v5, 0x10201ab

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    .line 169
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    new-instance v10, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;

    invoke-direct {v10, v6}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Landroid/widget/TimePickerClockDelegate$1;)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    invoke-static/range {p2 .. p2}, Landroid/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "amPmStrings":[Ljava/lang/String;
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const v11, 0x10201a9

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    .line 173
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    const/4 v11, 0x0

    aget-object v12, v5, v11

    invoke-static {v12}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-static {v10}, Landroid/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 177
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const v11, 0x1020385

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    .line 178
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    const/4 v11, 0x1

    aget-object v12, v5, v11

    invoke-static {v12}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-static {v10}, Landroid/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 185
    const/4 v10, 0x0

    .line 188
    .local v10, "headerTextColor":Landroid/content/res/ColorStateList;
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v7, v12, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 190
    .local v6, "timeHeaderTextAppearance":I
    if-eqz v6, :cond_0

    .line 191
    iget-object v12, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v16, v5

    sget-object v5, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    .end local v5    # "amPmStrings":[Ljava/lang/String;
    .local v16, "amPmStrings":[Ljava/lang/String;
    move-object/from16 v17, v8

    const/4 v8, 0x0

    invoke-virtual {v12, v8, v5, v11, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 193
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .local v5, "textAppearance":Landroid/content/res/TypedArray;
    .local v17, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 194
    .local v8, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    invoke-direct {v0, v8}, Landroid/widget/TimePickerClockDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 195
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .end local v5    # "textAppearance":Landroid/content/res/TypedArray;
    .end local v8    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 198
    .end local v16    # "amPmStrings":[Ljava/lang/String;
    .end local v17    # "inflater":Landroid/view/LayoutInflater;
    .local v5, "amPmStrings":[Ljava/lang/String;
    .local v8, "inflater":Landroid/view/LayoutInflater;
    :cond_0
    move-object/from16 v16, v5

    move-object/from16 v17, v8

    .end local v5    # "amPmStrings":[Ljava/lang/String;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v16    # "amPmStrings":[Ljava/lang/String;
    .restart local v17    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    const/16 v5, 0xb

    if-nez v10, :cond_1

    .line 199
    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 202
    :cond_1
    const v8, 0x10202b6

    invoke-virtual {v15, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    .line 204
    if-eqz v10, :cond_2

    .line 205
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 206
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 207
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 208
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v8, v10}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 209
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v8, v10}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 213
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 214
    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_3
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    const v8, 0x102039e

    invoke-virtual {v15, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadialTimePickerView;

    iput-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    .line 223
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 224
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {v8, v11}, Landroid/widget/RadialTimePickerView;->setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V

    .line 226
    const v8, 0x10202b9

    invoke-virtual {v15, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextInputTimePickerView;

    iput-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    .line 227
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-virtual {v8, v11}, Landroid/widget/TextInputTimePickerView;->setListener(Landroid/widget/TextInputTimePickerView$OnValueTypedListener;)V

    .line 229
    const v8, 0x1020474

    .line 230
    invoke-virtual {v15, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    .line 231
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    new-instance v11, Landroid/widget/TimePickerClockDelegate$1;

    invoke-direct {v11, v0}, Landroid/widget/TimePickerClockDelegate$1;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x1040661

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x1040662

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerModeEnabledDescription:Ljava/lang/String;

    .line 242
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    .line 244
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->updateHourFormat()V

    .line 247
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 248
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 249
    .local v5, "currentHour":I
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 250
    .local v8, "currentMinute":I
    iget-boolean v11, v0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    const/4 v12, 0x0

    invoke-direct {v0, v5, v8, v11, v12}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    .line 251
    return-void
.end method

.method static synthetic access$100(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .line 61
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->toggleRadialPickerMode()V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .line 61
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .line 61
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .line 61
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .line 61
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->tryVibrate()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TimePickerClockDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .line 61
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/TimePickerClockDelegate;IIZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZZ)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TimePickerClockDelegate;IZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/TimePickerClockDelegate;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .line 61
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TimePickerClockDelegate;IIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IIZ)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/TimePickerClockDelegate;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->setAmOrPm(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .line 61
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method private applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 8
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 359
    if-eqz p1, :cond_4

    const v0, 0x10102fe

    invoke-virtual {p1, v0}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 365
    :cond_0
    const v1, 0x10100a1

    invoke-virtual {p1, v1}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 366
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 368
    .local v1, "activatedColor":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/util/StateSet;->get(I)[I

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .local v3, "defaultColor":I
    goto :goto_0

    .line 371
    .end local v1    # "activatedColor":I
    .end local v3    # "defaultColor":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 374
    .restart local v1    # "activatedColor":I
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 375
    .local v3, "ta":Landroid/content/res/TypedArray;
    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 376
    .local v4, "disabledAlpha":F
    invoke-direct {p0, v1, v4}, Landroid/widget/TimePickerClockDelegate;->multiplyAlphaComponent(IF)I

    move-result v3

    .line 379
    .end local v4    # "disabledAlpha":F
    .local v3, "defaultColor":I
    :goto_0
    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    .line 384
    :cond_2
    const/4 v4, 0x2

    new-array v5, v4, [[I

    const/4 v6, 0x1

    new-array v7, v6, [I

    aput v0, v7, v2

    aput-object v7, v5, v2

    new-array v0, v2, [I

    aput-object v0, v5, v6

    move-object v0, v5

    .line 385
    .local v0, "stateSet":[[I
    new-array v4, v4, [I

    aput v1, v4, v2

    aput v3, v4, v6

    move-object v2, v4

    .line 386
    .local v2, "colors":[I
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4

    .line 381
    .end local v0    # "stateSet":[[I
    .end local v2    # "colors":[I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 360
    .end local v1    # "activatedColor":I
    .end local v3    # "defaultColor":I
    :cond_4
    :goto_2
    return-object p1
.end method

.method private static ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "v"    # Landroid/widget/TextView;

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 297
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 298
    .local v0, "minWidth":I
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 299
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 300
    return-void
.end method

.method private getCurrentItemShowing()I
    .locals 1

    .line 726
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    return v0
.end method

.method private static getHourMinSeparatorFromPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "dateTimePattern"    # Ljava/lang/String;

    .line 827
    const-string v0, ":"

    .line 828
    .local v0, "defaultSeparator":Ljava/lang/String;
    const/4 v1, 0x0

    .line 829
    .local v1, "foundHourPattern":Z
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "foundHourPattern":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 830
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4

    const/16 v5, 0x27

    if-eq v4, v5, :cond_2

    const/16 v5, 0x48

    if-eq v4, v5, :cond_1

    const/16 v5, 0x4b

    if-eq v4, v5, :cond_1

    const/16 v5, 0x68

    if-eq v4, v5, :cond_1

    const/16 v5, 0x6b

    if-eq v4, v5, :cond_1

    .line 849
    if-nez v3, :cond_0

    .line 850
    goto :goto_1

    .line 852
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 836
    :cond_1
    const/4 v3, 0x1

    .line 837
    goto :goto_1

    .line 841
    :cond_2
    if-nez v3, :cond_3

    .line 842
    goto :goto_1

    .line 844
    :cond_3
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 845
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 846
    .local v4, "quotedSubstring":Landroid/text/SpannableStringBuilder;
    invoke-static {v4, v2}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;I)I

    move-result v5

    .line 847
    .local v5, "quotedTextLength":I
    invoke-virtual {v4, v2, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 839
    .end local v4    # "quotedSubstring":Landroid/text/SpannableStringBuilder;
    .end local v5    # "quotedTextLength":I
    :cond_4
    nop

    .line 829
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 855
    .end local v1    # "i":I
    :cond_5
    const-string v1, ":"

    return-object v1
.end method

.method private getLocalizedHour(I)I
    .locals 1
    .param p1, "hourOfDay"    # I

    .line 767
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-nez v0, :cond_0

    .line 769
    rem-int/lit8 p1, p1, 0xc

    .line 772
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 774
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    :goto_0
    move p1, v0

    .line 777
    :cond_2
    return p1
.end method

.method private initialize(IIZI)V
    .locals 0
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourView"    # Z
    .param p4, "index"    # I

    .line 413
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 414
    iput p2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 415
    iput-boolean p3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 416
    invoke-direct {p0, p4}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    .line 417
    return-void
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "any"    # [C

    .line 859
    array-length v0, p1

    .line 860
    .local v0, "lengthAny":I
    if-lez v0, :cond_2

    .line 861
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 862
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 863
    .local v2, "c":C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 864
    aget-char v4, p1, v3

    if-ne v2, v4, :cond_0

    .line 865
    return v1

    .line 863
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 861
    .end local v2    # "c":C
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 870
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private multiplyAlphaComponent(IF)I
    .locals 4
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    .line 390
    const v0, 0xffffff

    and-int/2addr v0, p1

    .line 391
    .local v0, "srcRgb":I
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 392
    .local v1, "srcAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 393
    .local v2, "dstAlpha":I
    shl-int/lit8 v3, v2, 0x18

    or-int/2addr v3, v0

    return v3
.end method

.method static final obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 344
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 344
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 4

    .line 733
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 734
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 737
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 740
    :cond_1
    return-void
.end method

.method private setAmOrPm(I)V
    .locals 4
    .param p1, "amOrPm"    # I

    .line 903
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    .line 905
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 907
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 908
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 912
    :cond_0
    return-void
.end method

.method private setAmPmStart(Z)V
    .locals 7
    .param p1, "isAmPmAtStart"    # Z

    .line 453
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    .line 454
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 455
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 456
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 477
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    .line 478
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 480
    :cond_1
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtTop:Z

    if-ne v2, p1, :cond_2

    .line 482
    return-void

    .line 486
    :cond_2
    if-eqz p1, :cond_3

    .line 487
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    .line 488
    .local v2, "otherViewId":I
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 489
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 491
    .end local v2    # "otherViewId":I
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    .line 492
    .restart local v2    # "otherViewId":I
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 493
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 497
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 498
    .local v1, "otherView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 499
    .local v3, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 500
    .local v4, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 501
    .local v5, "left":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 502
    .local v6, "right":I
    invoke-virtual {v1, v5, v4, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 504
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtTop:Z

    .end local v1    # "otherView":Landroid/view/View;
    .end local v2    # "otherViewId":I
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    goto :goto_4

    .line 459
    :cond_4
    :goto_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-nez v2, :cond_5

    .line 460
    move v2, p1

    .local v2, "isAmPmAtLeft":Z
    goto :goto_2

    .line 462
    .end local v2    # "isAmPmAtLeft":Z
    :cond_5
    xor-int/lit8 v2, p1, 0x1

    .line 464
    .restart local v2    # "isAmPmAtLeft":Z
    :goto_2
    iget-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtLeft:Z

    if-ne v4, v2, :cond_6

    .line 466
    return-void

    .line 469
    :cond_6
    if-eqz v2, :cond_7

    .line 470
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 471
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/NumericTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    .line 473
    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 474
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v3}, Lcom/android/internal/widget/NumericTextView;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 476
    :goto_3
    iput-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtLeft:Z

    .line 477
    .end local v2    # "isAmPmAtLeft":Z
    nop

    .line 507
    :cond_8
    :goto_4
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    return-void
.end method

.method private setCurrentItemShowing(IZZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "announce"    # Z

    .line 886
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    .line 888
    if-nez p1, :cond_0

    .line 889
    if-eqz p3, :cond_1

    .line 890
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 893
    :cond_0
    if-eqz p3, :cond_1

    .line 894
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 898
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/NumericTextView;->setActivated(Z)V

    .line 899
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    if-ne p1, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumericTextView;->setActivated(Z)V

    .line 900
    return-void
.end method

.method private setHourInternal(IIZZ)V
    .locals 3
    .param p1, "hour"    # I
    .param p2, "source"    # I
    .param p3, "announce"    # Z
    .param p4, "notify"    # Z

    .line 528
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    if-ne v0, p1, :cond_0

    .line 529
    return-void

    .line 532
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->resetAutofilledValue()V

    .line 533
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 534
    invoke-direct {p0, p1, p3}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 535
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 537
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 538
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 539
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    const/16 v2, 0xc

    if-ge p1, v2, :cond_1

    const/4 v0, 0x0

    nop

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)Z

    .line 541
    :cond_2
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    .line 542
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 545
    :cond_3
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 546
    if-eqz p4, :cond_4

    .line 547
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 549
    :cond_4
    return-void
.end method

.method private setMinuteInternal(IIZ)V
    .locals 1
    .param p1, "minute"    # I
    .param p2, "source"    # I
    .param p3, "notify"    # Z

    .line 577
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    if-ne v0, p1, :cond_0

    .line 578
    return-void

    .line 581
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->resetAutofilledValue()V

    .line 582
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 583
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    .line 585
    if-eq p2, v0, :cond_1

    .line 586
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 588
    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 589
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 592
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 593
    if-eqz p3, :cond_3

    .line 594
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 596
    :cond_3
    return-void
.end method

.method private toggleRadialPickerMode()V
    .locals 3

    .line 254
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0, v2}, Landroid/widget/TextInputTimePickerView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    const v1, 0x108011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 260
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 262
    iput-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v2}, Landroid/widget/RadialTimePickerView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/TextInputTimePickerView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    const v1, 0x1080168

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 269
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerModeEnabledDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 271
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 272
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 273
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 274
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 276
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 278
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void
.end method

.method private tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHour"    # Z

    .line 874
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 876
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 877
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    .line 878
    iput-boolean p2, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    .line 880
    :cond_1
    return-void
.end method

.method private tryVibrate()V
    .locals 2

    .line 743
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->performHapticFeedback(I)Z

    .line 744
    return-void
.end method

.method private updateAmPmLabelStates(I)V
    .locals 4
    .param p1, "amOrPm"    # I

    .line 747
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 748
    .local v2, "isAm":Z
    :goto_0
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 749
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 751
    if-ne p1, v1, :cond_1

    move v0, v1

    nop

    .line 752
    .local v0, "isPm":Z
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 753
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 754
    return-void
.end method

.method private updateHeaderAmPm()V
    .locals 4

    .line 441
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 445
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "dateTimePattern":Ljava/lang/String;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 447
    .local v1, "isAmPmAtStart":Z
    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setAmPmStart(Z)V

    .line 448
    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    .line 450
    .end local v0    # "dateTimePattern":Ljava/lang/String;
    .end local v1    # "isAmPmAtStart":Z
    :goto_1
    return-void
.end method

.method private updateHeaderHour(IZ)V
    .locals 3
    .param p1, "hourOfDay"    # I
    .param p2, "announce"    # Z

    .line 781
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v0

    .line 782
    .local v0, "localizedHour":I
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    .line 784
    if-eqz p2, :cond_0

    .line 785
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    .line 787
    :cond_0
    return-void
.end method

.method private updateHeaderMinute(IZ)V
    .locals 2
    .param p1, "minuteOfHour"    # I
    .param p2, "announce"    # Z

    .line 790
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    .line 792
    if-eqz p2, :cond_0

    .line 793
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    .line 795
    :cond_0
    return-void
.end method

.method private updateHeaderSeparator()V
    .locals 3

    .line 806
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    .line 807
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    .line 806
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->getHourMinSeparatorFromPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, "separatorText":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v2, v1}, Landroid/widget/TextInputTimePickerView;->updateSeparator(Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method private updateHourFormat()V
    .locals 10

    .line 309
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    .line 310
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    .line 309
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 312
    .local v1, "lengthPattern":I
    const/4 v2, 0x0

    .line 313
    .local v2, "showLeadingZero":Z
    const/4 v3, 0x0

    .line 315
    .local v3, "hourFormat":C
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_1
    const/16 v6, 0x4b

    const/16 v7, 0x48

    if-ge v5, v1, :cond_3

    .line 316
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 317
    .local v8, "c":C
    if-eq v8, v7, :cond_2

    const/16 v9, 0x68

    if-eq v8, v9, :cond_2

    if-eq v8, v6, :cond_2

    const/16 v9, 0x6b

    if-ne v8, v9, :cond_1

    goto :goto_2

    .line 315
    .end local v8    # "c":C
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 318
    .restart local v8    # "c":C
    :cond_2
    :goto_2
    move v3, v8

    .line 319
    add-int/lit8 v9, v5, 0x1

    if-ge v9, v1, :cond_3

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3

    .line 320
    const/4 v2, 0x1

    .line 326
    .end local v5    # "i":I
    .end local v8    # "c":C
    :cond_3
    iput-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    .line 327
    const/4 v5, 0x1

    if-eq v3, v6, :cond_5

    if-ne v3, v7, :cond_4

    goto :goto_3

    :cond_4
    move v6, v4

    goto :goto_4

    :cond_5
    :goto_3
    move v6, v5

    :goto_4
    iput-boolean v6, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 330
    iget-boolean v6, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    xor-int/2addr v5, v6

    .line 331
    .local v5, "minHour":I
    iget-boolean v6, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v6, :cond_6

    const/16 v6, 0x17

    goto :goto_5

    :cond_6
    const/16 v6, 0xb

    :goto_5
    add-int/2addr v6, v5

    .line 332
    .local v6, "maxHour":I
    iget-object v7, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v7, v5, v6}, Lcom/android/internal/widget/NumericTextView;->setRange(II)V

    .line 333
    iget-object v7, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-boolean v8, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/NumericTextView;->setShowLeadingZeroes(Z)V

    .line 335
    iget-object v7, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v7}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v7

    .line 336
    .local v7, "digits":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 337
    .local v8, "maxCharLength":I
    nop

    .local v4, "i":I
    :goto_6
    const/16 v9, 0xa

    if-ge v4, v9, :cond_7

    .line 338
    aget-object v9, v7, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 340
    .end local v4    # "i":I
    :cond_7
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    mul-int/lit8 v9, v8, 0x2

    invoke-virtual {v4, v9}, Landroid/widget/TextInputTimePickerView;->setHourFormat(I)V

    .line 341
    return-void
.end method

.method private updateRadialPicker(I)V
    .locals 4
    .param p1, "index"    # I

    .line 436
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->initialize(IIZ)V

    .line 437
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    .line 438
    return-void
.end method

.method private updateTextInputPicker()V
    .locals 6

    .line 431
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v1

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 432
    iget v3, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    iget-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 431
    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextInputTimePickerView;->updateTextInputValues(IIIZZ)V

    .line 433
    return-void
.end method

.method private updateUI(I)V
    .locals 2
    .param p1, "index"    # I

    .line 420
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 421
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 422
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderSeparator()V

    .line 423
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    .line 424
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateRadialPicker(I)V

    .line 425
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 427
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 428
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 671
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerClockDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 672
    const/4 v0, 0x1

    return v0
.end method

.method public getAmView()Landroid/view/View;
    .locals 1

    .line 712
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 651
    const/4 v0, -0x1

    return v0
.end method

.method public getHour()I
    .locals 3

    .line 556
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 557
    .local v0, "currentHour":I
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    .line 558
    return v0

    .line 561
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getAmOrPm()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 562
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    return v1

    .line 564
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    return v1
.end method

.method public getHourView()Landroid/view/View;
    .locals 1

    .line 698
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .line 603
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    return v0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 1

    .line 705
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method public getPmView()Landroid/view/View;
    .locals 1

    .line 719
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public is24Hour()Z
    .locals 1

    .line 630
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 645
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 677
    const/4 v0, 0x1

    .line 678
    .local v0, "flags":I
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    .line 679
    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    .line 681
    :cond_0
    or-int/lit8 v0, v0, 0x40

    .line 684
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 685
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 687
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 688
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 687
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "selectedTime":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v2

    if-nez v2, :cond_1

    .line 690
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 691
    .local v2, "selectionMode":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 662
    instance-of v0, p1, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 663
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 664
    .local v0, "ss":Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->is24HourMode()Z

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getCurrentItemShowing()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    .line 665
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 667
    .end local v0    # "ss":Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 7
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 656
    new-instance v6, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    .line 657
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->is24Hour()Z

    move-result v4

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentItemShowing()I

    move-result v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    .line 656
    return-object v6
.end method

.method public setDate(II)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 512
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v0}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZZ)V

    .line 513
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IIZ)V

    .line 515
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 516
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 635
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setEnabled(Z)V

    .line 636
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setEnabled(Z)V

    .line 637
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 638
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 639
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setEnabled(Z)V

    .line 640
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 641
    return-void
.end method

.method public setHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .line 523
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZZ)V

    .line 524
    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1
    .param p1, "is24Hour"    # Z

    .line 614
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eq v0, p1, :cond_0

    .line 615
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 616
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 618
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHourFormat()V

    .line 619
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    .line 621
    :cond_0
    return-void
.end method

.method public setMinute(I)V
    .locals 2
    .param p1, "minute"    # I

    .line 573
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IIZ)V

    .line 574
    return-void
.end method

.method public validateInput()Z
    .locals 1

    .line 282
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0}, Landroid/widget/TextInputTimePickerView;->validateInput()Z

    move-result v0

    return v0
.end method
