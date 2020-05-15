.class public final Landroid/media/session/PlaybackState;
.super Ljava/lang/Object;
.source "PlaybackState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/PlaybackState$Builder;,
        Landroid/media/session/PlaybackState$CustomAction;,
        Landroid/media/session/PlaybackState$State;,
        Landroid/media/session/PlaybackState$Actions;
    }
.end annotation


# static fields
.field public static final ACTION_FAST_FORWARD:J = 0x40L

.field public static final ACTION_PAUSE:J = 0x2L

.field public static final ACTION_PLAY:J = 0x4L

.field public static final ACTION_PLAY_FROM_MEDIA_ID:J = 0x400L

.field public static final ACTION_PLAY_FROM_SEARCH:J = 0x800L

.field public static final ACTION_PLAY_FROM_URI:J = 0x2000L

.field public static final ACTION_PLAY_PAUSE:J = 0x200L

.field public static final ACTION_PREPARE:J = 0x4000L

.field public static final ACTION_PREPARE_FROM_MEDIA_ID:J = 0x8000L

.field public static final ACTION_PREPARE_FROM_SEARCH:J = 0x10000L

.field public static final ACTION_PREPARE_FROM_URI:J = 0x20000L

.field public static final ACTION_REWIND:J = 0x8L

.field public static final ACTION_SEEK_TO:J = 0x100L

.field public static final ACTION_SET_RATING:J = 0x80L

.field public static final ACTION_SKIP_TO_NEXT:J = 0x20L

.field public static final ACTION_SKIP_TO_PREVIOUS:J = 0x10L

.field public static final ACTION_SKIP_TO_QUEUE_ITEM:J = 0x1000L

.field public static final ACTION_STOP:J = 0x1L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/session/PlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYBACK_POSITION_UNKNOWN:J = -0x1L

.field public static final STATE_BUFFERING:I = 0x6

.field public static final STATE_CONNECTING:I = 0x8

.field public static final STATE_ERROR:I = 0x7

.field public static final STATE_FAST_FORWARDING:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_REWINDING:I = 0x5

.field public static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field public static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field public static final STATE_SKIPPING_TO_QUEUE_ITEM:I = 0xb

.field public static final STATE_STOPPED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PlaybackState"


# instance fields
.field private final mActions:J

.field private final mActiveItemId:J

.field private final mBufferedPosition:J

.field private mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorMessage:Ljava/lang/CharSequence;

.field private final mExtras:Landroid/os/Bundle;

.field private final mPosition:J

.field private final mSpeed:F

.field private final mState:I

.field private final mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 639
    new-instance v0, Landroid/media/session/PlaybackState$1;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$1;-><init>()V

    sput-object v0, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "updateTime"    # J
    .param p6, "speed"    # F
    .param p7, "bufferedPosition"    # J
    .param p9, "transportControls"    # J
    .param p12, "activeItemId"    # J
    .param p14, "error"    # Ljava/lang/CharSequence;
    .param p15, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJJ",
            "Ljava/util/List<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;J",
            "Ljava/lang/CharSequence;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .local p11, "customActions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/PlaybackState$CustomAction;>;"
    move-object/from16 v0, p0

    .line 299
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 300
    move/from16 v1, p1

    iput v1, v0, Landroid/media/session/PlaybackState;->mState:I

    .line 301
    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/media/session/PlaybackState;->mPosition:J

    .line 302
    move/from16 v4, p6

    iput v4, v0, Landroid/media/session/PlaybackState;->mSpeed:F

    .line 303
    move-wide/from16 v5, p4

    iput-wide v5, v0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    .line 304
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    .line 305
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/media/session/PlaybackState;->mActions:J

    .line 306
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v12, p11

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    .line 307
    move-wide/from16 v13, p12

    iput-wide v13, v0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    .line 308
    move-object/from16 v11, p14

    iput-object v11, v0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    .line 309
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    .line 310
    return-void
.end method

.method synthetic constructor <init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;Landroid/os/Bundle;Landroid/media/session/PlaybackState$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # F
    .param p7, "x4"    # J
    .param p9, "x5"    # J
    .param p11, "x6"    # Ljava/util/List;
    .param p12, "x7"    # J
    .param p14, "x8"    # Ljava/lang/CharSequence;
    .param p15, "x9"    # Landroid/os/Bundle;
    .param p16, "x10"    # Landroid/media/session/PlaybackState$1;

    .line 39
    invoke-direct/range {p0 .. p15}, Landroid/media/session/PlaybackState;-><init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/session/PlaybackState;->mState:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    .line 319
    sget-object v0, Landroid/media/session/PlaybackState$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    .line 323
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/session/PlaybackState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/session/PlaybackState$1;

    .line 39
    invoke-direct {p0, p1}, Landroid/media/session/PlaybackState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/session/PlaybackState;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .line 39
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Landroid/media/session/PlaybackState;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .line 39
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroid/media/session/PlaybackState;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .line 39
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/session/PlaybackState;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .line 39
    iget v0, p0, Landroid/media/session/PlaybackState;->mState:I

    return v0
.end method

