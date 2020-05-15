.class public Lcom/android/internal/app/procstats/SparseMappingTable;
.super Ljava/lang/Object;
.source "SparseMappingTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/SparseMappingTable$Table;
    }
.end annotation


# static fields
.field private static final ARRAY_MASK:I = 0xff

.field private static final ARRAY_SHIFT:I = 0x8

.field public static final ARRAY_SIZE:I = 0x1000

.field private static final ID_MASK:I = 0xff

.field private static final ID_SHIFT:I = 0x0

.field private static final INDEX_MASK:I = 0xffff

.field private static final INDEX_SHIFT:I = 0x10

.field public static final INVALID_KEY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SparseMappingTable"


# instance fields
.field private final mLongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[J>;"
        }
    .end annotation
.end field

.field private mNextIndex:I

.field private mSequence:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    .line 482
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/procstats/SparseMappingTable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 46
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 46
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/procstats/SparseMappingTable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 46
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/app/procstats/SparseMappingTable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/procstats/SparseMappingTable;
    .param p1, "x1"    # I

    .line 46
    iput p1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    return p1
.end method

.method static synthetic access$212(Lcom/android/internal/app/procstats/SparseMappingTable;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/procstats/SparseMappingTable;
    .param p1, "x1"    # I

    .line 46
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 46
    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 46
    invoke-static {p0}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;)V

    return-void
.end method

.method public static getArrayFromKey(I)I
    .locals 1
    .param p0, "key"    # I

    .line 630
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getIdFromKey(I)B
    .locals 1
    .param p0, "key"    # I

    .line 621
    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static getIndexFromKey(I)I
    .locals 2
    .param p0, "key"    # I

    .line 639
    shr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static logOrThrow(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 647
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stack trace"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 648
    return-void
.end method

.method private static logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 655
    const-string v0, "SparseMappingTable"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_0

    .line 659
    return-void

    .line 657
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static readCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 8
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "array"    # [J
    .param p2, "num"    # I

    .line 596
    array-length v0, p1

    .line 597
    .local v0, "alen":I
    if-le p2, v0, :cond_0

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad array lengths: got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " array is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;)V

    .line 599
    return-void

    .line 602
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 603
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 604
    .local v2, "val":I
    if-ltz v2, :cond_1

    .line 605
    int-to-long v3, v2

    aput-wide v3, p1, v1

    goto :goto_1

    .line 607
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 608
    .local v3, "bottom":I
    not-int v4, v2

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v3

    or-long/2addr v4, v6

    aput-wide v4, p1, v1

    .line 602
    .end local v2    # "val":I
    .end local v3    # "bottom":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    :cond_2
    :goto_2
    if-ge v1, v0, :cond_3

    .line 612
    const-wide/16 v2, 0x0

    aput-wide v2, p1, v1

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 615
    :cond_3
    return-void
.end method

.method private static writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 7
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "array"    # [J
    .param p2, "num"    # I

    .line 575
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 576
    aget-wide v1, p1, v0

    .line 577
    .local v1, "val":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 578
    const-string v3, "SparseMappingTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time val negative: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-wide/16 v1, 0x0

    .line 581
    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 582
    long-to-int v3, v1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 584
    :cond_1
    const/16 v5, 0x20

    shr-long v5, v1, v5

    and-long/2addr v3, v5

    long-to-int v3, v3

    not-int v3, v3

    .line 585
    .local v3, "top":I
    const-wide v4, 0xffffffffL

    and-long/2addr v4, v1

    long-to-int v4, v4

    .line 586
    .local v4, "bottom":I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    .end local v1    # "val":J
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public dumpInternalState(Z)Ljava/lang/String;
    .locals 11
    .param p1, "includeData"    # Z

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SparseMappingTable{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-string/jumbo v1, "mSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, " mNextIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    const-string v1, " mLongs.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 553
    .local v1, "N":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    if-eqz p1, :cond_2

    .line 556
    const/4 v2, 0x0

    move v3, v2

    .line 556
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 557
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 558
    .local v4, "array":[J
    move v5, v2

    .line 558
    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 559
    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_0

    iget v6, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    if-ne v5, v6, :cond_0

    .line 560
    goto :goto_2

    .line 562
    :cond_0
    const-string v6, " %4d %d 0x%016x %-19d\n"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x2

    aget-wide v9, v4, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aget-wide v9, v4, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 556
    .end local v4    # "array":[J
    .end local v5    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 566
    .end local v3    # "i":I
    :cond_2
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    .line 525
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 527
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 529
    .local v3, "size":I
    new-array v4, v3, [J

    .line 530
    .local v4, "array":[J
    invoke-static {p1, v4, v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->readCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 531
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .end local v3    # "size":I
    .end local v4    # "array":[J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 534
    .end local v2    # "i":I
    :cond_0
    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    array-length v2, v2

    iget v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 535
    :cond_1
    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "73252178"

    aput-object v4, v3, v1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    const-string v4, ""

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 536
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected array of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    .line 537
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :cond_2
    :goto_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 491
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    .line 496
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    .line 497
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;

    .line 503
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 506
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 509
    .local v2, "array":[J
    array-length v3, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    array-length v3, v2

    invoke-static {p1, v2, v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 507
    .end local v2    # "array":[J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 514
    .local v1, "lastLongs":[J
    iget v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-static {p1, v1, v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 516
    return-void
.end method
