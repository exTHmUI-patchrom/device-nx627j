.class public final Landroid/view/FrameMetrics;
.super Ljava/lang/Object;
.source "FrameMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FrameMetrics$Index;,
        Landroid/view/FrameMetrics$Metric;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x2

.field public static final COMMAND_ISSUE_DURATION:I = 0x6

.field public static final DRAW_DURATION:I = 0x4

.field private static final DURATIONS:[I

.field public static final FIRST_DRAW_FRAME:I = 0x9

.field private static final FRAME_INFO_FLAG_FIRST_DRAW:I = 0x1

.field public static final INPUT_HANDLING_DURATION:I = 0x1

.field public static final INTENDED_VSYNC_TIMESTAMP:I = 0xa

.field public static final LAYOUT_MEASURE_DURATION:I = 0x3

.field public static final SWAP_BUFFERS_DURATION:I = 0x7

.field public static final SYNC_DURATION:I = 0x5

.field public static final TOTAL_DURATION:I = 0x8

.field public static final UNKNOWN_DELAY_DURATION:I = 0x0

.field public static final VSYNC_TIMESTAMP:I = 0xb


# instance fields
.field final mTimingData:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 231
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/FrameMetrics;->DURATIONS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0x1
        0xd
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/view/FrameMetrics;)V
    .locals 4
    .param p1, "other"    # Landroid/view/FrameMetrics;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    .line 265
    iget-object v0, p1, Landroid/view/FrameMetrics;->mTimingData:[J

    iget-object v1, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    iget-object v2, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    return-void
.end method


# virtual methods
.method public getMetric(I)J
    .locals 6
    .param p1, "id"    # I

    .line 286
    const-wide/16 v0, -0x1

    if-ltz p1, :cond_6

    const/16 v2, 0xb

    if-le p1, v2, :cond_0

    goto :goto_1

    .line 290
    :cond_0
    iget-object v3, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    if-nez v3, :cond_1

    .line 291
    return-wide v0

    .line 294
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 295
    iget-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v2, v4

    :goto_0
    return-wide v2

    .line 296
    :cond_3
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 297
    iget-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0

    .line 298
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v2, :cond_5

    .line 299
    iget-object v1, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    aget-wide v0, v1, v0

    return-wide v0

    .line 302
    :cond_5
    mul-int/2addr v0, p1

    .line 303
    .local v0, "durationsIdx":I
    iget-object v1, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    sget-object v2, Landroid/view/FrameMetrics;->DURATIONS:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aget-wide v1, v1, v2

    iget-object v3, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    sget-object v4, Landroid/view/FrameMetrics;->DURATIONS:[I

    aget v4, v4, v0

    aget-wide v3, v3, v4

    sub-long/2addr v1, v3

    return-wide v1

    .line 287
    .end local v0    # "durationsIdx":I
    :cond_6
    :goto_1
    return-wide v0
.end method
