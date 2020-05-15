.class public final Landroid/service/autofill/Dataset$Builder;
.super Ljava/lang/Object;
.source "Dataset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAuthentication:Landroid/content/IntentSender;

.field private mDestroyed:Z

.field private mFieldFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset$DatasetFieldFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mFieldPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private mFieldValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mPresentation:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "presentation"    # Landroid/widget/RemoteViews;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const-string/jumbo v0, "presentation must be non-null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    .line 215
    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/Dataset$Builder;

    .line 197
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/Dataset$Builder;

    .line 197
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/Dataset$Builder;

    .line 197
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/Dataset$Builder;

    .line 197
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/Dataset$Builder;

    .line 197
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/autofill/Dataset$Builder;)Landroid/content/IntentSender;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/Dataset$Builder;

    .line 197
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAuthentication:Landroid/content/IntentSender;

    return-object v0
.end method

.method static synthetic access$600(Landroid/service/autofill/Dataset$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/Dataset$Builder;

    .line 197
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/service/autofill/Dataset$Builder;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/Dataset$DatasetFieldFilter;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/autofill/Dataset$Builder;
    .param p1, "x1"    # Landroid/view/autofill/AutofillId;
    .param p2, "x2"    # Landroid/view/autofill/AutofillValue;
    .param p3, "x3"    # Landroid/widget/RemoteViews;
    .param p4, "x4"    # Landroid/service/autofill/Dataset$DatasetFieldFilter;

    .line 197
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/Dataset$DatasetFieldFilter;)V

    return-void
.end method

.method private setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/Dataset$DatasetFieldFilter;)V
    .locals 2
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "filter"    # Landroid/service/autofill/Dataset$DatasetFieldFilter;

    .line 435
    const-string v0, "id cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 438
    .local v0, "existingIdx":I
    if-ltz v0, :cond_0

    .line 439
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-void

    .line 444
    .end local v0    # "existingIdx":I
    :cond_0
    goto :goto_0

    .line 445
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    .line 450
    :goto_0
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    .line 477
    iget-boolean v0, p0, Landroid/service/autofill/Dataset$Builder;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 480
    return-void

    .line 478
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/service/autofill/Dataset;
    .locals 2

    .line 468
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/Dataset$Builder;->mDestroyed:Z

    .line 470
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Landroid/service/autofill/Dataset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/Dataset;-><init>(Landroid/service/autofill/Dataset$Builder;Landroid/service/autofill/Dataset$1;)V

    return-object v0

    .line 471
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "at least one value must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAuthentication(Landroid/content/IntentSender;)Landroid/service/autofill/Dataset$Builder;
    .locals 0
    .param p1, "authentication"    # Landroid/content/IntentSender;

    .line 273
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 274
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mAuthentication:Landroid/content/IntentSender;

    .line 275
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 298
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 299
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mId:Ljava/lang/String;

    .line 300
    return-object p0
.end method

.method public setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/service/autofill/Dataset$Builder;
    .locals 1
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;

    .line 327
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/Dataset$DatasetFieldFilter;)V

    .line 329
    return-object p0
.end method

.method public setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;)Landroid/service/autofill/Dataset$Builder;
    .locals 1
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;

    .line 354
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 355
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/Dataset$DatasetFieldFilter;)V

    .line 357
    return-object p0
.end method

.method public setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;)Landroid/service/autofill/Dataset$Builder;
    .locals 2
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "filter"    # Ljava/util/regex/Pattern;

    .line 389
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 390
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Dataset presentation not set on constructor"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 392
    new-instance v0, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;Landroid/service/autofill/Dataset$1;)V

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/Dataset$DatasetFieldFilter;)V

    .line 393
    return-object p0
.end method

.method public setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;Landroid/widget/RemoteViews;)Landroid/service/autofill/Dataset$Builder;
    .locals 2
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "filter"    # Ljava/util/regex/Pattern;
    .param p4, "presentation"    # Landroid/widget/RemoteViews;

    .line 425
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 426
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    new-instance v0, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;Landroid/service/autofill/Dataset$1;)V

    invoke-direct {p0, p1, p2, p4, v0}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/Dataset$DatasetFieldFilter;)V

    .line 429
    return-object p0
.end method
