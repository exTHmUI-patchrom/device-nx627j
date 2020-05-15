.class public final Landroid/view/textclassifier/TextClassifier$EntityConfig;
.super Ljava/lang/Object;
.source "TextClassifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntityConfig"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExcludedEntityTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncludedEntityTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseHints:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 507
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mHints:Ljava/util/Collection;

    .line 522
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedEntityTypes:Ljava/util/Collection;

    .line 523
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedEntityTypes:Ljava/util/Collection;

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mUseHints:Z

    .line 525
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifier$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/textclassifier/TextClassifier$1;

    .line 398
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifier$EntityConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZLjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .param p1, "useHints"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 405
    .local p2, "hints":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "includedEntityTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p4, "excludedEntityTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    if-nez p2, :cond_0

    .line 407
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 408
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mHints:Ljava/util/Collection;

    .line 409
    if-nez p4, :cond_1

    .line 410
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_1
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedEntityTypes:Ljava/util/Collection;

    .line 411
    if-nez p3, :cond_2

    .line 412
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_2
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedEntityTypes:Ljava/util/Collection;

    .line 413
    iput-boolean p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mUseHints:Z

    .line 414
    return-void
.end method

.method public static create(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;"
        }
    .end annotation

    .line 429
    .local p0, "hints":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->createWithHints(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;"
        }
    .end annotation

    .line 445
    .local p0, "hints":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p1, "includedEntityTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "excludedEntityTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/view/textclassifier/TextClassifier$EntityConfig;-><init>(ZLjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static createWithEntityList(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;"
        }
    .end annotation

    .line 464
    .local p0, "entityTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->createWithExplicitEntityList(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v0

    return-object v0
.end method

.method public static createWithExplicitEntityList(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;"
        }
    .end annotation

    .line 457
    .local p0, "entityTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0, v1}, Landroid/view/textclassifier/TextClassifier$EntityConfig;-><init>(ZLjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static createWithHints(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;"
        }
    .end annotation

    .line 422
    .local p0, "hints":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1, v1}, Landroid/view/textclassifier/TextClassifier$EntityConfig;-><init>(ZLjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public getHints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mHints:Ljava/util/Collection;

    return-object v0
.end method

.method public resolveEntityListModifications(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 476
    .local p1, "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 477
    .local v0, "finalSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mUseHints:Z

    if-eqz v1, :cond_0

    .line 478
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 480
    :cond_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedEntityTypes:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 481
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedEntityTypes:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 482
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mHints:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedEntityTypes:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedEntityTypes:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 504
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mUseHints:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    return-void
.end method
