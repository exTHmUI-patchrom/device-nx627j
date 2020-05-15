.class public Landroid/service/notification/NotificationListenerService$RankingMap;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankingMap"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChannels:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mHidden:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mImportance:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImportanceExplanation:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntercepted:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideGroupKeys:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOverridePeople:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

.field private mRanks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShowBadge:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSnoozeCriteria:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSuppressedVisualEffects:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSentiment:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityOverrides:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1946
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$RankingMap$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationListenerService$RankingMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 1652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1653
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    .line 1654
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationListenerService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/notification/NotificationRankingUpdate;
    .param p2, "x1"    # Landroid/service/notification/NotificationListenerService$1;

    .line 1636
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method private buildChannelsLocked()V
    .locals 5

    .line 1882
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getChannels()Landroid/os/Bundle;

    move-result-object v0

    .line 1883
    .local v0, "channels":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mChannels:Landroid/util/ArrayMap;

    .line 1884
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1885
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mChannels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1887
    :cond_0
    return-void
.end method

.method private buildHiddenLocked()V
    .locals 5

    .line 1927
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getHidden()Landroid/os/Bundle;

    move-result-object v0

    .line 1928
    .local v0, "hidden":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mHidden:Landroid/util/ArrayMap;

    .line 1929
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1930
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mHidden:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1932
    :cond_0
    return-void
.end method

.method private buildImportanceExplanationLocked()V
    .locals 5

    .line 1864
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getImportanceExplanation()Landroid/os/Bundle;

    move-result-object v0

    .line 1865
    .local v0, "explanationBundle":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    .line 1866
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1867
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1869
    :cond_0
    return-void
.end method

