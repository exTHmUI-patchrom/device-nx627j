.class final Landroid/content/res/XmlBlock;
.super Ljava/lang/Object;
.source "XmlBlock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/XmlBlock$Parser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mNative:J

.field private mOpen:Z

.field private mOpenCount:I

.field final mStrings:Landroid/content/res/StringBlock;


# direct methods
.method constructor <init>(Landroid/content/res/AssetManager;J)V
    .locals 4
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "xmlBlock"    # J

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 493
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 484
    iput-object p1, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    .line 485
    iput-wide p2, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 486
    new-instance v0, Landroid/content/res/StringBlock;

    invoke-static {p2, p3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    .line 487
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 493
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    .line 42
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 43
    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    .line 44
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 493
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    .line 48
    invoke-static {p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 49
    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v1, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v1, v2}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    .line 50
    return-void
.end method

.method static synthetic access$008(Landroid/content/res/XmlBlock;)I
    .locals 2
    .param p0, "x0"    # Landroid/content/res/XmlBlock;

    .line 37
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    return v0
.end method

.method static synthetic access$100(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 37
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetText(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(JLjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;

    .line 37
    invoke-static {p0, p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(JI)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 37
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeResource(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 37
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetIdAttribute(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 37
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetClassAttribute(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 37
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetStyleAttribute(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 37
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeDestroyParseState(J)V

    return-void
.end method

.method static synthetic access$1600(Landroid/content/res/XmlBlock;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/res/XmlBlock;

    .line 37
    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    return-void
.end method

.method static synthetic access$200(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 37
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetLineNumber(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 37
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetNamespace(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(JI)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 37
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeNamespace(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(JI)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 37
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeName(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 37
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeCount(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(JI)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 37
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeStringValue(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(JI)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 37
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(JI)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 37
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I

    move-result v0

    return v0
.end method

.method private decOpenCountLocked()V
    .locals 2

    .line 63
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 64
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    if-nez v0, :cond_0

    .line 65
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeDestroy(J)V

    .line 66
    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->xmlBlockGone(I)V

    .line 70
    :cond_0
    return-void
.end method

.method private static final native nativeCreate([BII)J
.end method

.method private static final native nativeCreateParseState(J)J
.end method

.method private static final native nativeDestroy(J)V
.end method

.method private static final native nativeDestroyParseState(J)V
.end method

.method private static final native nativeGetAttributeCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeData(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeDataType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeName(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeNamespace(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeResource(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeStringValue(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetClassAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetIdAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetLineNumber(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static final native nativeGetName(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetNamespace(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetStringBlock(J)J
.end method

.method private static final native nativeGetStyleAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetText(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static final native nativeNext(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 57
    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    .line 59
    :cond_0
    monitor-exit p0

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Landroid/content/res/XmlBlock;->close()V

    .line 475
    return-void
.end method

.method public newParser()Landroid/content/res/XmlResourceParser;
    .locals 4

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Landroid/content/res/XmlBlock$Parser;

    iget-wide v1, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v1, v2}, Landroid/content/res/XmlBlock;->nativeCreateParseState(J)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2, p0}, Landroid/content/res/XmlBlock$Parser;-><init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V

    monitor-exit p0

    return-object v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
