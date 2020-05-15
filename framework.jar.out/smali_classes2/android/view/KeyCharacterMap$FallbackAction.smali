.class public final Landroid/view/KeyCharacterMap$FallbackAction;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyCharacterMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackAction"
.end annotation


# static fields
.field private static final MAX_RECYCLED:I = 0xa

.field private static sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


# instance fields
.field public keyCode:I

.field public metaState:I

.field private next:Landroid/view/KeyCharacterMap$FallbackAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 745
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    return-void
.end method

.method public static obtain()Landroid/view/KeyCharacterMap$FallbackAction;
    .locals 3

    .line 759
    sget-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 760
    :try_start_0
    sget-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    if-nez v1, :cond_0

    .line 761
    new-instance v1, Landroid/view/KeyCharacterMap$FallbackAction;

    invoke-direct {v1}, Landroid/view/KeyCharacterMap$FallbackAction;-><init>()V

    .local v1, "target":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_0

    .line 763
    .end local v1    # "target":Landroid/view/KeyCharacterMap$FallbackAction;
    :cond_0
    sget-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 764
    .restart local v1    # "target":Landroid/view/KeyCharacterMap$FallbackAction;
    iget-object v2, v1, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    sput-object v2, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 765
    sget v2, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    .line 766
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 768
    :goto_0
    monitor-exit v0

    move-object v0, v1

    .line 769
    .end local v1    # "target":Landroid/view/KeyCharacterMap$FallbackAction;
    .local v0, "target":Landroid/view/KeyCharacterMap$FallbackAction;
    return-object v0

    .line 768
    .end local v0    # "target":Landroid/view/KeyCharacterMap$FallbackAction;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .line 773
    sget-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_0
    sget v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 775
    sget-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    iput-object v1, p0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 776
    sput-object p0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 777
    sget v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    goto :goto_0

    .line 779
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 781
    :goto_0
    monitor-exit v0

    .line 782
    return-void

    .line 781
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