.method private buildImportanceLocked()V
    .locals 6

    .line 1853
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 1854
    .local v0, "orderedKeys":[Ljava/lang/String;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v1}, Landroid/service/notification/NotificationRankingUpdate;->getImportance()[I

    move-result-object v1

    .line 1855
    .local v1, "importance":[I
    new-instance v2, Landroid/util/ArrayMap;

    array-length v3, v0

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    .line 1856
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1857
    aget-object v3, v0, v2

    .line 1858
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    .end local v3    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1860
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private buildInterceptedSetLocked()V
    .locals 3

    .line 1829
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getInterceptedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 1830
    .local v0, "dndInterceptedKeys":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    .line 1831
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1832
    return-void
.end method

.method private buildOverrideGroupKeys()V
    .locals 5

    .line 1873
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOverrideGroupKeys()Landroid/os/Bundle;

    move-result-object v0

    .line 1874
    .local v0, "overrideGroupKeys":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    .line 1875
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1876
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1878
    :cond_0
    return-void
.end method

.method private buildOverridePeopleLocked()V
    .locals 5

    .line 1891
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOverridePeople()Landroid/os/Bundle;

    move-result-object v0

    .line 1892
    .local v0, "overridePeople":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverridePeople:Landroid/util/ArrayMap;

    .line 1893
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1894
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverridePeople:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1896
    :cond_0
    return-void
.end method

.method private buildRanksLocked()V
    .locals 5

    .line 1819
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 1820
    .local v0, "orderedKeys":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArrayMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    .line 1821
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1822
    aget-object v2, v0, v1

    .line 1823
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    .end local v2    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1825
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private buildShowBadgeLocked()V
    .locals 5

    .line 1909
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getShowBadge()Landroid/os/Bundle;

    move-result-object v0

    .line 1910
    .local v0, "showBadge":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mShowBadge:Landroid/util/ArrayMap;

    .line 1911
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1912
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mShowBadge:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1914
    :cond_0
    return-void
.end method

.method private buildSnoozeCriteriaLocked()V
    .locals 5

    .line 1900
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getSnoozeCriteria()Landroid/os/Bundle;

    move-result-object v0

    .line 1901
    .local v0, "snoozeCriteria":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSnoozeCriteria:Landroid/util/ArrayMap;

    .line 1902
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1903
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSnoozeCriteria:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1905
    :cond_0
    return-void
.end method

.method private buildSuppressedVisualEffectsLocked()V
    .locals 5

    .line 1845
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getSuppressedVisualEffects()Landroid/os/Bundle;

    move-result-object v0

    .line 1846
    .local v0, "suppressedBundle":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    .line 1847
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1848
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1850
    :cond_0
    return-void
.end method

.method private buildUserSentimentLocked()V
    .locals 5

    .line 1918
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getUserSentiment()Landroid/os/Bundle;

    move-result-object v0

    .line 1919
    .local v0, "userSentiment":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mUserSentiment:Landroid/util/ArrayMap;

    .line 1920
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1921
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mUserSentiment:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1923
    :cond_0
    return-void
.end method

.method private buildVisibilityOverridesLocked()V
    .locals 5

    .line 1836
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getVisibilityOverrides()Landroid/os/Bundle;

    move-result-object v0

    .line 1837
    .local v0, "visibilityBundle":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    .line 1838
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1839
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1841
    :cond_0
    return-void
.end method

.method private getChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1760
    monitor-enter p0

    .line 1761
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mChannels:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1762
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildChannelsLocked()V

    .line 1764
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1765
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mChannels:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    return-object v0

    .line 1764
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getHidden(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1808
    monitor-enter p0

    .line 1809
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mHidden:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1810
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildHiddenLocked()V

    .line 1812
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1813
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mHidden:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1814
    .local v0, "hidden":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .line 1812
    .end local v0    # "hidden":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getImportance(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1729
    monitor-enter p0

    .line 1730
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1731
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildImportanceLocked()V

    .line 1733
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1734
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1735
    .local v0, "importance":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1736
    const/4 v1, 0x3

    return v1

    .line 1738
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1733
    .end local v0    # "importance":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getImportanceExplanation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1742
    monitor-enter p0

    .line 1743
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1744
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildImportanceExplanationLocked()V

    .line 1746
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1747
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1746
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1751
    monitor-enter p0

    .line 1752
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1753
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildOverrideGroupKeys()V

    .line 1755
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1755
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getOverridePeople(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1769
    monitor-enter p0

    .line 1770
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverridePeople:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1771
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildOverridePeopleLocked()V

    .line 1773
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1774
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverridePeople:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 1773
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getRank(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1684
    monitor-enter p0

    .line 1685
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1686
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildRanksLocked()V

    .line 1688
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1689
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1690
    .local v0, "rank":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 1688
    .end local v0    # "rank":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getShowBadge(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1787
    monitor-enter p0

    .line 1788
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mShowBadge:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1789
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildShowBadgeLocked()V

    .line 1791
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mShowBadge:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1793
    .local v0, "showBadge":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .line 1791
    .end local v0    # "showBadge":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSnoozeCriteria(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 1778
    monitor-enter p0

    .line 1779
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSnoozeCriteria:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1780
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildSnoozeCriteriaLocked()V

    .line 1782
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1783
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSnoozeCriteria:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 1782
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSuppressedVisualEffects(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1716
    monitor-enter p0

    .line 1717
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1718
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildSuppressedVisualEffectsLocked()V

    .line 1720
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1721
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1722
    .local v0, "suppressed":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1723
    const/4 v1, 0x0

    return v1

    .line 1725
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1720
    .end local v0    # "suppressed":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getUserSentiment(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1797
    monitor-enter p0

    .line 1798
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mUserSentiment:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1799
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildUserSentimentLocked()V

    .line 1801
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1802
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mUserSentiment:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1803
    .local v0, "userSentiment":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1804
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1803
    :goto_0
    return v1

    .line 1801
    .end local v0    # "userSentiment":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getVisibilityOverride(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1703
    monitor-enter p0

    .line 1704
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1705
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildVisibilityOverridesLocked()V

    .line 1707
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1708
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1709
    .local v0, "override":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1710
    const/16 v1, -0x3e8

    return v1

    .line 1712
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1707
    .end local v0    # "override":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isIntercepted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1694
    monitor-enter p0

    .line 1695
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 1696
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildInterceptedSetLocked()V

    .line 1698
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1699
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1698
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1938
    const/4 v0, 0x0

    return v0
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .locals 1

    .line 1663
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 17
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "outRanking"    # Landroid/service/notification/NotificationListenerService$Ranking;

    .line 1674
    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRank(Ljava/lang/String;)I

    move-result v15

    .line 1675
    .local v15, "rank":I
    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->isIntercepted(Ljava/lang/String;)Z

    move-result v0

    .line 1676
    const/16 v16, 0x1

    xor-int/lit8 v3, v0, 0x1

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v4

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getSuppressedVisualEffects(Ljava/lang/String;)I

    move-result v5

    .line 1677
    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getImportance(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getImportanceExplanation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1678
    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v9

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOverridePeople(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getSnoozeCriteria(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1679
    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getShowBadge(Ljava/lang/String;)Z

    move-result v12

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getUserSentiment(Ljava/lang/String;)I

    move-result v13

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getHidden(Ljava/lang/String;)Z

    move-result v14

    .line 1675
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move v2, v15

    invoke-virtual/range {v0 .. v14}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZ)V

    .line 1680
    if-ltz v15, :cond_0

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    return v16
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1943
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1944
    return-void
.end method
