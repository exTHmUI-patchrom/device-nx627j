.class public final Landroid/service/autofill/FillEventHistory$Event;
.super Ljava/lang/Object;
.source "FillEventHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillEventHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FillEventHistory$Event$EventIds;
    }
.end annotation


# static fields
.field public static final TYPE_AUTHENTICATION_SELECTED:I = 0x2

.field public static final TYPE_CONTEXT_COMMITTED:I = 0x4

.field public static final TYPE_DATASET_AUTHENTICATION_SELECTED:I = 0x1

.field public static final TYPE_DATASET_SELECTED:I = 0x0

.field public static final TYPE_SAVE_SHOWN:I = 0x3


# instance fields
.field private final mChangedDatasetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChangedFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientState:Landroid/os/Bundle;

.field private final mDatasetId:Ljava/lang/String;

.field private final mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

.field private final mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

.field private final mEventType:I

.field private final mIgnoredDatasetIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mManuallyFilledDatasetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mManuallyFilledFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedDatasetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "datasetId"    # Ljava/lang/String;
    .param p3, "clientState"    # Landroid/os/Bundle;
    .param p10, "detectedFieldIds"    # [Landroid/view/autofill/AutofillId;
    .param p11, "detectedFieldClassifications"    # [Landroid/service/autofill/FieldClassification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;[",
            "Landroid/view/autofill/AutofillId;",
            "[",
            "Landroid/service/autofill/FieldClassification;",
            ")V"
        }
    .end annotation

    .line 475
    .local p4, "selectedDatasetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "ignoredDatasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p6, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p7, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p9, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    const-string v0, "eventType"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    .line 478
    iput-object p2, p0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    .line 479
    iput-object p3, p0, Landroid/service/autofill/FillEventHistory$Event;->mClientState:Landroid/os/Bundle;

    .line 480
    iput-object p4, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    .line 481
    iput-object p5, p0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    .line 482
    const/4 v0, 0x1

    if-eqz p6, :cond_1

    .line 483
    invoke-static {p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p7, :cond_0

    .line 485
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "changed ids must have same length and not be empty"

    .line 483
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 488
    :cond_1
    iput-object p6, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    .line 489
    iput-object p7, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    .line 490
    if-eqz p8, :cond_3

    .line 491
    invoke-static {p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p9, :cond_2

    .line 493
    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    const-string/jumbo v1, "manually filled ids must have same length and not be empty"

    .line 491
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 496
    :cond_3
    iput-object p8, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    .line 497
    iput-object p9, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    .line 499
    iput-object p10, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    .line 500
    iput-object p11, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

    .line 501
    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/FillEventHistory$Event;)I
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/FillEventHistory$Event;

    .line 170
    iget v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    return v0
.end method

.method static synthetic access$100(Landroid/service/autofill/FillEventHistory$Event;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/FillEventHistory$Event;

    .line 170
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/service/autofill/FillEventHistory$Event;)[Landroid/service/autofill/FieldClassification;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/FillEventHistory$Event;

    .line 170
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/autofill/FillEventHistory$Event;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/FillEventHistory$Event;

    .line 170
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/FillEventHistory$Event;

    .line 170
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/autofill/FillEventHistory$Event;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/FillEventHistory$Event;

    .line 170
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/FillEventHistory$Event;

    .line 170
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/FillEventHistory$Event;

    .line 170
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/FillEventHistory$Event;

    .line 170
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/FillEventHistory$Event;

    .line 170
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Landroid/service/autofill/FillEventHistory$Event;)[Landroid/view/autofill/AutofillId;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/FillEventHistory$Event;

    .line 170
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method


# virtual methods
.method public getChangedFields()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    .line 349
    :cond_0
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 350
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 351
    .local v1, "changedFields":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 352
    iget-object v3, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    iget-object v4, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 346
    .end local v0    # "size":I
    .end local v1    # "changedFields":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getClientState()Landroid/os/Bundle;
    .locals 1

    .line 283
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDatasetId()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldsClassification()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/service/autofill/FieldClassification;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    if-nez v0, :cond_0

    .line 367
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 369
    :cond_0
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    array-length v0, v0

    .line 370
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 371
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/FieldClassification;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 372
    iget-object v3, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    aget-object v3, v3, v2

    .line 373
    .local v3, "id":Landroid/view/autofill/AutofillId;
    iget-object v4, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

    aget-object v4, v4, v2

    .line 374
    .local v4, "fc":Landroid/service/autofill/FieldClassification;
    sget-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_1

    .line 375
    const-string v5, "FillEventHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFieldsClassification["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", fc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_1
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    .end local v4    # "fc":Landroid/service/autofill/FieldClassification;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public getIgnoredDatasetIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    :goto_0
    return-object v0
.end method

.method public getManuallyEnteredField()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    .line 432
    :cond_0
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 433
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 434
    .local v1, "manuallyFilledFields":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 435
    iget-object v3, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 436
    .local v3, "fieldId":Landroid/view/autofill/AutofillId;
    iget-object v4, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 437
    .local v4, "datasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .end local v3    # "fieldId":Landroid/view/autofill/AutofillId;
    .end local v4    # "datasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 429
    .end local v0    # "size":I
    .end local v1    # "manuallyFilledFields":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDatasetIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 292
    :goto_0
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 262
    iget v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FillEvent [datasetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selectedDatasets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ignoredDatasetIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changedFieldIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changedDatasetsIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", manuallyFilledFieldIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", manuallyFilledDatasetIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detectedFieldIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    .line 513
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detectedFieldClassifications ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

    .line 515
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    return-object v0
.end method
