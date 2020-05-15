.class public Landroid/app/slice/Slice$Builder;
.super Ljava/lang/Object;
.source "Slice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/slice/Slice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mHints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSpec:Landroid/app/slice/SliceSpec;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/slice/Slice$Builder;)V
    .locals 2
    .param p1, "parent"    # Landroid/app/slice/Slice$Builder;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    .line 389
    iget-object v0, p1, Landroid/app/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_gen"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 390
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    .line 391
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    .line 370
    iput-object p1, p0, Landroid/app/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    .line 371
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "spec"    # Landroid/app/slice/SliceSpec;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    .line 379
    iput-object p1, p0, Landroid/app/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    .line 380
    iput-object p2, p0, Landroid/app/slice/Slice$Builder;->mSpec:Landroid/app/slice/SliceSpec;

    .line 381
    return-void
.end method


# virtual methods
.method public addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;
    .locals 9
    .param p1, "action"    # Landroid/app/PendingIntent;
    .param p2, "s"    # Landroid/app/slice/Slice;
    .param p3, "subType"    # Ljava/lang/String;

    .line 444
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-virtual {p2}, Landroid/app/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v0

    .line 447
    .local v0, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/app/slice/Slice;->access$002(Landroid/app/slice/Slice;Landroid/app/slice/SliceSpec;)Landroid/app/slice/SliceSpec;

    .line 448
    iget-object v1, p0, Landroid/app/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v8, Landroid/app/slice/SliceItem;

    const-string v5, "action"

    .line 449
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 448
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [Ljava/lang/String;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/app/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    return-object p0
.end method

.method public addBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/slice/Slice$Builder;"
        }
    .end annotation

    .line 532
    .local p3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v0, p0, Landroid/app/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/slice/SliceItem;

    const-string v2, "bundle"

    invoke-direct {v1, p1, v2, p2, p3}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    return-object p0
.end method

.method public addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/slice/Slice$Builder;"
        }
    .end annotation

    .line 412
    .local p1, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 413
    return-object p0
.end method

.method public addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/slice/Slice$Builder;"
        }
    .end annotation

    .line 471
    .local p3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Landroid/app/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/slice/SliceItem;

    const-string v2, "image"

    invoke-direct {v1, p1, v2, p2, p3}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    return-object p0
.end method

.method public addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;
    .locals 4
    .param p1, "value"    # I
    .param p2, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/slice/Slice$Builder;"
        }
    .end annotation

    .line 497
    .local p3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/slice/SliceItem;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "int"

    invoke-direct {v1, v2, v3, p2, p3}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    return-object p0
.end method

.method public addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;
    .locals 5
    .param p1, "value"    # J
    .param p3, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/slice/Slice$Builder;"
        }
    .end annotation

    .line 518
    .local p4, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/slice/SliceItem;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "long"

    .line 519
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p4, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-direct {v1, v2, v3, p3, v4}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    return-object p0
.end method

.method public addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;
    .locals 3
    .param p1, "remoteInput"    # Landroid/app/RemoteInput;
    .param p2, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/RemoteInput;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/slice/Slice$Builder;"
        }
    .end annotation

    .line 484
    .local p3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v0, p0, Landroid/app/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/slice/SliceItem;

    const-string v2, "input"

    invoke-direct {v1, p1, v2, p2, p3}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    return-object p0
.end method

.method public addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;
    .locals 5
    .param p1, "slice"    # Landroid/app/slice/Slice;
    .param p2, "subType"    # Ljava/lang/String;

    .line 431
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Landroid/app/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/slice/SliceItem;

    const-string/jumbo v2, "slice"

    .line 433
    invoke-virtual {p1}, Landroid/app/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v1, p1, v2, p2, v3}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    return-object p0
.end method

.method public addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/slice/Slice$Builder;"
        }
    .end annotation

    .line 460
    .local p3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/slice/SliceItem;

    const-string/jumbo v2, "text"

    invoke-direct {v1, p1, v2, p2, p3}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    return-object p0
.end method

.method public addTimestamp(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;
    .locals 1
    .param p1, "time"    # J
    .param p3, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/slice/Slice$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    .local p4, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroid/app/slice/Slice;
    .locals 5

    .line 542
    new-instance v0, Landroid/app/slice/Slice;

    iget-object v1, p0, Landroid/app/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p0, Landroid/app/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/app/slice/Slice$Builder;->mSpec:Landroid/app/slice/SliceSpec;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/slice/Slice;-><init>(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    return-object v0
.end method

.method public setCallerNeeded(Z)Landroid/app/slice/Slice$Builder;
    .locals 2
    .param p1, "callerNeeded"    # Z

    .line 400
    if-eqz p1, :cond_0

    .line 401
    iget-object v0, p0, Landroid/app/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    const-string v1, "caller_needed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Landroid/app/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    const-string v1, "caller_needed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 405
    :goto_0
    return-object p0
.end method

.method public setSpec(Landroid/app/slice/SliceSpec;)Landroid/app/slice/Slice$Builder;
    .locals 0
    .param p1, "spec"    # Landroid/app/slice/SliceSpec;

    .line 421
    iput-object p1, p0, Landroid/app/slice/Slice$Builder;->mSpec:Landroid/app/slice/SliceSpec;

    .line 422
    return-object p0
.end method
