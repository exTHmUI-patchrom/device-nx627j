.class public final Lcom/android/internal/os/SomeArgs;
.super Ljava/lang/Object;
.source "SomeArgs.java"


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field static final WAIT_FINISHED:I = 0x2

.field static final WAIT_NONE:I = 0x0

.field static final WAIT_WAITING:I = 0x1

.field private static sPool:Lcom/android/internal/os/SomeArgs;

.field private static sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public arg3:Ljava/lang/Object;

.field public arg4:Ljava/lang/Object;

.field public arg5:Ljava/lang/Object;

.field public arg6:Ljava/lang/Object;

.field public arg7:Ljava/lang/Object;

.field public arg8:Ljava/lang/Object;

.field public arg9:Ljava/lang/Object;

.field public argi1:I

.field public argi2:I

.field public argi3:I

.field public argi4:I

.field public argi5:I

.field public argi6:I

.field private mInPool:Z

.field private mNext:Lcom/android/internal/os/SomeArgs;

.field mWaitState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    .line 61
    return-void
.end method

.method private clear()V
    .locals 1

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 108
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 109
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 110
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 111
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 112
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 113
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 115
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 116
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 117
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 118
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 119
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 120
    return-void
.end method

.method public static obtain()Lcom/android/internal/os/SomeArgs;
    .locals 3

    .line 64
    sget-object v0, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    sget v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    if-lez v1, :cond_0

    .line 66
    sget-object v1, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 67
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    sget-object v2, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    sput-object v2, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 68
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    .line 69
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    .line 70
    sget v2, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    .line 71
    monitor-exit v0

    return-object v1

    .line 73
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    new-instance v1, Lcom/android/internal/os/SomeArgs;

    invoke-direct {v1}, Lcom/android/internal/os/SomeArgs;-><init>()V

    monitor-exit v0

    return-object v1

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public complete()V
    .locals 2

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not waiting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycle()V
    .locals 3

    .line 89
    iget-boolean v0, p0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    if-nez v0, :cond_2

    .line 92
    iget v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    if-eqz v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    sget-object v0, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/SomeArgs;->clear()V

    .line 97
    sget v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 98
    sget-object v1, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    iput-object v1, p0, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    .line 100
    sput-object p0, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 101
    sget v2, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    add-int/2addr v2, v1

    sput v2, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    .line 103
    :cond_1
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already recycled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
