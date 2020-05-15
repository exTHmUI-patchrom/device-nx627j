.class public Lcom/android/server/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;,
        Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;,
        Lcom/android/server/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/TextServicesManagerService$SessionRequest;,
        Lcom/android/server/TextServicesManagerService$TextServicesMonitor;,
        Lcom/android/server/TextServicesManagerService$Lifecycle;,
        Lcom/android/server/TextServicesManagerService$TextServicesData;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

.field private final mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/TextServicesManagerService$TextServicesData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 325
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 326
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 327
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    .line 328
    new-instance v0, Lcom/android/internal/textservice/LazyIntToIntMap;

    new-instance v1, Lcom/android/server/-$$Lambda$TextServicesManagerService$Gx5nx59gL-Y47MWUiJn5TqC2DLs;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$TextServicesManagerService$Gx5nx59gL-Y47MWUiJn5TqC2DLs;-><init>(Lcom/android/server/TextServicesManagerService;)V

    invoke-direct {v0, v1}, Lcom/android/internal/textservice/LazyIntToIntMap;-><init>(Ljava/util/function/IntUnaryOperator;)V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    .line 342
    new-instance v0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    .line 343
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 344
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .line 76
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/TextServicesManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .line 76
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;
    .param p1, "x1"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "x2"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .line 76
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 416
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 417
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method private findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 17
    .param p1, "prefPackage"    # Ljava/lang/String;
    .param p2, "tsd"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-object/from16 v0, p1

    .line 435
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v1, "spellCheckerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-static/range {p2 .. p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1500(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerInfo;

    .line 437
    .local v3, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 438
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v3    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_0
    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 443
    .local v2, "spellCheckersCount":I
    if-nez v2, :cond_2

    .line 444
    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "no available spell checker services found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v3, 0x0

    return-object v3

    .line 447
    :cond_2
    if-eqz v0, :cond_4

    .line 448
    const/4 v5, 0x0

    .line 448
    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 449
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textservice/SpellCheckerInfo;

    .line 450
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 454
    return-object v6

    .line 448
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 462
    .end local v5    # "i":I
    :cond_4
    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 463
    .local v6, "systemLocal":Ljava/util/Locale;
    nop

    .line 464
    invoke-static {v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object v7

    .line 469
    .local v7, "suitableLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 470
    .local v8, "localeCount":I
    const/4 v9, 0x0

    .line 470
    .local v9, "localeIndex":I
    :goto_2
    if-ge v9, v8, :cond_8

    .line 471
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Locale;

    .line 472
    .local v10, "locale":Ljava/util/Locale;
    const/4 v11, 0x0

    .line 472
    .local v11, "spellCheckersIndex":I
    :goto_3
    if-ge v11, v2, :cond_7

    .line 474
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/textservice/SpellCheckerInfo;

    .line 475
    .local v12, "info":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v12}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v13

    .line 476
    .local v13, "subtypeCount":I
    const/4 v14, 0x0

    .line 476
    .local v14, "subtypeIndex":I
    :goto_4
    if-ge v14, v13, :cond_6

    .line 477
    invoke-virtual {v12, v14}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v15

    .line 478
    .local v15, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    nop

    .line 479
    invoke-virtual {v15}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 480
    .local v3, "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v10, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 484
    return-object v12

    .line 476
    .end local v3    # "subtypeLocale":Ljava/util/Locale;
    .end local v15    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 473
    .end local v12    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v13    # "subtypeCount":I
    .end local v14    # "subtypeIndex":I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 470
    .end local v10    # "locale":Ljava/util/Locale;
    .end local v11    # "spellCheckersIndex":I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 490
    .end local v9    # "localeIndex":I
    :cond_8
    if-le v2, v4, :cond_9

    .line 491
    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "more than one spell checker service found, picking first"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerInfo;

    return-object v3
.end method

.method private getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;
    .locals 6
    .param p1, "callingUserId"    # I

    .line 776
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/textservice/LazyIntToIntMap;->get(I)I

    move-result v0

    .line 777
    .local v0, "spellCheckerOwnerUserId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 779
    .local v1, "data":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-eq v0, p1, :cond_2

    .line 781
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 782
    return-object v2

    .line 784
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 785
    .local v3, "info":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v3, :cond_1

    .line 786
    return-object v2

    .line 788
    :cond_1
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 789
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    .line 792
    return-object v2

    .line 796
    .end local v3    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    return-object v1
.end method

