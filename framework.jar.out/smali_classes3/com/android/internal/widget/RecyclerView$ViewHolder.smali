.class public abstract Lcom/android/internal/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field mOldPosition:I

.field mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAccessibilityState:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Lcom/android/internal/widget/RecyclerView$Recycler;

.field mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10015
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;

    .line 10042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9909
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 9910
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 9911
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 9912
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 9913
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 9916
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 9918
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10017
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 10018
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 10020
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 10024
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 10026
    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 10030
    iput v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10033
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10043
    if-eqz p1, :cond_0

    .line 10046
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10047
    return-void

    .line 10044
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 9906
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 9906
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p1, "x1"    # Lcom/android/internal/widget/RecyclerView;

    .line 9906
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->onEnteredHiddenState(Lcom/android/internal/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p1, "x1"    # Lcom/android/internal/widget/RecyclerView;

    .line 9906
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->onLeftHiddenState(Lcom/android/internal/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 9906
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$Recycler;)Lcom/android/internal/widget/RecyclerView$Recycler;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p1, "x1"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 9906
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/android/internal/widget/RecyclerView$Recycler;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 9906
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p1, "x1"    # Z

    .line 9906
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return p1
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .line 10261
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 10262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 10263
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 10265
    :cond_0
    return-void
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 1

    .line 10402
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onEnteredHiddenState(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/internal/widget/RecyclerView;

    .line 10308
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10309
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10310
    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Z

    .line 10312
    return-void
.end method

.method private onLeftHiddenState(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/internal/widget/RecyclerView;

    .line 10318
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Z

    .line 10320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10321
    return-void
.end method

.method private shouldBeKeptAsChild()Z
    .locals 1

    .line 10394
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 2
    .param p1, "payload"    # Ljava/lang/Object;

    .line 10252
    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 10253
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 10254
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 10255
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 10256
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10258
    :cond_1
    :goto_0
    return-void
.end method

.method addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 10248
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10249
    return-void
.end method

.method clearOldPosition()V
    .locals 1

    .line 10072
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10073
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10074
    return-void
.end method

.method clearPayload()V
    .locals 1

    .line 10268
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 10269
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10271
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10272
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .line 10199
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10200
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .line 10203
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10204
    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1
    .param p1, "mNewPosition"    # I
    .param p2, "offset"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 10050
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 10051
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 10052
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10053
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .line 10148
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 10149
    const/4 v0, -0x1

    return v0

    .line 10151
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->getAdapterPositionFor(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method public final getItemId()J
    .locals 2

    .line 10176
    iget-wide v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .line 10183
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .line 10122
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :goto_0
    return v0
.end method

.method public final getOldPosition()I
    .locals 1

    .line 10166
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    return v0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10096
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :goto_0
    return v0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 10275
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 10276
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10281
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    return-object v0

    .line 10278
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0

    .line 10284
    :cond_2
    sget-object v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 10232
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .line 10240
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isBound()Z
    .locals 2

    .line 10224
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isInvalid()Z
    .locals 1

    .line 10216
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRecyclable()Z
    .locals 1

    .line 10385
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10386
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10385
    :goto_0
    return v0
.end method

.method isRemoved()Z
    .locals 1

    .line 10228
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isScrap()Z
    .locals 1

    .line 10187
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/android/internal/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTmpDetached()Z
    .locals 1

    .line 10236
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUpdated()Z
    .locals 1

    .line 10406
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method needsUpdate()Z
    .locals 1

    .line 10220
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method offsetPosition(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "applyToPreLayout"    # Z

    .line 10056
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10057
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10059
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 10060
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10062
    :cond_1
    if-eqz p2, :cond_2

    .line 10063
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10065
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10066
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10067
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 10069
    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 4

    .line 10289
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10290
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10291
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10292
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 10293
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10294
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 10295
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10296
    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10297
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 10298
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10299
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10300
    invoke-static {p0}, Lcom/android/internal/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 10301
    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .line 10077
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10078
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10080
    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 10244
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10245
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 3
    .param p1, "recyclable"    # Z

    .line 10360
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 10361
    iget v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v1, :cond_1

    .line 10362
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 10367
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10369
    :cond_1
    if-nez p1, :cond_2

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-ne v1, v0, :cond_2

    .line 10370
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    .line 10371
    :cond_2
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez v0, :cond_3

    .line 10372
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10377
    :cond_3
    :goto_1
    return-void
.end method

.method setScrapContainer(Lcom/android/internal/widget/RecyclerView$Recycler;Z)V
    .locals 0
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "isChangeScrap"    # Z

    .line 10211
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 10212
    iput-boolean p2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 10213
    return-void
.end method

.method shouldIgnore()Z
    .locals 1

    .line 10083
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method stopIgnoring()V
    .locals 1

    .line 10207
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10208
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 10325
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10326
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10328
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10329
    const-string v1, " scrap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10330
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v1, :cond_0

    const-string v1, "[changeScrap]"

    goto :goto_0

    :cond_0
    const-string v1, "[attachedScrap]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10332
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10333
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10334
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10335
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10336
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10337
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10338
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10339
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, " undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10341
    :cond_9
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10342
    :cond_a
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method unScrap()V
    .locals 1

    .line 10191
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 10192
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 1

    .line 10195
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
