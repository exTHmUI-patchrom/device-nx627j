.class Landroid/widget/DayPickerPagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "DayPickerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;,
        Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final MONTHS_IN_YEAR:I = 0xc


# instance fields
.field private mCalendarTextColor:Landroid/content/res/ColorStateList;

.field private final mCalendarViewId:I

.field private mCount:I

.field private mDayHighlightColor:Landroid/content/res/ColorStateList;

.field private mDayOfWeekTextAppearance:I

.field private mDaySelectorColor:Landroid/content/res/ColorStateList;

.field private mDayTextAppearance:I

.field private mFirstDayOfWeek:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/DayPickerPagerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutResId:I

.field private final mMaxDate:Landroid/icu/util/Calendar;

.field private final mMinDate:Landroid/icu/util/Calendar;

.field private mMonthTextAppearance:I

.field private final mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

.field private mSelectedDay:Landroid/icu/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResId"    # I
    .param p3, "calendarViewId"    # I

    .line 67
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 42
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    .line 43
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    .line 314
    new-instance v0, Landroid/widget/DayPickerPagerAdapter$1;

    invoke-direct {v0, p0}, Landroid/widget/DayPickerPagerAdapter$1;-><init>(Landroid/widget/DayPickerPagerAdapter;)V

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    iput p2, p0, Landroid/widget/DayPickerPagerAdapter;->mLayoutResId:I

    .line 70
    iput p3, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101042c

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DayPickerPagerAdapter;

    .line 39
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    return-object v0
.end method

.method private getMonthForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .line 205
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private getPositionForDay(Landroid/icu/util/Calendar;)I
    .locals 4
    .param p1, "day"    # Landroid/icu/util/Calendar;

    .line 214
    if-nez p1, :cond_0

    .line 215
    const/4 v0, -0x1

    return v0

    .line 218
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 219
    .local v1, "yearOffset":I
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v2, v0

    .line 220
    .local v2, "monthOffset":I
    mul-int/lit8 v0, v1, 0xc

    add-int/2addr v0, v2

    .line 221
    .local v0, "position":I
    return v0
.end method

.method private getYearForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .line 209
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0xc

    .line 210
    .local v0, "yearOffset":I
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 285
    move-object v0, p3

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 286
    .local v0, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 288
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 289
    return-void
.end method

.method public getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "day"    # Landroid/icu/util/Calendar;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    move-result v0

    .line 113
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 114
    .local v1, "monthView":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    if-nez v1, :cond_0

    .line 115
    const/4 v2, 0x0

    return v2

    .line 117
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 118
    .local v2, "dayOfMonth":I
    iget-object v3, v1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    invoke-virtual {v3, v2, p2}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    move-result v3

    return v3
.end method

.method public getCount()I
    .locals 1

    .line 195
    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mCount:I

    return v0
.end method

.method getDayOfWeekTextAppearance()I
    .locals 1

    .line 181
    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    return v0
.end method

