.class public Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterLastUsed:Z

.field private mHasExtendedInfo:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field private mPlaceholderCount:I

.field private mResolverListController:Lcom/android/internal/app/ResolverListController;

.field mUnfilteredResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZLcom/android/internal/app/ResolverListController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .param p8, "resolverListController"    # Lcom/android/internal/app/ResolverListController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ",
            "Lcom/android/internal/app/ResolverListController;",
            ")V"
        }
    .end annotation

    .line 1332
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1326
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1333
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    .line 1334
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 1335
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 1336
    iput p6, p1, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    .line 1337
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    .line 1339
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    .line 1340
    iput-object p8, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 1341
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 1311
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 1311
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 1311
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mPlaceholderCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .line 1311
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processSortedList(Ljava/util/List;)V

    return-void
.end method

.method private addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 4
    .param p1, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1695
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$800(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1696
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$800(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 1698
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1699
    .local v1, "existingInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$800(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$800(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/app/ResolverActivity;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1700
    return-void

    .line 1702
    .end local v1    # "existingInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_0
    goto :goto_0

    .line 1703
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1705
    :cond_2
    return-void
.end method

.method private addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "extraInfo"    # Ljava/lang/CharSequence;
    .param p3, "roLabel"    # Ljava/lang/CharSequence;

    .line 1660
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v0

    .line 1661
    .local v0, "count":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v9

    .line 1662
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1663
    .local v1, "add":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, v9}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    .line 1664
    .local v10, "replaceIntent":Landroid/content/Intent;
    new-instance v11, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v2, v11

    move-object v4, v9

    move-object v5, v1

    move-object v6, p3

    move-object v7, p2

    move-object v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1666
    .local v2, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->setPinned(Z)V

    .line 1667
    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1668
    if-ne v10, v9, :cond_0

    .line 1671
    const/4 v3, 0x1

    .local v3, "i":I
    move v4, v3

    move v3, v0

    .local v3, "N":I
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 1672
    invoke-virtual {p1, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v5

    .line 1673
    .local v5, "altIntent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    .line 1671
    .end local v5    # "altIntent":Landroid/content/Intent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1676
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    .line 1677
    return-void
.end method

.method private onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .line 1820
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    .line 1821
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 1822
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const v3, 0x1080714

    .line 1823
    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1822
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1824
    return-void

    .line 1826
    :cond_0
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1827
    .local v1, "label":Ljava/lang/CharSequence;
    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1828
    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1830
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 1831
    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1832
    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1834
    :cond_2
    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1836
    :goto_0
    instance-of v2, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1837
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1838
    new-instance v2, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v6, p2

    check-cast v6, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {v2, v5, v6}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    new-array v5, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v5}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1840
    :cond_3
    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1841
    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 1842
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1843
    .local v2, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_4

    .line 1844
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1845
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1846
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1848
    :cond_4
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1851
    .end local v2    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_1
    return-void
.end method

.method private postListReadyRunnable()V
    .locals 2

    .line 1579
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;-><init>(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->access$702(Lcom/android/internal/app/ResolverActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1589
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1591
    :cond_0
    return-void
.end method

.method private processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V
    .locals 10
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;II",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 1612
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    sub-int v0, p3, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1613
    .local v0, "num":I
    if-ne v0, v1, :cond_0

    .line 1615
    const/4 v1, 0x0

    invoke-direct {p0, p4, v1, p5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1617
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    .line 1618
    const/4 v1, 0x0

    .line 1619
    .local v1, "usePkg":Z
    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1620
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, v4, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1621
    .local v4, "startApp":Ljava/lang/CharSequence;
    if-nez v4, :cond_1

    .line 1622
    const/4 v1, 0x1

    .line 1624
    :cond_1
    if-nez v1, :cond_5

    .line 1626
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1628
    .local v5, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1629
    add-int/lit8 v6, p2, 0x1

    .local v6, "j":I
    :goto_0
    if-gt v6, p3, :cond_4

    .line 1630
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v7, v2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1631
    .local v7, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v9, v9, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1632
    .local v8, "jApp":Ljava/lang/CharSequence;
    if-eqz v8, :cond_3

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 1636
    :cond_2
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1629
    .end local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    .end local v8    # "jApp":Ljava/lang/CharSequence;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1633
    .restart local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "jApp":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 1634
    nop

    .line 1640
    .end local v6    # "j":I
    .end local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    .end local v8    # "jApp":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1642
    .end local v5    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    :cond_5
    move v5, p2

    .local v5, "k":I
    :goto_2
    if-gt v5, p3, :cond_7

    .line 1643
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1644
    .local v6, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v6, v2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1646
    .local v7, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_6

    .line 1648
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v8, "extraInfo":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1651
    .end local v8    # "extraInfo":Ljava/lang/CharSequence;
    :cond_6
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v9, v9, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1653
    .restart local v8    # "extraInfo":Ljava/lang/CharSequence;
    :goto_3
    invoke-direct {p0, v6, v8, p5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1642
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v7    # "add":Landroid/content/pm/ResolveInfo;
    .end local v8    # "extraInfo":Ljava/lang/CharSequence;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1656
    .end local v1    # "usePkg":Z
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "startApp":Ljava/lang/CharSequence;
    .end local v5    # "k":I
    :cond_7
    :goto_4
    return-void
.end method

.method private processSortedList(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1505
    .local p1, "sortedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v6, p0

    .line 1505
    move-object/from16 v7, p1

    if-eqz v7, :cond_9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    move v8, v0

    .line 1505
    .local v8, "N":I
    if-eqz v0, :cond_9

    .line 1507
    iget-object v0, v6, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    .line 1508
    move v0, v9

    .line 1508
    .local v0, "i":I
    :goto_0
    iget-object v2, v6, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1509
    iget-object v2, v6, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v2, v2, v0

    .line 1510
    .local v2, "ii":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 1511
    goto/16 :goto_1

    .line 1513
    :cond_0
    iget-object v3, v6, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 1514
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1513
    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1515
    .local v3, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v3, :cond_1

    .line 1516
    const-string v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No activity found for "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    goto :goto_1

    .line 1519
    :cond_1
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1520
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1521
    iget-object v5, v6, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const-string/jumbo v10, "user"

    .line 1522
    invoke-virtual {v5, v10}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 1523
    .local v5, "userManager":Landroid/os/UserManager;
    instance-of v10, v2, Landroid/content/pm/LabeledIntent;

    if-eqz v10, :cond_2

    .line 1524
    move-object v10, v2

    check-cast v10, Landroid/content/pm/LabeledIntent;

    .line 1525
    .local v10, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v10}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1526
    invoke-virtual {v10}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v11

    iput v11, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1527
    invoke-virtual {v10}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1528
    invoke-virtual {v10}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v11

    iput v11, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1529
    iget v11, v4, Landroid/content/pm/ResolveInfo;->icon:I

    iput v11, v4, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 1531
    .end local v10    # "li":Landroid/content/pm/LabeledIntent;
    :cond_2
    invoke-virtual {v5}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1532
    iput-boolean v1, v4, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 1533
    iput v9, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1535
    :cond_3
    new-instance v15, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v11, v6, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v10, v6, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 1536
    invoke-virtual {v10}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    const/16 v16, 0x0

    move-object v10, v15

    move-object v12, v2

    move-object v13, v4

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1535
    invoke-direct {v6, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1508
    .end local v2    # "ii":Landroid/content/Intent;
    .end local v3    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "userManager":Landroid/os/UserManager;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1542
    .end local v0    # "i":I
    :cond_4
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1543
    .local v0, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v0, v9}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1544
    .local v1, "r0":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .line 1545
    .local v2, "start":I
    iget-object v3, v6, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1546
    .local v3, "r0Label":Ljava/lang/CharSequence;
    iput-boolean v9, v6, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    .line 1547
    move-object v12, v0

    move-object v13, v1

    move v11, v2

    move-object v10, v3

    const/16 v17, 0x1

    .line 1547
    .end local v0    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v1    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v2    # "start":I
    .end local v3    # "r0Label":Ljava/lang/CharSequence;
    .local v10, "r0Label":Ljava/lang/CharSequence;
    .local v11, "start":I
    .local v12, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .local v13, "r0":Landroid/content/pm/ResolveInfo;
    .local v17, "i":I
    :goto_2
    move/from16 v14, v17

    .line 1547
    .end local v17    # "i":I
    .local v14, "i":I
    if-ge v14, v8, :cond_8

    .line 1548
    if-nez v10, :cond_5

    .line 1549
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1551
    .end local v10    # "r0Label":Ljava/lang/CharSequence;
    .local v0, "r0Label":Ljava/lang/CharSequence;
    move-object v10, v0

    .line 1551
    .end local v0    # "r0Label":Ljava/lang/CharSequence;
    .restart local v10    # "r0Label":Ljava/lang/CharSequence;
    :cond_5
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1552
    .local v15, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v15, v9}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1553
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v6, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1554
    .local v0, "riLabel":Ljava/lang/CharSequence;
    if-nez v0, :cond_6

    .line 1555
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1557
    .end local v0    # "riLabel":Ljava/lang/CharSequence;
    .local v4, "riLabel":Ljava/lang/CharSequence;
    :cond_6
    move-object v4, v0

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1558
    goto :goto_3

    .line 1560
    :cond_7
    add-int/lit8 v3, v14, -0x1

    move-object v0, v6

    move-object v1, v7

    move v2, v11

    move-object/from16 v16, v4

    move-object v4, v12

    .line 1560
    .end local v4    # "riLabel":Ljava/lang/CharSequence;
    .local v16, "riLabel":Ljava/lang/CharSequence;
    move-object/from16 v17, v5

    move-object v5, v10

    .line 1560
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .local v17, "ri":Landroid/content/pm/ResolveInfo;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    .line 1561
    move-object v12, v15

    .line 1562
    move-object/from16 v0, v17

    .line 1563
    .end local v13    # "r0":Landroid/content/pm/ResolveInfo;
    .local v0, "r0":Landroid/content/pm/ResolveInfo;
    move-object/from16 v1, v16

    .line 1564
    .end local v10    # "r0Label":Ljava/lang/CharSequence;
    .local v1, "r0Label":Ljava/lang/CharSequence;
    move v11, v14

    .line 1547
    .end local v15    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v16    # "riLabel":Ljava/lang/CharSequence;
    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    move-object v13, v0

    move-object v10, v1

    .line 1547
    .end local v0    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v1    # "r0Label":Ljava/lang/CharSequence;
    .restart local v10    # "r0Label":Ljava/lang/CharSequence;
    .restart local v13    # "r0":Landroid/content/pm/ResolveInfo;
    :goto_3
    add-int/lit8 v17, v14, 0x1

    .line 1547
    .end local v14    # "i":I
    .local v17, "i":I
    goto :goto_2

    .line 1567
    .end local v17    # "i":I
    :cond_8
    add-int/lit8 v3, v8, -0x1

    move-object v0, v6

    move-object v1, v7

    move v2, v11

    move-object v4, v12

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    .line 1570
    .end local v8    # "N":I
    .end local v10    # "r0Label":Ljava/lang/CharSequence;
    .end local v11    # "start":I
    .end local v12    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v13    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->postListReadyRunnable()V

    .line 1571
    return-void
.end method

.method private updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 1681
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    .line 1682
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1683
    return-void

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1686
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1687
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1688
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1690
    :cond_1
    return-void
.end method


# virtual methods
.method public final bindView(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 1816
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1817
    return-void
.end method

.method public final createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 1796
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1797
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/internal/app/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1798
    .local v1, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1799
    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1728
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1729
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 1728
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mPlaceholderCount:I

    .line 1729
    :goto_1
    nop

    .line 1730
    .local v0, "totalSize":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v1, :cond_2

    .line 1731
    add-int/lit8 v0, v0, -0x1

    .line 1733
    :cond_2
    return v0
.end method

.method public getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .line 1745
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getDisplayInfoCount()I
    .locals 1

    .line 1741
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .line 1783
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getDisplayResolveInfoCount()I
    .locals 1

    .line 1778
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 2

    .line 1359
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0

    .line 1363
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilteredPosition()I
    .locals 1

    .line 1371
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 1372
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    return v0

    .line 1374
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .line 1750
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-lt p1, v0, :cond_0

    .line 1751
    add-int/lit8 p1, p1, 0x1

    .line 1753
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 1754
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0

    .line 1756
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1311
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 1761
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    .line 1367
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getPlaceholderCount()I
    .locals 1

    .line 1355
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mPlaceholderCount:I

    return v0
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1382
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v0

    return v0
.end method

.method public getUnfilteredCount()I
    .locals 1

    .line 1737
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1787
    move-object v0, p2

    .line 1788
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1789
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1791
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1792
    return-object v0
.end method

.method public handlePackagesChanged()V
    .locals 1

    .line 1344
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()Z

    .line 1345
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1349
    :cond_0
    return-void
.end method

.method public hasExtendedInfo()Z
    .locals 1

    .line 1765
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    return v0
.end method

.method public hasFilteredItem()Z
    .locals 1

    .line 1378
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 1769
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1770
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/app/ResolverActivity;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1771
    const/4 v2, 0x1

    return v2

    .line 1769
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1774
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isComponentPinned(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1812
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 1803
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListRebuilt()V
    .locals 3

    .line 1594
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 1595
    .local v0, "count":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1597
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    .line 1598
    .local v1, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1599
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1600
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1603
    .end local v1    # "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_0
    return-void
.end method

.method protected rebuildList()Z
    .locals 14

    .line 1400
    const/4 v0, 0x0

    .line 1402
    .local v0, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1403
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    .line 1404
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1405
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1406
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    move-object v0, v1

    .line 1408
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 1409
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 1408
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/app/ResolverListController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    goto :goto_0

    .line 1412
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 1413
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->shouldGetResolvedFilter()Z

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 1414
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->shouldGetActivityMetadata()Z

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    .line 1413
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/app/ResolverListController;->getResolversForIntent(ZZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    move-object v0, v1

    .line 1416
    if-nez v0, :cond_1

    .line 1417
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processSortedList(Ljava/util/List;)V

    .line 1418
    return v2

    .line 1420
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 1421
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/app/ResolverListController;->filterIneligibleActivities(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 1423
    .local v1, "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz v1, :cond_2

    .line 1424
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    .line 1430
    .end local v1    # "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1431
    .local v3, "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_3

    .line 1432
    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v9

    .line 1433
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1434
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v6, v6, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1435
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v6, v6, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 1436
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1437
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v7

    .line 1436
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1438
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1439
    goto :goto_2

    .line 1441
    .end local v3    # "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_3
    goto :goto_1

    .line 1443
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-nez v1, :cond_5

    .line 1445
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListController;->getLastChosen()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1448
    goto :goto_3

    .line 1446
    :catch_0
    move-exception v1

    .line 1447
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error calling getLastChosenActivity\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_5
    :goto_3
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v1

    .local v3, "N":I
    if-lez v1, :cond_a

    .line 1455
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    if-ne v5, v0, :cond_6

    .line 1456
    move v5, v2

    goto :goto_4

    .line 1455
    :cond_6
    nop

    .line 1456
    move v5, v4

    :goto_4
    invoke-virtual {v1, v0, v5}, Lcom/android/internal/app/ResolverListController;->filterLowPriority(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 1458
    .local v1, "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz v1, :cond_7

    .line 1459
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    .line 1462
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_9

    .line 1463
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 1464
    .local v5, "placeholderCount":I
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1465
    add-int/lit8 v5, v5, -0x1

    .line 1467
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->setPlaceholderCount(I)V

    .line 1470
    new-instance v6, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;

    invoke-direct {v6, p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;-><init>(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V

    .line 1490
    .local v6, "sortingTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;Ljava/lang/Void;Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;>;"
    new-array v2, v2, [Ljava/util/List;

    aput-object v0, v2, v4

    invoke-virtual {v6, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1491
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->postListReadyRunnable()V

    .line 1492
    return v4

    .line 1494
    .end local v5    # "placeholderCount":I
    .end local v6    # "sortingTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;Ljava/lang/Void;Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;>;"
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processSortedList(Ljava/util/List;)V

    .line 1495
    return v2

    .line 1498
    .end local v1    # "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .end local v3    # "N":I
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processSortedList(Ljava/util/List;)V

    .line 1499
    return v2
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .line 1709
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    .line 1710
    .local v0, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    if-eqz v0, :cond_0

    .line 1711
    invoke-interface {v0}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    .line 1713
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public setPlaceholderCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 1352
    iput p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mPlaceholderCount:I

    .line 1353
    return-void
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    .line 1606
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .line 1808
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .line 1718
    if-eqz p2, :cond_0

    .line 1719
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 1722
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0

    .line 1724
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "action"    # Ljava/lang/String;

    .line 1390
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/ResolverListController;->updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V

    .line 1391
    return-void
.end method

.method public updateModel(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1386
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->updateModel(Landroid/content/ComponentName;)V

    .line 1387
    return-void
.end method
