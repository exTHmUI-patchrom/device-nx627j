.class public final Landroid/view/textclassifier/TextClassifierImpl;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierImpl$NativeCloser;,
        Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;,
        Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;,
        Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "androidtc"

.field private static final MODEL_DIR:Ljava/lang/String; = "/etc/textclassifier/"

.field private static final MODEL_FILE_REGEX:Ljava/lang/String; = "textclassifier\\.(.*)\\.model"

.field private static final UPDATED_MODEL_FILE_PATH:Ljava/lang/String; = "/data/misc/textclassifier/textclassifier.model"


# instance fields
.field private mAllModelFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$ModelFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFallback:Landroid/view/textclassifier/TextClassifier;

.field private final mGenerateLinksLogger:Landroid/view/textclassifier/GenerateLinksLogger;

.field private final mLock:Ljava/lang/Object;

.field private final mLoggerLock:Ljava/lang/Object;

.field private mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mNative:Landroid/view/textclassifier/TextClassifierImplNative;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mNativeCleaner:Lsun/misc/Cleaner;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoggerLock"
    .end annotation
.end field

.field private final mSettings:Landroid/view/textclassifier/TextClassificationConstants;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Landroid/view/textclassifier/TextClassificationConstants;

    .line 116
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    invoke-direct {p0, p1, p2, v0}, Landroid/view/textclassifier/TextClassifierImpl;-><init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;Landroid/view/textclassifier/TextClassifier;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;Landroid/view/textclassifier/TextClassifier;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Landroid/view/textclassifier/TextClassificationConstants;
    .param p3, "fallback"    # Landroid/view/textclassifier/TextClassifier;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLoggerLock:Ljava/lang/Object;

    .line 109
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    .line 111
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationConstants;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 112
    new-instance v0, Landroid/view/textclassifier/GenerateLinksLogger;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksLogSampleRate()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/textclassifier/GenerateLinksLogger;-><init>(I)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mGenerateLinksLogger:Landroid/view/textclassifier/GenerateLinksLogger;

    .line 113
    return-void
.end method