.method private initializeInternalStateLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 349
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    .line 350
    invoke-virtual {v0, p1}, Lcom/android/internal/textservice/LazyIntToIntMap;->get(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 351
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 355
    .local v0, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v0, :cond_1

    .line 356
    new-instance v1, Lcom/android/server/TextServicesManagerService$TextServicesData;

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;-><init>(ILandroid/content/Context;)V

    move-object v0, v1

    .line 357
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    :cond_1
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$900(Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    .line 361
    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 362
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v1, :cond_2

    .line 363
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 367
    invoke-direct {p0, v1, v0}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    .line 369
    :cond_2
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/TextServicesManagerService;I)I
    .locals 4
    .param p1, "callingUserId"    # I

    .line 330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 332
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 333
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 335
    :cond_0
    move v3, p1

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 333
    return v3

    .line 335
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V
    .locals 4
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsd"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 717
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 721
    .local v0, "sciId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 723
    .local v1, "ident":J
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    nop

    .line 727
    return-void

    .line 725
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .locals 5
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsd"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 651
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "sciId":Ljava/lang/String;
    new-instance v1, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    .line 653
    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 654
    .local v1, "connection":Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.textservice.SpellCheckerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 659
    nop

    .line 660
    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1700(Lcom/android/server/TextServicesManagerService$TextServicesData;)I

    move-result v3

    .line 659
    const v4, 0x800001

    invoke-direct {p0, v2, v1, v4, v3}, Lcom/android/server/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 661
    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get a spell checker service."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v3, 0x0

    return-object v3

    .line 664
    :cond_0
    new-instance v3, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-direct {v3, p0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)V

    .line 666
    .local v3, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    return-object v3
.end method

.method private unbindServiceLocked(Lcom/android/server/TextServicesManagerService$TextServicesData;)V
    .locals 3
    .param p1, "tsd"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 425
    invoke-static {p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    .line 426
    .local v0, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 427
    .local v2, "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 428
    .end local v2    # "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 430
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 733
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    array-length v0, p3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    aget-object v0, p3, v1

    const-string v3, "-a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 745
    :cond_1
    array-length v0, p3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    aget-object v0, p3, v1

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 749
    :cond_2
    aget-object v0, p3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 750
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 751
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_3

    .line 752
    const-string v2, "Non-existent user."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    return-void

    .line 755
    :cond_3
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 756
    .local v2, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_4

    .line 757
    const-string v3, "User needs to unlock first."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    return-void

    .line 760
    :cond_4
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 761
    :try_start_0
    const-string v4, "Current Text Services Manager state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    invoke-static {v2, p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1800(Lcom/android/server/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 764
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 746
    .end local v0    # "userId":I
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    :cond_5
    :goto_0
    const-string v0, "Invalid arguments to text services."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    return-void

    .line 735
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 736
    :try_start_1
    const-string v2, "Current Text Services Manager state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    const-string v2, "  Users:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 739
    .local v2, "numOfUsers":I
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_7

    .line 740
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 741
    .local v3, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    invoke-static {v3, p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1800(Lcom/android/server/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 739
    .end local v3    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 743
    .end local v1    # "i":I
    .end local v2    # "numOfUsers":I
    :cond_7
    monitor-exit v0

    .line 767
    :goto_3
    return-void

    .line 743
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 695
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 697
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 698
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    .line 699
    .local v2, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    .line 701
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v3, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    nop

    .line 703
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v4

    .line 704
    .local v4, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 705
    .local v6, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-nez v6, :cond_1

    .end local v6    # "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    goto :goto_0

    .line 707
    .restart local v6    # "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    :cond_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    .end local v6    # "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    goto :goto_0

    .line 709
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 710
    .local v5, "removeSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 711
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v7, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 710
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 713
    .end local v2    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    .end local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v4    # "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v5    # "removeSize":I
    .end local v6    # "i":I
    :cond_3
    monitor-exit v1

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 4
    .param p1, "locale"    # Ljava/lang/String;

    .line 500
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 501
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    .line 503
    .local v2, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 505
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 506
    .end local v2    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 11
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "allowImplicitlySelectedSubtype"    # Z

    .line 517
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 519
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    .line 521
    .local v2, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1

    return-object v3

    .line 523
    :cond_0
    nop

    .line 524
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getSelectedSpellCheckerSubtype(I)I

    move-result v5

    .line 528
    .local v5, "subtypeHashCode":I
    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v6

    .line 529
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v7, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .end local v2    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    move-object v2, v7

    .line 530
    .local v2, "systemLocale":Ljava/util/Locale;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 537
    :cond_1
    if-nez v5, :cond_2

    if-nez p2, :cond_2

    .line 539
    return-object v3

    .line 541
    :cond_2
    const/4 v1, 0x0

    .line 542
    .local v1, "candidateLocale":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 544
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 545
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_3

    .line 546
    nop

    .line 547
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    .line 548
    .local v7, "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v7, :cond_3

    .line 549
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    .line 550
    .local v8, "localeString":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 552
    move-object v1, v8

    .line 556
    .end local v7    # "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "localeString":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    .line 558
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    const/4 v3, 0x0

    .line 562
    .local v3, "candidate":Landroid/view/textservice/SpellCheckerSubtype;
    nop

    .local v4, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v7

    if-ge v4, v7, :cond_9

    .line 563
    invoke-virtual {v6, v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 564
    .local v7, "scs":Landroid/view/textservice/SpellCheckerSubtype;
    if-nez v5, :cond_7

    .line 565
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    .line 566
    .local v8, "scsLocale":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 567
    return-object v7

    .line 568
    :cond_5
    if-nez v3, :cond_6

    .line 569
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v10, :cond_6

    .line 570
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 572
    move-object v3, v7

    .line 575
    .end local v8    # "scsLocale":Ljava/lang/String;
    :cond_6
    goto :goto_1

    :cond_7
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v8

    if-ne v8, v5, :cond_8

    .line 581
    return-object v7

    .line 562
    .end local v7    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_8
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 587
    .end local v4    # "i":I
    :cond_9
    return-object v3

    .line 535
    .end local v1    # "candidateLocale":Ljava/lang/String;
    .end local v3    # "candidate":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_a
    :goto_2
    return-object v3

    .line 530
    .end local v2    # "systemLocale":Ljava/util/Locale;
    .end local v5    # "subtypeHashCode":I
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 5

    .line 672
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 674
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 675
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    .line 676
    .local v2, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 678
    :cond_0
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1500(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object v3

    .line 686
    .local v3, "spellCheckerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/textservice/SpellCheckerInfo;

    monitor-exit v1

    return-object v4

    .line 687
    .end local v2    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    .end local v3    # "spellCheckerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .locals 15
    .param p1, "sciId"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p5, "bundle"    # Landroid/os/Bundle;

    move-object v1, p0

    move-object/from16 v2, p1

    .line 594
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    if-nez p4, :cond_0

    goto/16 :goto_0

    .line 598
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 600
    .local v9, "callingUserId":I
    iget-object v10, v1, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 601
    :try_start_0
    invoke-direct {v1, v9}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v0

    move-object v11, v0

    .line 602
    .local v11, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v11, :cond_1

    monitor-exit v10

    return-void

    .line 604
    :cond_1
    invoke-static {v11}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    move-object v12, v0

    .line 605
    .local v12, "spellCheckerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 606
    monitor-exit v10

    return-void

    .line 608
    :cond_2
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerInfo;

    move-object v13, v0

    .line 609
    .local v13, "sci":Landroid/view/textservice/SpellCheckerInfo;
    nop

    .line 610
    invoke-static {v11}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    move-object v8, v0

    .line 611
    .local v8, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-object v3, v0

    .line 612
    .local v3, "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 613
    .local v4, "uid":I
    if-nez v3, :cond_3

    .line 614
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 616
    .local v5, "ident":J
    :try_start_1
    invoke-direct {v1, v13, v11}, Lcom/android/server/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    .line 618
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    nop

    .line 620
    if-nez v3, :cond_3

    .line 622
    monitor-exit v10

    return-void

    .line 618
    :catchall_0
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v7, v0

    throw v7

    .line 628
    .end local v5    # "ident":J
    :cond_3
    move-object v0, v3

    .end local v3    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .local v0, "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    new-instance v7, Lcom/android/server/TextServicesManagerService$SessionRequest;

    move-object v3, v7

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v1, v7

    move-object/from16 v7, p4

    move-object v14, v8

    move-object/from16 v8, p5

    .end local v8    # "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .local v14, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-direct/range {v3 .. v8}, Lcom/android/server/TextServicesManagerService$SessionRequest;-><init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->getISpellCheckerSessionOrQueueLocked(Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    .line 630
    .end local v0    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v4    # "uid":I
    .end local v11    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    .end local v12    # "spellCheckerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    .end local v13    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v14    # "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    monitor-exit v10

    .line 631
    return-void

    .line 630
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 595
    .end local v9    # "callingUserId":I
    :cond_4
    :goto_0
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v1, "getSpellCheckerService: Invalid input."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void
.end method

.method public isSpellCheckerEnabled()Z
    .locals 4

    .line 635
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 637
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 638
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    .line 639
    .local v2, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    monitor-exit v1

    return v3

    .line 641
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->isSpellCheckerEnabled()Z

    move-result v3

    monitor-exit v1

    return v3

    .line 642
    .end local v2    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onStopUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 305
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/textservice/LazyIntToIntMap;->delete(I)V

    .line 310
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 311
    .local v1, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 313
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/TextServicesManagerService;->unbindServiceLocked(Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    .line 314
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 315
    .end local v1    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onUnlockUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 319
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->initializeInternalStateLocked(I)V

    .line 322
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
