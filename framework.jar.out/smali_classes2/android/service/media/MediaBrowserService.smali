.class public abstract Landroid/service/media/MediaBrowserService;
.super Landroid/app/Service;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/media/MediaBrowserService$BrowserRoot;,
        Landroid/service/media/MediaBrowserService$ServiceBinder;,
        Landroid/service/media/MediaBrowserService$Result;,
        Landroid/service/media/MediaBrowserService$ConnectionRecord;,
        Landroid/service/media/MediaBrowserService$ResultFlags;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final KEY_MEDIA_ITEM:Ljava/lang/String; = "media_item"

.field private static final RESULT_ERROR:I = -0x1

.field private static final RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED:I = 0x2

.field private static final RESULT_FLAG_OPTION_NOT_HANDLED:I = 0x1

.field private static final RESULT_OK:I = 0x0

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.browse.MediaBrowserService"

.field private static final TAG:Ljava/lang/String; = "MediaBrowserService"


# instance fields
.field private mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field private final mConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/service/media/MediaBrowserService$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

.field private final mHandler:Landroid/os/Handler;

.field mSession:Landroid/media/session/MediaSession$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;

    .line 78
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;

    .line 78
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/service/media/MediaBrowserService;Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/media/MediaBrowserService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->isValidPackage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .locals 0
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 78
    iput-object p1, p0, Landroid/service/media/MediaBrowserService;->mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    return-object p1
.end method

.method static synthetic access$500(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .param p3, "x3"    # Landroid/os/IBinder;
    .param p4, "x4"    # Landroid/os/Bundle;

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/media/MediaBrowserService;->addSubscription(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .param p3, "x3"    # Landroid/os/IBinder;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/service/media/MediaBrowserService;->removeSubscription(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .param p3, "x3"    # Landroid/os/ResultReceiver;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/service/media/MediaBrowserService;->performLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$900(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/service/media/MediaBrowserService;->performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V

    return-void
.end method

.method private addSubscription(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 625
    iget-object v0, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 626
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_0

    .line 627
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 629
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 630
    .local v2, "callback":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v3, :cond_1

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 631
    invoke-static {p4, v3}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 632
    return-void

    .line 634
    .end local v2    # "callback":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    :cond_1
    goto :goto_0

    .line 635
    :cond_2
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v1, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-direct {p0, p1, p2, p4}, Landroid/service/media/MediaBrowserService;->performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V

    .line 639
    return-void
.end method

.method private applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 715
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    if-nez p1, :cond_0

    .line 716
    const/4 v0, 0x0

    return-object v0

    .line 718
    :cond_0
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 719
    .local v0, "page":I
    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 720
    .local v2, "pageSize":I
    if-ne v0, v1, :cond_1

    if-ne v2, v1, :cond_1

    .line 721
    return-object p1

    .line 723
    :cond_1
    mul-int v1, v2, v0

    .line 724
    .local v1, "fromIndex":I
    add-int v3, v1, v2

    .line 725
    .local v3, "toIndex":I
    if-ltz v0, :cond_4

    const/4 v4, 0x1

    if-lt v2, v4, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    goto :goto_0

    .line 728
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 729
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 731
    :cond_3
    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 726
    :cond_4
    :goto_0
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v4
.end method

.method private isValidPackage(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 605
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 606
    return v0

    .line 608
    :cond_0
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 609
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, "packages":[Ljava/lang/String;
    array-length v3, v2

    .line 611
    .local v3, "N":I
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 612
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 613
    const/4 v0, 0x1

    return v0

    .line 611
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 616
    .end local v4    # "i":I
    :cond_2
    return v0
.end method

.method private notifyChildrenChangedInternal(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 579
    if-eqz p1, :cond_0

    .line 582
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/media/MediaBrowserService$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/media/MediaBrowserService$2;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 599
    return-void

    .line 580
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 672
    new-instance v6, Landroid/service/media/MediaBrowserService$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/service/media/MediaBrowserService$3;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 699
    .local v0, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    iput-object p2, p0, Landroid/service/media/MediaBrowserService;->mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 700
    if-nez p3, :cond_0

    .line 701
    invoke-virtual {p0, p1, v0}, Landroid/service/media/MediaBrowserService;->onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_0

    .line 703
    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Landroid/service/media/MediaBrowserService;->onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V

    .line 705
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/media/MediaBrowserService;->mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 707
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 711
    return-void

    .line 708
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private performLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .line 736
    new-instance v6, Landroid/service/media/MediaBrowserService$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/service/media/MediaBrowserService$4;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 757
    .local v0, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iput-object p2, p0, Landroid/service/media/MediaBrowserService;->mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 758
    invoke-virtual {p0, p1, v0}, Landroid/service/media/MediaBrowserService;->onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    .line 759
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/media/MediaBrowserService;->mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 761
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    return-void

    .line 762
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private removeSubscription(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 645
    if-nez p3, :cond_1

    .line 646
    iget-object v0, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 648
    :cond_1
    const/4 v0, 0x0

    .line 649
    .local v0, "removed":Z
    iget-object v1, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 650
    .local v1, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-eqz v1, :cond_4

    .line 651
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 652
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 653
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v3, :cond_2

    .line 654
    const/4 v0, 0x1

    .line 655
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 658
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 659
    iget-object v3, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :cond_4
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 364
    return-void
.end method

.method public final getBrowserRootHints()Landroid/os/Bundle;
    .locals 2

    .line 525
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v0, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/service/media/MediaBrowserService;->mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    .line 526
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of onGetRoot or onLoadChildren or onLoadItem methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCurrentBrowserInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .locals 5

    .line 540
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    if-eqz v0, :cond_0

    .line 544
    new-instance v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    iget-object v1, p0, Landroid/service/media/MediaBrowserService;->mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/media/MediaBrowserService;->mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget v2, v2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pid:I

    iget-object v3, p0, Landroid/service/media/MediaBrowserService;->mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget v3, v3, Landroid/service/media/MediaBrowserService$ConnectionRecord;->uid:I

    iget-object v4, p0, Landroid/service/media/MediaBrowserService;->mCurConnection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v4, v4, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 545
    invoke-interface {v4}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;IILandroid/os/IBinder;)V

    .line 544
    return-object v0

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of onGetRoot or onLoadChildren or onLoadItem methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .line 509
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/service/media/MediaBrowserService;->notifyChildrenChangedInternal(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 558
    return-void
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 572
    if-eqz p2, :cond_0

    .line 575
    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->notifyChildrenChangedInternal(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 576
    return-void

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "options cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 356
    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

    return-object v0

    .line 359
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 350
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 351
    new-instance v0, Landroid/service/media/MediaBrowserService$ServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/media/MediaBrowserService$ServiceBinder;-><init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$1;)V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService;->mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 352
    return-void
.end method

.method public abstract onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 442
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/service/media/MediaBrowserService$Result;->setFlags(I)V

    .line 443
    invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    .line 444
    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 466
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/service/media/MediaBrowserService$Result;->setFlags(I)V

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    .line 468
    return-void
.end method

.method public setSessionToken(Landroid/media/session/MediaSession$Token;)V
    .locals 2
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    .line 479
    if-eqz p1, :cond_1

    .line 482
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    if-nez v0, :cond_0

    .line 485
    iput-object p1, p0, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    .line 486
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/media/MediaBrowserService$1;

    invoke-direct {v1, p0, p1}, Landroid/service/media/MediaBrowserService$1;-><init>(Landroid/service/media/MediaBrowserService;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    return-void

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The session token has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session token may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
