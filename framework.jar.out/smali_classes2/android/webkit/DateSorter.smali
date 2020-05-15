.class public Landroid/webkit/DateSorter;
.super Ljava/lang/Object;
.source "DateSorter.java"


# static fields
.field public static final DAY_COUNT:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final NUM_DAYS_AGO:I = 0x7


# instance fields
.field private mBins:[J

.field private mLabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/webkit/DateSorter;->mBins:[J

    .line 44
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 54
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 55
    .local v2, "c":Ljava/util/Calendar;
    invoke-direct {p0, v2}, Landroid/webkit/DateSorter;->beginningOfDay(Ljava/util/Calendar;)V

    .line 58
    iget-object v3, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    .line 59
    const/4 v3, -0x1

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 60
    iget-object v5, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    aput-wide v7, v5, v9

    .line 61
    const/4 v5, -0x6

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 62
    iget-object v5, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v10, 0x2

    aput-wide v7, v5, v10

    .line 63
    const/4 v5, 0x7

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 64
    invoke-virtual {v2, v10, v3}, Ljava/util/Calendar;->add(II)V

    .line 65
    iget-object v3, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v4, 0x3

    aput-wide v7, v3, v4

    .line 68
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 69
    .local v3, "locale":Ljava/util/Locale;
    if-nez v3, :cond_0

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 72
    :cond_0
    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v7

    .line 73
    .local v7, "localeData":Llibcore/icu/LocaleData;
    iget-object v8, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    iget-object v11, v7, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    aput-object v11, v8, v6

    .line 74
    iget-object v8, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    iget-object v11, v7, Llibcore/icu/LocaleData;->yesterday:Ljava/lang/String;

    aput-object v11, v8, v9

    .line 76
    const v8, 0x1150013

    .line 77
    .local v8, "resId":I
    invoke-virtual {v1, v8, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v11

    .line 78
    .local v11, "format":Ljava/lang/String;
    iget-object v12, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v6

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v10

    .line 80
    iget-object v5, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v6, 0x10402ff

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 81
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v5, 0x1040416

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 82
    return-void
.end method

.method private beginningOfDay(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "c"    # Ljava/util/Calendar;

    .line 126
    const/4 v0, 0x0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 127
    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 128
    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 129
    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 130
    return-void
.end method


# virtual methods
.method public getBoundary(I)J
    .locals 3
    .param p1, "index"    # I

    .line 113
    const/4 v0, 0x4

    .line 115
    .local v0, "lastDay":I
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 118
    :cond_1
    if-ne p1, v0, :cond_2

    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1

    .line 119
    :cond_2
    iget-object v1, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v1, v1, p1

    return-wide v1
.end method

.method public getIndex(J)I
    .locals 4
    .param p1, "time"    # J

    .line 91
    const/4 v0, 0x4

    .line 92
    .local v0, "lastDay":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 93
    iget-object v2, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v2, v2, v1

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    return v1

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 103
    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 103
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method
