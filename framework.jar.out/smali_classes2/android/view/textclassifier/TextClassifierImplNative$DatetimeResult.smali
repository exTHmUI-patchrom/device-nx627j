.class public final Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;
.super Ljava/lang/Object;
.source "TextClassifierImplNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImplNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DatetimeResult"
.end annotation


# static fields
.field static final GRANULARITY_DAY:I = 0x3

.field static final GRANULARITY_HOUR:I = 0x4

.field static final GRANULARITY_MINUTE:I = 0x5

.field static final GRANULARITY_MONTH:I = 0x1

.field static final GRANULARITY_SECOND:I = 0x6

.field static final GRANULARITY_WEEK:I = 0x2

.field static final GRANULARITY_YEAR:I


# instance fields
.field private final mGranularity:I

.field private final mTimeMsUtc:J


# direct methods
.method constructor <init>(JI)V
    .locals 0
    .param p1, "timeMsUtc"    # J
    .param p3, "granularity"    # I

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p3, p0, Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;->mGranularity:I

    .line 146
    iput-wide p1, p0, Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;->mTimeMsUtc:J

    .line 147
    return-void
.end method


# virtual methods
.method public getGranularity()I
    .locals 1

    .line 154
    iget v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;->mGranularity:I

    return v0
.end method

.method public getTimeMsUtc()J
    .locals 2

    .line 150
    iget-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;->mTimeMsUtc:J

    return-wide v0
.end method