.method static synthetic access$400(Landroid/media/session/PlaybackState;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .line 39
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$500(Landroid/media/session/PlaybackState;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .line 39
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/media/session/PlaybackState;)F
    .locals 1
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .line 39
    iget v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    return v0
.end method

.method static synthetic access$700(Landroid/media/session/PlaybackState;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .line 39
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/media/session/PlaybackState;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .line 39
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .line 39
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static getActionForRccFlag(I)J
    .locals 2
    .param p0, "flag"    # I

    .line 585
    const/4 v0, 0x4

    if-eq p0, v0, :cond_7

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x10

    if-eq p0, v0, :cond_5

    const/16 v0, 0x20

    if-eq p0, v0, :cond_4

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3

    const/16 v0, 0x80

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 607
    const-wide/16 v0, 0x0

    return-wide v0

    .line 589
    :pswitch_0
    const-wide/16 v0, 0x8

    return-wide v0

    .line 587
    :pswitch_1
    const-wide/16 v0, 0x10

    return-wide v0

    .line 605
    :cond_0
    const-wide/16 v0, 0x80

    return-wide v0

    .line 603
    :cond_1
    const-wide/16 v0, 0x100

    return-wide v0

    .line 601
    :cond_2
    const-wide/16 v0, 0x20

    return-wide v0

    .line 599
    :cond_3
    const-wide/16 v0, 0x40

    return-wide v0

    .line 597
    :cond_4
    const-wide/16 v0, 0x1

    return-wide v0

    .line 595
    :cond_5
    const-wide/16 v0, 0x2

    return-wide v0

    .line 593
    :cond_6
    const-wide/16 v0, 0x200

    return-wide v0

    .line 591
    :cond_7
    const-wide/16 v0, 0x4

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getActionsFromRccControlFlags(I)J
    .locals 8
    .param p0, "rccFlags"    # I

    .line 558
    const-wide/16 v0, 0x0

    .line 559
    .local v0, "actions":J
    const-wide/16 v2, 0x1

    .line 560
    .local v2, "flag":J
    :goto_0
    int-to-long v4, p0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 561
    int-to-long v4, p0

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 562
    long-to-int v4, v2

    invoke-static {v4}, Landroid/media/session/PlaybackState;->getActionForRccFlag(I)J

    move-result-wide v4

    or-long/2addr v0, v4

    .line 564
    :cond_0
    const/4 v4, 0x1

    shl-long/2addr v2, v4

    goto :goto_0

    .line 566
    :cond_1
    return-wide v0
.end method

.method public static getRccControlFlagsFromActions(J)I
    .locals 7
    .param p0, "actions"    # J

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "rccFlags":I
    const-wide/16 v1, 0x1

    .line 575
    .local v1, "action":J
    :goto_0
    cmp-long v3, v1, p0

    if-gtz v3, :cond_1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 576
    and-long v3, v1, p0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 577
    invoke-static {v1, v2}, Landroid/media/session/PlaybackState;->getRccFlagForAction(J)I

    move-result v3

    or-int/2addr v0, v3

    .line 579
    :cond_0
    const/4 v3, 0x1

    shl-long/2addr v1, v3

    goto :goto_0

    .line 581
    :cond_1
    return v0
.end method

.method private static getRccFlagForAction(J)I
    .locals 7
    .param p0, "action"    # J

    .line 613
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    long-to-int v0, p0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 614
    .local v0, "testAction":I
    :goto_0
    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    const/16 v2, 0x8

    if-eq v0, v2, :cond_7

    const/16 v3, 0x10

    if-eq v0, v3, :cond_6

    const/16 v4, 0x80

    const/16 v5, 0x20

    if-eq v0, v5, :cond_5

    const/16 v6, 0x40

    if-eq v0, v6, :cond_4

    const/16 v6, 0x200

    if-eq v0, v4, :cond_3

    const/16 v4, 0x100

    if-eq v0, v4, :cond_2

    if-eq v0, v6, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 636
    return v1

    .line 624
    :pswitch_0
    return v3

    .line 626
    :pswitch_1
    return v5

    .line 622
    :cond_1
    return v2

    .line 632
    :cond_2
    return v4

    .line 634
    :cond_3
    return v6

    .line 628
    :cond_4
    return v6

    .line 630
    :cond_5
    return v4

    .line 616
    :cond_6
    const/4 v1, 0x1

    return v1

    .line 618
    :cond_7
    const/4 v1, 0x2

    return v1

    .line 620
    :cond_8
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRccStateFromState(I)I
    .locals 1
    .param p0, "state"    # I

    .line 528
    packed-switch p0, :pswitch_data_0

    .line 550
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 546
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 544
    :pswitch_2
    const/4 v0, 0x7

    return v0

    .line 532
    :pswitch_3
    const/16 v0, 0x9

    return v0

    .line 530
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 542
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 534
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 540
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 538
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 548
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 536
    :pswitch_a
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getStateFromRccState(I)I
    .locals 1
    .param p0, "rccState"    # I

    .line 493
    packed-switch p0, :pswitch_data_0

    .line 515
    const/4 v0, -0x1

    return v0

    .line 497
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 495
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 509
    :pswitch_2
    const/16 v0, 0x9

    return v0

    .line 511
    :pswitch_3
    const/16 v0, 0xa

    return v0

    .line 507
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 499
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 505
    :pswitch_6
    const/4 v0, 0x3

    return v0

    .line 503
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 513
    :pswitch_8
    const/4 v0, 0x1

    return v0

    .line 501
    :pswitch_9
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public getActions()J
    .locals 2

    .line 435
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    return-wide v0
.end method

.method public getActiveQueueItemId()J
    .locals 2

    .line 472
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    return-wide v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 395
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    return-wide v0
.end method

.method public getCustomActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 450
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 481
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLastPositionUpdateTime()J
    .locals 2

    .line 460
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 406
    iget v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    return v0
.end method

.method public getPosition()J
    .locals 2

    .line 386
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .line 379
    iget v0, p0, Landroid/media/session/PlaybackState;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaybackState {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/session/PlaybackState;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/session/PlaybackState;->mPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, ", buffered position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 331
    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/session/PlaybackState;->mActions:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, ", custom actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    const-string v1, ", active item id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 337
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 348
    iget v0, p0, Landroid/media/session/PlaybackState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 350
    iget v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 351
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 352
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 353
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 354
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 355
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 356
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 358
    return-void
.end method