.method static synthetic access$000(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/ParcelFileDescriptor;

    .line 79
    invoke-static {p0}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method private static closeAndLogError(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 444
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "androidtc"

    const-string v2, "Error closing file."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;
    .locals 1
    .param p0, "locales"    # Landroid/os/LocaleList;

    .line 333
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private createClassificationResult([Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;Ljava/lang/String;IILjava/time/Instant;)Landroid/view/textclassifier/TextClassification;
    .locals 15
    .param p1, "classifications"    # [Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "referenceTime"    # Ljava/time/Instant;

    move-object v0, p0

    move-object/from16 v1, p1

    .line 399
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "classifiedText":Ljava/lang/String;
    new-instance v3, Landroid/view/textclassifier/TextClassification$Builder;

    invoke-direct {v3}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    .line 401
    invoke-virtual {v3, v2}, Landroid/view/textclassifier/TextClassification$Builder;->setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v3

    .line 403
    .local v3, "builder":Landroid/view/textclassifier/TextClassification$Builder;
    array-length v4, v1

    .line 404
    .local v4, "size":I
    const/4 v5, 0x0

    .line 405
    .local v5, "highestScoringResult":Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;
    const/4 v6, 0x1

    .line 406
    .local v6, "highestScore":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_1

    .line 407
    aget-object v8, v1, v7

    invoke-virtual {v8}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v1, v7

    .line 408
    invoke-virtual {v9}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v9

    .line 407
    invoke-virtual {v3, v8, v9}, Landroid/view/textclassifier/TextClassification$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextClassification$Builder;

    .line 409
    aget-object v8, v1, v7

    invoke-virtual {v8}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v8

    cmpl-float v8, v8, v6

    if-lez v8, :cond_0

    .line 410
    aget-object v5, v1, v7

    .line 411
    aget-object v8, v1, v7

    invoke-virtual {v8}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v6

    .line 406
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 415
    .end local v7    # "i":I
    :cond_1
    const/4 v7, 0x1

    .line 416
    .local v7, "isPrimaryAction":Z
    iget-object v8, v0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    move-object/from16 v9, p5

    invoke-static {v8, v9, v5, v2}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->create(Landroid/content/Context;Ljava/time/Instant;Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    .line 418
    .local v10, "labeledIntent":Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;
    iget-object v11, v0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->asRemoteAction(Landroid/content/Context;)Landroid/app/RemoteAction;

    move-result-object v11

    .line 419
    .local v11, "action":Landroid/app/RemoteAction;
    if-nez v11, :cond_2

    .line 420
    goto :goto_1

    .line 422
    :cond_2
    if-eqz v7, :cond_3

    .line 425
    invoke-virtual {v11}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    iget-object v13, v0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 426
    invoke-virtual {v11}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 427
    invoke-virtual {v10}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setIntent(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 428
    iget-object v12, v0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    .line 430
    invoke-virtual {v10}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v10}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->getRequestCode()I

    move-result v14

    .line 429
    invoke-static {v12, v13, v14}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 428
    invoke-static {v12}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 431
    const/4 v7, 0x0

    .line 433
    :cond_3
    invoke-virtual {v3, v11}, Landroid/view/textclassifier/TextClassification$Builder;->addAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 434
    .end local v10    # "labeledIntent":Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;
    .end local v11    # "action":Landroid/app/RemoteAction;
    goto :goto_1

    .line 436
    :cond_4
    move-object/from16 v8, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-direct {v0, v8, v10, v11}, Landroid/view/textclassifier/TextClassifierImpl;->createId(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setId(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object v12

    return-object v12
.end method

.method private createId(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 326
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->getVersion()I

    move-result v5

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    .line 328
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->getSupportedLocales()Ljava/util/List;

    move-result-object v6

    .line 327
    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v6}, Landroid/view/textclassifier/SelectionSessionLogger;->createId(Ljava/lang/String;IILandroid/content/Context;ILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 329
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findBestModelLocked(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    .locals 6
    .param p1, "localeList"    # Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 348
    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "languages":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/util/Locale$LanguageRange;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 353
    .local v1, "languageRangeList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    const/4 v2, 0x0

    .line 354
    .local v2, "bestModel":Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->listAllModelsLocked()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    .line 355
    .local v4, "model":Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    invoke-virtual {v4, v1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->isAnyLanguageSupported(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 356
    invoke-virtual {v4, v2}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->isPreferredTo(Landroid/view/textclassifier/TextClassifierImpl$ModelFile;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 357
    move-object v2, v4

    .line 360
    .end local v4    # "model":Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    :cond_1
    goto :goto_1

    .line 361
    :cond_2
    return-object v2
.end method

.method private getEntitiesForHints(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
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

    .line 279
    .local p1, "hints":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "android.text_is_editable"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 280
    .local v0, "editable":Z
    const-string v1, "android.text_is_not_editable"

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 283
    .local v1, "notEditable":Z
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 284
    .local v2, "useDefault":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 285
    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListDefault()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 286
    :cond_1
    if-eqz v0, :cond_2

    .line 287
    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListEditable()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 289
    :cond_2
    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListNotEditable()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private getNative(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImplNative;
    .locals 5
    .param p1, "localeList"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 307
    :cond_0
    move-object v1, p1

    :goto_0
    move-object p1, v1

    .line 308
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierImpl;->findBestModelLocked(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    move-result-object v1

    .line 309
    .local v1, "bestModel":Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    if-eqz v1, :cond_3

    .line 312
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassifierImplNative;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 313
    :cond_1
    const-string v2, "androidtc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v2, Ljava/io/File;

    .line 315
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 314
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 316
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/view/textclassifier/TextClassifierImplNative;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/view/textclassifier/TextClassifierImplNative;-><init>(I)V

    iput-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    .line 317
    new-instance v3, Landroid/view/textclassifier/TextClassifierImpl$NativeCloser;

    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    invoke-direct {v3, v4}, Landroid/view/textclassifier/TextClassifierImpl$NativeCloser;-><init>(Landroid/view/textclassifier/TextClassifierImplNative;)V

    invoke-static {p0, v3}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v3

    iput-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNativeCleaner:Lsun/misc/Cleaner;

    .line 318
    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    .line 319
    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    .line 321
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    monitor-exit v0

    return-object v2

    .line 310
    :cond_3
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No model for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    .end local v1    # "bestModel":Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private listAllModelsLocked()Ljava/util/List;
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$ModelFile;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAllModelFiles:Ljava/util/List;

    if-nez v0, :cond_3

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v0, "allModels":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/TextClassifierImpl$ModelFile;>;"
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/textclassifier/textclassifier.model"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const-string v1, "/data/misc/textclassifier/textclassifier.model"

    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->fromPath(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    move-result-object v1

    .line 372
    .local v1, "updatedModel":Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    if-eqz v1, :cond_0

    .line 373
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v1    # "updatedModel":Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/etc/textclassifier/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    .local v1, "modelsDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 380
    .local v2, "modelFiles":[Ljava/io/File;
    const-string/jumbo v3, "textclassifier\\.(.*)\\.model"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 381
    .local v3, "modelFilenamePattern":Ljava/util/regex/Pattern;
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 382
    .local v6, "modelFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 383
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 384
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->fromPath(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    move-result-object v8

    .line 385
    .local v8, "model":Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    if-eqz v8, :cond_1

    .line 386
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v6    # "modelFile":Ljava/io/File;
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "model":Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "modelFiles":[Ljava/io/File;
    .end local v3    # "modelFilenamePattern":Ljava/util/regex/Pattern;
    :cond_2
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAllModelFiles:Ljava/util/List;

    .line 393
    .end local v0    # "allModels":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/TextClassifierImpl$ModelFile;>;"
    .end local v1    # "modelsDir":Ljava/io/File;
    :cond_3
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAllModelFiles:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 11
    .param p1, "request"    # Landroid/view/textclassifier/TextClassification$Request;

    .line 182
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 185
    :try_start_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getEndIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getStartIndex()I

    move-result v1

    sub-int/2addr v0, v1

    .line 186
    .local v0, "rangeLength":I
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationConstants;->getClassifyTextMaxRangeLength()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 188
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 189
    .local v8, "localesString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    :goto_0
    move-object v9, v2

    .line 191
    .local v9, "refTime":Ljava/time/ZonedDateTime;
    nop

    .line 192
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/textclassifier/TextClassifierImpl;->getNative(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImplNative;

    move-result-object v2

    .line 194
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getStartIndex()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getEndIndex()I

    move-result v4

    new-instance v5, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;

    .line 196
    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 197
    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v6, v7, v10, v8}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/textclassifier/TextClassifierImplNative;->classifyText(Ljava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;

    move-result-object v2

    move-object v10, v2

    .line 199
    .local v10, "results":[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;
    array-length v2, v10

    if-lez v2, :cond_1

    .line 200
    nop

    .line 202
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getStartIndex()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getEndIndex()I

    move-result v6

    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v7

    .line 200
    move-object v2, p0

    move-object v3, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/textclassifier/TextClassifierImpl;->createClassificationResult([Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;Ljava/lang/String;IILjava/time/Instant;)Landroid/view/textclassifier/TextClassification;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 208
    .end local v0    # "rangeLength":I
    .end local v1    # "string":Ljava/lang/String;
    .end local v8    # "localesString":Ljava/lang/String;
    .end local v9    # "refTime":Ljava/time/ZonedDateTime;
    .end local v10    # "results":[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;
    :cond_1
    goto :goto_1

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "androidtc"

    const-string v2, "Error getting text classification info."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method public generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 18
    .param p1, "request"    # Landroid/view/textclassifier/TextLinks$Request;

    move-object/from16 v1, p0

    .line 217
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/textclassifier/TextClassifierImpl;->getMaxGenerateLinksTextLength()I

    move-result v2

    invoke-static {v0, v2}, Landroid/view/textclassifier/TextClassifier$Utils;->checkTextLength(Ljava/lang/CharSequence;I)V

    .line 219
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 221
    iget-object v0, v1, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->isLegacyFallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static/range {p1 .. p1}, Landroid/view/textclassifier/TextClassifier$Utils;->generateLegacyLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0

    .line 225
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "textString":Ljava/lang/String;
    new-instance v0, Landroid/view/textclassifier/TextLinks$Builder;

    invoke-direct {v0, v2}, Landroid/view/textclassifier/TextLinks$Builder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 229
    .local v3, "builder":Landroid/view/textclassifier/TextLinks$Builder;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 230
    .local v4, "startTimeMs":J
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 231
    .local v0, "refTime":Ljava/time/ZonedDateTime;
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v6

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->getHints()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/view/textclassifier/TextClassifierImpl;->getEntitiesForHints(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    .line 232
    invoke-virtual {v6, v7}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->resolveEntityListModifications(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    goto :goto_0

    .line 234
    :cond_1
    iget-object v6, v1, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v6}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListDefault()Ljava/util/List;

    move-result-object v6

    .line 235
    .local v6, "entitiesToIdentify":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    nop

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/view/textclassifier/TextClassifierImpl;->getNative(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImplNative;

    move-result-object v7

    .line 237
    .local v7, "nativeImpl":Landroid/view/textclassifier/TextClassifierImplNative;
    new-instance v8, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;

    .line 241
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    .line 242
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v11

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v12

    invoke-static {v12}, Landroid/view/textclassifier/TextClassifierImpl;->concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v7, v2, v8}, Landroid/view/textclassifier/TextClassifierImplNative;->annotate(Ljava/lang/String;Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;

    move-result-object v8

    .line 244
    .local v8, "annotations":[Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;
    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_1
    if-ge v11, v9, :cond_5

    aget-object v12, v8, v11

    .line 245
    .local v12, "span":Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;
    nop

    .line 246
    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->getClassification()[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;

    move-result-object v13

    .line 247
    .local v13, "results":[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;
    array-length v14, v13

    if-eqz v14, :cond_4

    aget-object v14, v13, v10

    .line 248
    invoke-virtual {v14}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 249
    nop

    .line 244
    move-object/from16 v17, v0

    goto :goto_3

    .line 251
    :cond_2
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v14, "entityScores":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    move v15, v10

    .local v15, "i":I
    :goto_2
    array-length v10, v13

    if-ge v15, v10, :cond_3

    .line 253
    aget-object v10, v13, v15

    invoke-virtual {v10}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v0

    aget-object v0, v13, v15

    .end local v0    # "refTime":Ljava/time/ZonedDateTime;
    .local v17, "refTime":Ljava/time/ZonedDateTime;
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v14, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v17

    const/4 v10, 0x0

    goto :goto_2

    .line 255
    .end local v15    # "i":I
    .end local v17    # "refTime":Ljava/time/ZonedDateTime;
    .restart local v0    # "refTime":Ljava/time/ZonedDateTime;
    :cond_3
    move-object/from16 v17, v0

    .end local v0    # "refTime":Ljava/time/ZonedDateTime;
    .restart local v17    # "refTime":Ljava/time/ZonedDateTime;
    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->getStartIndex()I

    move-result v0

    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->getEndIndex()I

    move-result v10

    invoke-virtual {v3, v0, v10, v14}, Landroid/view/textclassifier/TextLinks$Builder;->addLink(IILjava/util/Map;)Landroid/view/textclassifier/TextLinks$Builder;

    .end local v12    # "span":Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;
    .end local v13    # "results":[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;
    .end local v14    # "entityScores":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    goto :goto_3

    .line 244
    .end local v17    # "refTime":Ljava/time/ZonedDateTime;
    .restart local v0    # "refTime":Ljava/time/ZonedDateTime;
    :cond_4
    move-object/from16 v17, v0

    .end local v0    # "refTime":Ljava/time/ZonedDateTime;
    .restart local v17    # "refTime":Ljava/time/ZonedDateTime;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v17

    const/4 v10, 0x0

    goto :goto_1

    .line 257
    .end local v17    # "refTime":Ljava/time/ZonedDateTime;
    .restart local v0    # "refTime":Ljava/time/ZonedDateTime;
    :cond_5
    move-object/from16 v17, v0

    .end local v0    # "refTime":Ljava/time/ZonedDateTime;
    .restart local v17    # "refTime":Ljava/time/ZonedDateTime;
    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$Builder;->build()Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    .line 258
    .local v0, "links":Landroid/view/textclassifier/TextLinks;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-wide v15, v9

    .line 259
    .local v15, "endTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getCallingPackageName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    .line 260
    iget-object v9, v1, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 261
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getCallingPackageName()Ljava/lang/String;

    move-result-object v9

    :goto_4
    move-object v12, v9

    .line 262
    .local v12, "callingPackageName":Ljava/lang/String;
    iget-object v9, v1, Landroid/view/textclassifier/TextClassifierImpl;->mGenerateLinksLogger:Landroid/view/textclassifier/GenerateLinksLogger;

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    sub-long v13, v15, v4

    .line 262
    move-object v11, v0

    invoke-virtual/range {v9 .. v14}, Landroid/view/textclassifier/GenerateLinksLogger;->logGenerateLinks(Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinks;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    return-object v0

    .line 265
    .end local v0    # "links":Landroid/view/textclassifier/TextLinks;
    .end local v4    # "startTimeMs":J
    .end local v6    # "entitiesToIdentify":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v7    # "nativeImpl":Landroid/view/textclassifier/TextClassifierImplNative;
    .end local v8    # "annotations":[Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;
    .end local v12    # "callingPackageName":Ljava/lang/String;
    .end local v15    # "endTimeMs":J
    .end local v17    # "refTime":Ljava/time/ZonedDateTime;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "t":Ljava/lang/Throwable;
    const-string v4, "androidtc"

    const-string v5, "Error getting links info."

    invoke-static {v4, v5, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    .end local v0    # "t":Ljava/lang/Throwable;
    iget-object v0, v1, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    move-object/from16 v4, p1

    invoke-interface {v0, v4}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method public getMaxGenerateLinksTextLength()I
    .locals 1

    .line 275
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksMaxTextLength()I

    move-result v0

    return v0
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 295
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLoggerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;

    if-nez v1, :cond_0

    .line 298
    new-instance v1, Landroid/view/textclassifier/SelectionSessionLogger;

    invoke-direct {v1}, Landroid/view/textclassifier/SelectionSessionLogger;-><init>()V

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;

    .line 300
    :cond_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;

    invoke-virtual {v1, p1}, Landroid/view/textclassifier/SelectionSessionLogger;->writeEvent(Landroid/view/textclassifier/SelectionEvent;)V

    .line 301
    monitor-exit v0

    .line 302
    return-void

    .line 301
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 13
    .param p1, "request"    # Landroid/view/textclassifier/TextSelection$Request;

    .line 123
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 126
    :try_start_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v1

    sub-int/2addr v0, v1

    .line 127
    .local v0, "rangeLength":I
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 129
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationConstants;->getSuggestSelectionMaxRangeLength()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 130
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "localesString":Ljava/lang/String;
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v3

    .line 132
    .local v3, "refTime":Ljava/time/ZonedDateTime;
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/textclassifier/TextClassifierImpl;->getNative(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImplNative;

    move-result-object v4

    .line 135
    .local v4, "nativeImpl":Landroid/view/textclassifier/TextClassifierImplNative;
    iget-object v5, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassificationConstants;->isModelDarkLaunchEnabled()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->isDarkLaunchAllowed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v5

    .line 137
    .local v5, "start":I
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v7

    .local v7, "end":I
    goto :goto_0

    .line 139
    .end local v5    # "start":I
    .end local v7    # "end":I
    :cond_0
    nop

    .line 140
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v7

    new-instance v8, Landroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;

    invoke-direct {v8, v2}, Landroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4, v1, v5, v7, v8}, Landroid/view/textclassifier/TextClassifierImplNative;->suggestSelection(Ljava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;)[I

    move-result-object v5

    .line 142
    .local v5, "startEnd":[I
    aget v7, v5, v6

    .line 143
    .local v7, "start":I
    const/4 v8, 0x1

    aget v8, v5, v8

    .end local v5    # "startEnd":[I
    move v5, v7

    move v7, v8

    .line 145
    .local v5, "start":I
    .local v7, "end":I
    :goto_0
    if-ge v5, v7, :cond_2

    if-ltz v5, :cond_2

    .line 146
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_2

    .line 147
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v8

    if-gt v5, v8, :cond_2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 148
    new-instance v8, Landroid/view/textclassifier/TextSelection$Builder;

    invoke-direct {v8, v5, v7}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    .line 149
    .local v8, "tsBuilder":Landroid/view/textclassifier/TextSelection$Builder;
    new-instance v9, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;

    .line 153
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 154
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12, v2}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v4, v1, v5, v7, v9}, Landroid/view/textclassifier/TextClassifierImplNative;->classifyText(Ljava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;

    move-result-object v9

    .line 156
    .local v9, "results":[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;
    array-length v10, v9

    .line 157
    .local v10, "size":I
    nop

    .local v6, "i":I
    :goto_1
    if-ge v6, v10, :cond_1

    .line 158
    aget-object v11, v9, v6

    invoke-virtual {v11}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v9, v6

    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v12

    invoke-virtual {v8, v11, v12}, Landroid/view/textclassifier/TextSelection$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;

    .line 157
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 160
    .end local v6    # "i":I
    :cond_1
    nop

    .line 161
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v11

    .line 160
    invoke-direct {p0, v1, v6, v11}, Landroid/view/textclassifier/TextClassifierImpl;->createId(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/view/textclassifier/TextSelection$Builder;->setId(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v6

    .line 162
    invoke-virtual {v6}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object v6

    .line 160
    return-object v6

    .line 165
    .end local v8    # "tsBuilder":Landroid/view/textclassifier/TextSelection$Builder;
    .end local v9    # "results":[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;
    .end local v10    # "size":I
    :cond_2
    const-string v6, "androidtc"

    const-string v8, "Got bad indices for input text. Ignoring result."

    invoke-static {v6, v8}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "rangeLength":I
    .end local v1    # "string":Ljava/lang/String;
    .end local v2    # "localesString":Ljava/lang/String;
    .end local v3    # "refTime":Ljava/time/ZonedDateTime;
    .end local v4    # "nativeImpl":Landroid/view/textclassifier/TextClassifierImplNative;
    .end local v5    # "start":I
    .end local v7    # "end":I
    :cond_3
    goto :goto_2

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "androidtc"

    const-string v2, "Error suggesting selection for text. No changes to selection suggested."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method
