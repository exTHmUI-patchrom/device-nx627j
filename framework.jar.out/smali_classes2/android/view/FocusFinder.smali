.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$UserSpecifiedFocusComparator;,
        Landroid/view/FocusFinder$FocusSorter;
    }
.end annotation


# static fields
.field private static final tlFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/FocusFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBestCandidateRect:Landroid/graphics/Rect;

.field private final mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

.field final mFocusedRect:Landroid/graphics/Rect;

.field final mOtherRect:Landroid/graphics/Rect;

.field private final mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

.field private final mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Landroid/view/FocusFinder$1;

    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    sget-object v1, Landroid/view/-$$Lambda$FocusFinder$Pgx6IETuqCkrhJYdiBes48tolG4;->INSTANCE:Landroid/view/-$$Lambda$FocusFinder$Pgx6IETuqCkrhJYdiBes48tolG4;

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;-><init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    .line 61
    new-instance v0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    sget-object v1, Landroid/view/-$$Lambda$FocusFinder$P8rLvOJhymJH5ALAgUjGaM5gxKA;->INSTANCE:Landroid/view/-$$Lambda$FocusFinder$P8rLvOJhymJH5ALAgUjGaM5gxKA;

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;-><init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    .line 64
    new-instance v0, Landroid/view/FocusFinder$FocusSorter;

    invoke-direct {v0}, Landroid/view/FocusFinder$FocusSorter;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/FocusFinder$1;

    .line 38
    invoke-direct {p0}, Landroid/view/FocusFinder;-><init>()V

    return-void
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 9
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "focusedRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "next":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Landroid/view/FocusFinder;->getEffectiveRoot(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    .line 99
    .local v7, "effectiveRoot":Landroid/view/ViewGroup;
    if-eqz p2, :cond_0

    .line 100
    invoke-direct {p0, v7, p2, p4}, Landroid/view/FocusFinder;->findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 102
    :cond_0
    if-eqz v0, :cond_1

    .line 103
    return-object v0

    .line 105
    :cond_1
    iget-object v1, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    move-object v8, v1

    .line 107
    .local v8, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 108
    invoke-virtual {v7, v8, p4}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V

    .line 109
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    move-object v1, p0

    move-object v2, v7

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 113
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 114
    nop

    .line 115
    return-object v0

    .line 113
    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    throw v1
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    .locals 11
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "focusedRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .local p5, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p4

    .line 220
    const/16 v1, 0x82

    const/16 v2, 0x42

    const/16 v3, 0x21

    const/16 v4, 0x11

    if-eqz v8, :cond_1

    .line 221
    if-nez p3, :cond_0

    .line 222
    iget-object v0, v6, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .end local p3    # "focusedRect":Landroid/graphics/Rect;
    .local v0, "focusedRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 225
    .end local v0    # "focusedRect":Landroid/graphics/Rect;
    .restart local p3    # "focusedRect":Landroid/graphics/Rect;
    :cond_0
    move-object v0, p3

    .end local p3    # "focusedRect":Landroid/graphics/Rect;
    .restart local v0    # "focusedRect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v8, v0}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 226
    invoke-virtual {v7, v8, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 259
    .end local v0    # "focusedRect":Landroid/graphics/Rect;
    .local v10, "focusedRect":Landroid/graphics/Rect;
    :goto_1
    move-object v10, v0

    goto :goto_2

    .line 228
    .end local v10    # "focusedRect":Landroid/graphics/Rect;
    .restart local p3    # "focusedRect":Landroid/graphics/Rect;
    :cond_1
    if-nez p3, :cond_6

    .line 229
    iget-object v0, v6, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 231
    .end local p3    # "focusedRect":Landroid/graphics/Rect;
    .restart local v0    # "focusedRect":Landroid/graphics/Rect;
    if-eq v9, v4, :cond_5

    if-eq v9, v3, :cond_5

    if-eq v9, v2, :cond_4

    if-eq v9, v1, :cond_4

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    .line 237
    :pswitch_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    invoke-direct {v6, v7, v0}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 240
    :cond_2
    invoke-direct {v6, v7, v0}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 242
    goto :goto_1

    .line 249
    :pswitch_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 250
    invoke-direct {v6, v7, v0}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 252
    :cond_3
    invoke-direct {v6, v7, v0}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 234
    :cond_4
    invoke-direct {v6, v7, v0}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 235
    goto :goto_1

    .line 246
    :cond_5
    invoke-direct {v6, v7, v0}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 247
    goto :goto_1

    .line 259
    .end local v0    # "focusedRect":Landroid/graphics/Rect;
    .restart local p3    # "focusedRect":Landroid/graphics/Rect;
    :cond_6
    move-object v10, p3

    .end local p3    # "focusedRect":Landroid/graphics/Rect;
    .restart local v10    # "focusedRect":Landroid/graphics/Rect;
    :goto_2
    if-eq v9, v4, :cond_7

    if-eq v9, v3, :cond_7

    if-eq v9, v2, :cond_7

    if-eq v9, v1, :cond_7

    packed-switch v9, :pswitch_data_1

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :pswitch_2
    move-object v0, v6

    move-object/from16 v1, p5

    move-object v2, v7

    move-object v3, v8

    move-object v4, v10

    move v5, v9

    invoke-direct/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 268
    :cond_7
    move-object v0, v6

    move-object/from16 v1, p5

    move-object v2, v7

    move-object v3, v8

    move-object v4, v10

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 2
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 307
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0, p1, p2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setFocusables(Ljava/util/List;Landroid/view/View;)V

    .line 308
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 311
    nop

    .line 313
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 314
    .local v0, "count":I
    packed-switch p5, :pswitch_data_0

    .line 320
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 316
    :pswitch_0
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 318
    :pswitch_1
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 310
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "currentCluster"    # Landroid/view/View;
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 282
    .local p3, "clusters":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :try_start_0
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0, p3, p1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setFocusables(Ljava/util/List;Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 286
    nop

    .line 287
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 289
    .local v0, "count":I
    const/16 v1, 0x11

    if-eq p4, v1, :cond_1

    const/16 v1, 0x21

    if-eq p4, v1, :cond_1

    const/16 v1, 0x42

    if-eq p4, v1, :cond_0

    const/16 v1, 0x82

    if-eq p4, v1, :cond_0

    packed-switch p4, :pswitch_data_0

    .line 299
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_0
    :pswitch_0
    invoke-static {p1, p2, p3, v0}, Landroid/view/FocusFinder;->getNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 297
    :cond_1
    :pswitch_1
    invoke-static {p1, p2, p3, v0}, Landroid/view/FocusFinder;->getPreviousKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 285
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 195
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "userSetNextFocus":Landroid/view/View;
    move-object v1, v0

    .line 197
    .local v1, "cycleCheck":Landroid/view/View;
    const/4 v2, 0x1

    move-object v3, v1

    move v0, v2

    .line 198
    .local v0, "cycleStep":Z
    .local v1, "userSetNextFocus":Landroid/view/View;
    .local v3, "cycleCheck":Landroid/view/View;
    :cond_0
    if-eqz v1, :cond_4

    .line 199
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 201
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    :cond_1
    return-object v1

    .line 205
    :cond_2
    invoke-virtual {v1, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 206
    if-nez v0, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    move v0, v4

    if-eqz v4, :cond_0

    .line 207
    invoke-virtual {v3, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 208
    if-ne v3, v1, :cond_0

    .line 211
    nop

    .line 215
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private findNextUserSpecifiedKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "currentCluster"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 185
    nop

    .line 186
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextKeyboardNavigationCluster(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "userSetNextCluster":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    return-object v0

    .line 190
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getEffectiveRoot(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;

    .line 127
    if-eqz p2, :cond_5

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 131
    .local v0, "effective":Landroid/view/ViewGroup;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 133
    .local v1, "nextParent":Landroid/view/ViewParent;
    :cond_1
    if-ne v1, p1, :cond_3

    .line 134
    if-eqz v0, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, p1

    :goto_0
    return-object v2

    .line 136
    :cond_3
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 137
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 143
    move-object v0, v2

    .line 145
    :cond_4
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 146
    .end local v2    # "vg":Landroid/view/ViewGroup;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 147
    return-object p1

    .line 128
    .end local v0    # "effective":Landroid/view/ViewGroup;
    .end local v1    # "nextParent":Landroid/view/ViewParent;
    :cond_5
    :goto_1
    return-object p1
.end method

.method public static getInstance()Landroid/view/FocusFinder;
    .locals 1

    .line 52
    sget-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/FocusFinder;

    return-object v0
.end method

.method private static getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 2
    .param p0, "focused"    # Landroid/view/View;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 376
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_0

    .line 377
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 378
    .local v0, "position":I
    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p2, :cond_0

    .line 379
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 382
    .end local v0    # "position":I
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 385
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "currentCluster"    # Landroid/view/View;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 406
    .local p2, "clusters":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez p1, :cond_0

    .line 410
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 413
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 414
    .local v0, "position":I
    if-ltz v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p3, :cond_1

    .line 416
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 421
    :cond_1
    return-object p0
.end method

.method private static getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 2
    .param p0, "focused"    # Landroid/view/View;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 389
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_0

    .line 390
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 391
    .local v0, "position":I
    if-lez v0, :cond_0

    .line 392
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 395
    .end local v0    # "position":I
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 398
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getPreviousKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "currentCluster"    # Landroid/view/View;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 429
    .local p2, "clusters":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez p1, :cond_0

    .line 433
    add-int/lit8 v0, p3, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 436
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 437
    .local v0, "position":I
    if-lez v0, :cond_1

    .line 439
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 444
    :cond_1
    return-object p0
.end method

.method private isTouchCandidate(IILandroid/graphics/Rect;I)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "destRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I

    .line 765
    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p4, v0, :cond_6

    const/16 v0, 0x21

    if-eq p4, v0, :cond_4

    const/16 v0, 0x42

    if-eq p4, v0, :cond_2

    const/16 v0, 0x82

    if-ne p4, v0, :cond_1

    .line 773
    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-lt v0, p2, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 775
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-lt v0, p1, :cond_3

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_3

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1

    .line 771
    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_5

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_5

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v0, :cond_5

    move v1, v2

    nop

    :cond_5
    return v1

    .line 767
    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_7

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_7

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_7

    move v1, v2

    nop

    :cond_7
    return v1
.end method

.method private static final isValidId(I)Z
    .locals 1
    .param p0, "id"    # I

    .line 780
    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$new$0(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "r"    # Landroid/view/View;
    .param p1, "v"    # Landroid/view/View;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v0

    invoke-static {v0}, Landroid/view/FocusFinder;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$new$1(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "r"    # Landroid/view/View;
    .param p1, "v"    # Landroid/view/View;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getNextClusterForwardId()I

    move-result v0

    invoke-static {v0}, Landroid/view/FocusFinder;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findUserSetNextKeyboardNavigationCluster(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0
.end method

.method static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 610
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 614
    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    .line 622
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 624
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    .line 620
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 616
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 635
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 639
    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    .line 647
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 649
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    .line 645
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0

    .line 641
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 662
    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_2

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_1
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 673
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 674
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 672
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    .line 666
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 667
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 668
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 666
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method private setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;

    .line 324
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    .local v0, "rootBottom":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 326
    .local v1, "rootRight":I
    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 327
    return-void
.end method

.method private setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;

    .line 330
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    .line 331
    .local v0, "rootTop":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 332
    .local v1, "rootLeft":I
    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 333
    return-void
.end method

.method public static sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V
    .locals 7
    .param p0, "views"    # [Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "root"    # Landroid/view/ViewGroup;
    .param p4, "isRtl"    # Z

    .line 875
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, v0, Landroid/view/FocusFinder;->mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/FocusFinder$FocusSorter;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 876
    return-void
.end method


# virtual methods
.method beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .line 497
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 498
    .local v0, "rect1InSrcBeam":Z
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 501
    .local v1, "rect2InSrcBeam":Z
    const/4 v2, 0x0

    if-nez v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_2

    .line 511
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 512
    return v4

    .line 516
    :cond_1
    const/16 v3, 0x11

    if-eq p1, v3, :cond_4

    const/16 v3, 0x42

    if-ne p1, v3, :cond_2

    goto :goto_1

    .line 524
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    .line 525
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 524
    move v2, v4

    goto :goto_0

    .line 525
    :cond_3
    nop

    .line 524
    :goto_0
    return v2

    .line 517
    :cond_4
    :goto_1
    return v4

    .line 502
    :cond_5
    :goto_2
    return v2
.end method

.method beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "rect1"    # Landroid/graphics/Rect;
    .param p3, "rect2"    # Landroid/graphics/Rect;

    .line 574
    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3

    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_1
    :goto_0
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v3, :cond_2

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    .line 577
    :cond_3
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v3, :cond_4

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v3, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1
.end method

.method public findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;
    .locals 19
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "direction"    # I
    .param p5, "deltas"    # [I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    move-result-object v5

    .line 693
    .local v5, "touchables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const v6, 0x7fffffff

    .line 694
    .local v6, "minDistance":I
    const/4 v7, 0x0

    .line 696
    .local v7, "closest":Landroid/view/View;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 698
    .local v8, "numTouchables":I
    iget-object v9, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v9

    .line 700
    .local v9, "edgeSlop":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 701
    .local v10, "closestBounds":Landroid/graphics/Rect;
    iget-object v11, v0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 703
    .local v11, "touchableBounds":Landroid/graphics/Rect;
    move v13, v6

    const/4 v6, 0x0

    .local v6, "i":I
    .local v13, "minDistance":I
    :goto_0
    if-ge v6, v8, :cond_b

    .line 704
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 707
    .local v14, "touchable":Landroid/view/View;
    invoke-virtual {v14, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 709
    const/4 v12, 0x1

    invoke-virtual {v1, v14, v11, v12, v12}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 711
    invoke-direct {v0, v2, v3, v11, v4}, Landroid/view/FocusFinder;->isTouchCandidate(IILandroid/graphics/Rect;I)Z

    move-result v16

    if-nez v16, :cond_0

    .line 712
    goto :goto_3

    .line 715
    :cond_0
    const v16, 0x7fffffff

    .line 717
    .local v16, "distance":I
    const/16 v12, 0x21

    const/16 v0, 0x11

    if-eq v4, v0, :cond_4

    if-eq v4, v12, :cond_3

    const/16 v12, 0x42

    if-eq v4, v12, :cond_2

    const/16 v12, 0x82

    if-eq v4, v12, :cond_1

    .line 732
    .end local v16    # "distance":I
    .local v12, "distance":I
    :goto_1
    move/from16 v12, v16

    goto :goto_2

    .line 728
    .end local v12    # "distance":I
    .restart local v16    # "distance":I
    :cond_1
    iget v12, v11, Landroid/graphics/Rect;->top:I

    .end local v16    # "distance":I
    .restart local v12    # "distance":I
    goto :goto_2

    .line 722
    .end local v12    # "distance":I
    .restart local v16    # "distance":I
    :cond_2
    iget v12, v11, Landroid/graphics/Rect;->left:I

    .line 723
    .end local v16    # "distance":I
    .restart local v12    # "distance":I
    goto :goto_2

    .line 725
    .end local v12    # "distance":I
    .restart local v16    # "distance":I
    :cond_3
    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v3, v12

    const/16 v17, 0x1

    add-int/lit8 v16, v12, 0x1

    .line 726
    goto :goto_1

    .line 719
    :cond_4
    const/16 v17, 0x1

    iget v12, v11, Landroid/graphics/Rect;->right:I

    sub-int v12, v2, v12

    add-int/lit8 v16, v12, 0x1

    .line 720
    goto :goto_1

    .line 732
    .end local v16    # "distance":I
    .restart local v12    # "distance":I
    :goto_2
    if-ge v12, v9, :cond_6

    .line 734
    if-eqz v7, :cond_5

    .line 735
    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 736
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v16

    if-nez v16, :cond_6

    if-ge v12, v13, :cond_6

    .line 737
    :cond_5
    move v13, v12

    .line 738
    move-object v7, v14

    .line 739
    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 740
    if-eq v4, v0, :cond_a

    const/16 v0, 0x21

    if-eq v4, v0, :cond_9

    const/16 v0, 0x42

    if-eq v4, v0, :cond_8

    const/16 v0, 0x82

    if-eq v4, v0, :cond_7

    .line 703
    .end local v12    # "distance":I
    .end local v14    # "touchable":Landroid/view/View;
    :cond_6
    :goto_3
    const/4 v15, 0x0

    goto :goto_4

    .line 751
    .restart local v12    # "distance":I
    .restart local v14    # "touchable":Landroid/view/View;
    :cond_7
    const/4 v0, 0x1

    aput v12, p5, v0

    .end local v12    # "distance":I
    .end local v14    # "touchable":Landroid/view/View;
    goto :goto_3

    .line 745
    .restart local v12    # "distance":I
    .restart local v14    # "touchable":Landroid/view/View;
    :cond_8
    const/4 v15, 0x0

    aput v12, p5, v15

    .line 746
    goto :goto_4

    .line 748
    :cond_9
    const/4 v0, 0x1

    const/4 v15, 0x0

    neg-int v1, v12

    aput v1, p5, v0

    .line 749
    goto :goto_4

    .line 742
    :cond_a
    const/4 v15, 0x0

    neg-int v0, v12

    aput v0, p5, v15

    .line 743
    nop

    .line 703
    .end local v12    # "distance":I
    .end local v14    # "touchable":Landroid/view/View;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 757
    .end local v6    # "i":I
    :cond_b
    return-object v7
.end method

.method public final findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    .line 92
    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 93
    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 6
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 339
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 340
    const/16 v0, 0x11

    const/4 v1, 0x0

    if-eq p5, v0, :cond_3

    const/16 v0, 0x21

    if-eq p5, v0, :cond_2

    const/16 v0, 0x42

    if-eq p5, v0, :cond_1

    const/16 v0, 0x82

    if-eq p5, v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 346
    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 349
    goto :goto_0

    .line 342
    :cond_3
    iget-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 343
    nop

    .line 354
    :goto_0
    const/4 v0, 0x0

    .line 356
    .local v0, "closest":Landroid/view/View;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 357
    .local v2, "numFocusables":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 358
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 361
    .local v3, "focusable":Landroid/view/View;
    if-eq v3, p3, :cond_5

    if-ne v3, p2, :cond_4

    .end local v3    # "focusable":Landroid/view/View;
    goto :goto_2

    .line 364
    .restart local v3    # "focusable":Landroid/view/View;
    :cond_4
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 365
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 367
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p5, p4, v4, v5}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 368
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 369
    move-object v0, v3

    .line 357
    .end local v3    # "focusable":Landroid/view/View;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 372
    .end local v1    # "i":I
    :cond_6
    return-object v0
.end method

.method public findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "currentCluster"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "next":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/view/FocusFinder;->findNextUserSpecifiedKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    return-object v0

    .line 169
    :cond_0
    iget-object v1, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 171
    .local v1, "clusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 172
    invoke-virtual {p1, v1, p3}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 173
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    invoke-direct {p0, p1, p2, v1, p3}, Landroid/view/FocusFinder;->findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 178
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    nop

    .line 180
    return-object v0

    .line 178
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    throw v2
.end method

.method getWeightedDistanceFor(JJ)J
    .locals 4
    .param p1, "majorAxisDistance"    # J
    .param p3, "minorAxisDistance"    # J

    .line 534
    const-wide/16 v0, 0xd

    mul-long/2addr v0, p1

    mul-long/2addr v0, p1

    mul-long v2, p3, p3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .line 461
    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 462
    return v1

    .line 467
    :cond_0
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 468
    return v2

    .line 472
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    return v2

    .line 477
    :cond_2
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 478
    return v1

    .line 482
    :cond_3
    nop

    .line 483
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v3, v0

    .line 484
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v5, v0

    .line 482
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/FocusFinder;->getWeightedDistanceFor(JJ)J

    move-result-wide v3

    .line 486
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v5, v0

    .line 487
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v7, v0

    .line 485
    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/view/FocusFinder;->getWeightedDistanceFor(JJ)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    .line 482
    move v1, v2

    goto :goto_0

    .line 485
    :cond_4
    nop

    .line 482
    :goto_0
    return v1
.end method

.method isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 4
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "destRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    .line 547
    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v0, :cond_9

    const/16 v0, 0x21

    if-eq p3, v0, :cond_6

    const/16 v0, 0x42

    if-eq p3, v0, :cond_3

    const/16 v0, 0x82

    if-ne p3, v0, :cond_2

    .line 558
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v0, v3, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v0, v3, :cond_1

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 561
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v0, v3, :cond_4

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-gt v0, v3, :cond_5

    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v3, :cond_5

    move v1, v2

    nop

    :cond_5
    return v1

    .line 555
    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v3, :cond_7

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v3, :cond_8

    :cond_7
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v3, :cond_8

    move v1, v2

    nop

    :cond_8
    return v1

    .line 549
    :cond_9
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v0, v3, :cond_a

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v0, v3, :cond_b

    :cond_a
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v3, :cond_b

    move v1, v2

    nop

    :cond_b
    return v1
.end method

.method isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dest"    # Landroid/graphics/Rect;

    .line 590
    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x21

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    .line 598
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 600
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, v3, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1

    .line 596
    :cond_4
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v3, :cond_5

    move v1, v2

    nop

    :cond_5
    return v1

    .line 592
    :cond_6
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-lt v0, v3, :cond_7

    move v1, v2

    nop

    :cond_7
    return v1
.end method
