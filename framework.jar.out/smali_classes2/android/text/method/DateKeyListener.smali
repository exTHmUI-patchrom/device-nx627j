.class public Landroid/text/method/DateKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DateKeyListener.java"


# static fields
.field public static final CHARACTERS:[C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SKELETONS:[Ljava/lang/String;

.field private static final SYMBOLS_TO_IGNORE:Ljava/lang/String; = "yMLd"

.field private static final sInstanceCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "Landroid/text/method/DateKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mCharacters:[C

.field private final mNeedsAdvancedInput:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    const-string/jumbo v0, "yMd"

    const-string/jumbo v1, "yM"

    const-string v2, "Md"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/method/DateKeyListener;->SKELETONS:[Ljava/lang/String;

    .line 117
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DateKeyListener;->sLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DateKeyListener;->sInstanceCache:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2fs
        0x2ds
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/method/DateKeyListener;-><init>(Ljava/util/Locale;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 65
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 69
    .local v0, "chars":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Character;>;"
    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/text/method/DateKeyListener;->SKELETONS:[Ljava/lang/String;

    const-string/jumbo v4, "yMLd"

    .line 70
    invoke-static {v0, p1, v1, v4}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeletons(Ljava/util/Collection;Ljava/util/Locale;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 72
    .local v1, "success":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 73
    invoke-static {v0}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object v2

    iput-object v2, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    .line 74
    sget-object v2, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    iget-object v4, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    invoke-static {v2, v4}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result v2

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Landroid/text/method/DateKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_1

    .line 76
    :cond_1
    sget-object v3, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    iput-object v3, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    .line 77
    iput-boolean v2, p0, Landroid/text/method/DateKeyListener;->mNeedsAdvancedInput:Z

    .line 79
    :goto_1
    return-void
.end method

.method public static getInstance()Landroid/text/method/DateKeyListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/method/DateKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 96
    sget-object v0, Landroid/text/method/DateKeyListener;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Landroid/text/method/DateKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/method/DateKeyListener;

    .line 98
    .local v1, "instance":Landroid/text/method/DateKeyListener;
    if-nez v1, :cond_0

    .line 99
    new-instance v2, Landroid/text/method/DateKeyListener;

    invoke-direct {v2, p0}, Landroid/text/method/DateKeyListener;-><init>(Ljava/util/Locale;)V

    move-object v1, v2

    .line 100
    sget-object v2, Landroid/text/method/DateKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    monitor-exit v0

    move-object v0, v1

    .line 103
    .end local v1    # "instance":Landroid/text/method/DateKeyListener;
    .local v0, "instance":Landroid/text/method/DateKeyListener;
    return-object v0

    .line 102
    .end local v0    # "instance":Landroid/text/method/DateKeyListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .line 51
    iget-object v0, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .line 41
    iget-boolean v0, p0, Landroid/text/method/DateKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    const/16 v0, 0x14

    return v0
.end method