.method getDayTextAppearance()I
    .locals 1

    .line 190
    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 108
    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 293
    move-object v0, p1

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 294
    .local v0, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    return v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .line 299
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object v0, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .line 300
    .local v0, "v":Landroid/widget/SimpleMonthView;
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->getMonthYearLabel()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 303
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 307
    if-nez p1, :cond_0

    .line 308
    const/4 v0, 0x0

    return-object v0

    .line 310
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 311
    .local v0, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    return-object v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 226
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/widget/DayPickerPagerAdapter;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, "itemView":Landroid/view/View;
    iget v1, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SimpleMonthView;

    .line 229
    .local v1, "v":Landroid/widget/SimpleMonthView;
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V

    .line 230
    iget v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setMonthTextAppearance(I)V

    .line 231
    iget v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextAppearance(I)V

    .line 232
    iget v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayTextAppearance(I)V

    .line 234
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    .line 238
    :cond_0
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayHighlightColor(Landroid/content/res/ColorStateList;)V

    .line 242
    :cond_1
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setMonthTextColor(Landroid/content/res/ColorStateList;)V

    .line 244
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V

    .line 245
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayTextColor(Landroid/content/res/ColorStateList;)V

    .line 248
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/DayPickerPagerAdapter;->getMonthForPosition(I)I

    move-result v9

    .line 249
    .local v9, "month":I
    invoke-direct {p0, p2}, Landroid/widget/DayPickerPagerAdapter;->getYearForPosition(I)I

    move-result v10

    .line 252
    .local v10, "year":I
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v9, :cond_3

    .line 253
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .local v2, "selectedDay":I
    goto :goto_0

    .line 255
    .end local v2    # "selectedDay":I
    :cond_3
    const/4 v2, -0x1

    .local v3, "selectedDay":I
    :goto_0
    move v3, v2

    .line 259
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v9, :cond_4

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v10, :cond_4

    .line 260
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 262
    .local v2, "enabledDayRangeStart":I
    move v7, v2

    goto :goto_1

    .end local v2    # "enabledDayRangeStart":I
    :cond_4
    move v7, v6

    .line 266
    .local v7, "enabledDayRangeStart":I
    :goto_1
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v9, :cond_5

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v10, :cond_5

    .line 267
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .local v2, "enabledDayRangeEnd":I
    goto :goto_2

    .line 269
    .end local v2    # "enabledDayRangeEnd":I
    :cond_5
    const/16 v2, 0x1f

    .local v8, "enabledDayRangeEnd":I
    :goto_2
    move v8, v2

    .line 272
    iget v6, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    move-object v2, v1

    move v4, v9

    move v5, v10

    invoke-virtual/range {v2 .. v8}, Landroid/widget/SimpleMonthView;->setMonthParams(IIIIII)V

    .line 275
    new-instance v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    invoke-direct {v2, p2, v0, v1}, Landroid/widget/DayPickerPagerAdapter$ViewHolder;-><init>(ILandroid/view/View;Landroid/widget/SimpleMonthView;)V

    .line 276
    .local v2, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 280
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 200
    move-object v0, p2

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 201
    .local v0, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "calendarTextColor"    # Landroid/content/res/ColorStateList;

    .line 161
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    .line 162
    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

.method setDayOfWeekTextAppearance(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 176
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    .line 177
    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 178
    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "selectorColor"    # Landroid/content/res/ColorStateList;

    .line 166
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    .line 167
    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 168
    return-void
.end method

.method setDayTextAppearance(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 185
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    .line 186
    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 187
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 3
    .param p1, "weekStart"    # I

    .line 97
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    .line 100
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 101
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 102
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object v2, v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .line 103
    .local v2, "monthView":Landroid/widget/SimpleMonthView;
    invoke-virtual {v2, p1}, Landroid/widget/SimpleMonthView;->setFirstDayOfWeek(I)V

    .line 101
    .end local v2    # "monthView":Landroid/widget/SimpleMonthView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method setMonthTextAppearance(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 171
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    .line 172
    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 173
    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    .line 157
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    .line 158
    return-void
.end method

.method public setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V
    .locals 5
    .param p1, "min"    # Landroid/icu/util/Calendar;
    .param p2, "max"    # Landroid/icu/util/Calendar;

    .line 79
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 80
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 82
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 83
    .local v0, "diffYear":I
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v4, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 84
    .local v2, "diffMonth":I
    const/16 v3, 0xc

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    iput v3, p0, Landroid/widget/DayPickerPagerAdapter;->mCount:I

    .line 87
    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method

.method public setSelectedDay(Landroid/icu/util/Calendar;)V
    .locals 6
    .param p1, "day"    # Landroid/icu/util/Calendar;

    .line 128
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    move-result v0

    .line 129
    .local v0, "oldPosition":I
    invoke-direct {p0, p1}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    move-result v1

    .line 132
    .local v1, "newPosition":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 133
    iget-object v3, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 134
    .local v3, "oldMonthView":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    if-eqz v3, :cond_0

    .line 135
    iget-object v4, v3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    .line 140
    .end local v3    # "oldMonthView":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    :cond_0
    if-ltz v1, :cond_1

    .line 141
    iget-object v3, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 142
    .local v2, "newMonthView":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    if-eqz v2, :cond_1

    .line 143
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    .line 144
    .local v3, "dayOfMonth":I
    iget-object v4, v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    invoke-virtual {v4, v3}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    .line 148
    .end local v2    # "newMonthView":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    .end local v3    # "dayOfMonth":I
    :cond_1
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    .line 149
    return-void
.end method
