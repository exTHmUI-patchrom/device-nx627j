.class public final Landroid/text/AutoGrowArray;
.super Ljava/lang/Object;
.source "AutoGrowArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/AutoGrowArray$FloatArray;,
        Landroid/text/AutoGrowArray$IntArray;,
        Landroid/text/AutoGrowArray$ByteArray;
    }
.end annotation


# static fields
.field private static final MAX_CAPACITY_TO_BE_KEPT:I = 0x2710

.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 33
    invoke-static {p0, p1}, Landroid/text/AutoGrowArray;->computeNewCapacity(II)I

    move-result v0

    return v0
.end method

.method private static computeNewCapacity(II)I
    .locals 2
    .param p0, "currentSize"    # I
    .param p1, "requested"    # I

    .line 43
    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    .line 44
    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p0, 0x1

    :goto_0
    add-int/2addr v0, p0

    .line 45
    .local v0, "targetCapacity":I
    if-le v0, p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    return v1
.end method
