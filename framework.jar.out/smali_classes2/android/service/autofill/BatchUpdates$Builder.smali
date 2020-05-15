.class public Landroid/service/autofill/BatchUpdates$Builder;
.super Ljava/lang/Object;
.source "BatchUpdates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/BatchUpdates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDestroyed:Z

.field private mTransformations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/service/autofill/InternalTransformation;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUpdates:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/BatchUpdates$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/BatchUpdates$Builder;

    .line 72
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mTransformations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/autofill/BatchUpdates$Builder;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/BatchUpdates$Builder;

    .line 72
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mUpdates:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method private throwIfDestroyed()V
    .locals 2

    .line 144
    iget-boolean v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/service/autofill/BatchUpdates;
    .locals 3

    .line 136
    invoke-direct {p0}, Landroid/service/autofill/BatchUpdates$Builder;->throwIfDestroyed()V

    .line 137
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mUpdates:Landroid/widget/RemoteViews;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mTransformations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const-string/jumbo v2, "must call either updateTemplate() or transformChild() at least once"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 139
    iput-boolean v1, p0, Landroid/service/autofill/BatchUpdates$Builder;->mDestroyed:Z

    .line 140
    new-instance v0, Landroid/service/autofill/BatchUpdates;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/BatchUpdates;-><init>(Landroid/service/autofill/BatchUpdates$Builder;Landroid/service/autofill/BatchUpdates$1;)V

    return-object v0
.end method

.method public transformChild(ILandroid/service/autofill/Transformation;)Landroid/service/autofill/BatchUpdates$Builder;
    .locals 4
    .param p1, "id"    # I
    .param p2, "transformation"    # Landroid/service/autofill/Transformation;

    .line 118
    invoke-direct {p0}, Landroid/service/autofill/BatchUpdates$Builder;->throwIfDestroyed()V

    .line 119
    instance-of v0, p2, Landroid/service/autofill/InternalTransformation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not provided by Android System: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 121
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mTransformations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mTransformations:Ljava/util/ArrayList;

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mTransformations:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Landroid/service/autofill/InternalTransformation;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-object p0
.end method

.method public updateTemplate(Landroid/widget/RemoteViews;)Landroid/service/autofill/BatchUpdates$Builder;
    .locals 1
    .param p1, "updates"    # Landroid/widget/RemoteViews;

    .line 96
    invoke-direct {p0}, Landroid/service/autofill/BatchUpdates$Builder;->throwIfDestroyed()V

    .line 97
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mUpdates:Landroid/widget/RemoteViews;

    .line 98
    return-object p0
.end method
