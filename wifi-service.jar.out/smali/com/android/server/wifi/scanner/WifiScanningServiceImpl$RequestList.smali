.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
.super Ljava/util/ArrayList;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)V
    .locals 0

    .line 373
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p2, "x1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;

    .line 373
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)V

    return-void
.end method


# virtual methods
.method addRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V
    .locals 7
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "reqworkSource"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            "I",
            "Landroid/os/WorkSource;",
            "TT;)V"
        }
    .end annotation

    .line 375
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    .local p4, "settings":Ljava/lang/Object;, "TT;"
    new-instance v6, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->add(Ljava/lang/Object;)Z

    .line 376
    return-void
.end method

.method createMergedWorkSource()Landroid/os/WorkSource;
    .locals 4

    .line 424
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 425
    .local v0, "mergedSource":Landroid/os/WorkSource;
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 426
    .local v2, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    iget-object v3, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 427
    .end local v2    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    goto :goto_0

    .line 428
    :cond_0
    return-object v0
.end method

.method getAllSettings()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 392
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v0, "settingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 394
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 396
    .local v2, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    iget-object v3, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v2    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    goto :goto_0

    .line 398
    :cond_0
    return-object v0
.end method

.method getAllSettingsForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)Ljava/util/Collection;
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 402
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v0, "settingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 404
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 406
    .local v2, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    iget-object v3, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    if-ne v3, p1, :cond_0

    .line 407
    iget-object v3, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v2    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    :cond_0
    goto :goto_0

    .line 410
    :cond_1
    return-object v0
.end method

.method removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 3
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 414
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 415
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 417
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    iget-object v2, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    if-ne v2, p1, :cond_0

    .line 418
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 420
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    :cond_0
    goto :goto_0

    .line 421
    :cond_1
    return-void
.end method

.method removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handlerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            "I)TT;"
        }
    .end annotation

    .line 379
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    const/4 v0, 0x0

    .line 380
    .local v0, "removed":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 381
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 383
    .local v2, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    iget-object v3, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    if-ne v3, p1, :cond_0

    iget v3, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    if-ne v3, p2, :cond_0

    .line 384
    iget-object v0, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    .line 385
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 387
    .end local v2    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    :cond_0
    goto :goto_0

    .line 388
    :cond_1
    return-object v0
.end method
