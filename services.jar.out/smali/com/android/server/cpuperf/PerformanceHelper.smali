.class Lcom/android/server/cpuperf/PerformanceHelper;
.super Ljava/lang/Object;
.source "PerformanceHelper.java"


# static fields
.field private static final MAX_RESOURCES_PER_REQUEST:I = 0x3c

.field private static final NOT_FOUND:I = -0x2

.field private static final TAG:Ljava/lang/String; = "PerformanceHelper"

.field private static mAcquireFunc:Ljava/lang/reflect/Method;

.field private static mAcquireTouchFunc:Ljava/lang/reflect/Method;

.field private static final mCheck:Landroid/util/SparseIntArray;

.field private static final mCheckEnd:Landroid/util/SparseIntArray;

.field private static mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static mHandlerField:Ljava/lang/reflect/Field;

.field private static mIOPStart:Ljava/lang/reflect/Method;

.field private static mIOPStop:Ljava/lang/reflect/Method;

.field private static final mPairs:[[I

.field private static mPerf:Ljava/lang/Object;

.field private static mQPerformancePerf:Ljava/lang/Object;

.field private static mReleaseFunc:Ljava/lang/reflect/Method;

.field private static mReleaseHandlerFunc:Ljava/lang/reflect/Method;

.field private static perfClass:Ljava/lang/Class;


# instance fields
.field private mDumpDebugLog:Z

.field private mHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mCheck:Landroid/util/SparseIntArray;

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mCheckEnd:Landroid/util/SparseIntArray;

    .line 54
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v6, 0x5

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v6, 0x6

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v6, 0x7

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v6, 0x8

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v6, 0x9

    aput-object v2, v0, v6

    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mPairs:[[I

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mQPerformancePerf:Ljava/lang/Object;

    .line 62
    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlerField:Ljava/lang/reflect/Field;

    .line 64
    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mAcquireFunc:Ljava/lang/reflect/Method;

    .line 65
    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mReleaseFunc:Ljava/lang/reflect/Method;

    .line 66
    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    .line 67
    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    .line 68
    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mIOPStart:Ljava/lang/reflect/Method;

    .line 69
    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mIOPStop:Ljava/lang/reflect/Method;

    .line 70
    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 73
    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mPerf:Ljava/lang/Object;

    .line 79
    :try_start_0
    const-string v0, "android.util.BoostFramework"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->perfClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "PerformanceHelper"

    const-string/jumbo v6, "sBootPerfClazz Not available."

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    sget-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->perfClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 86
    :try_start_1
    sget-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->perfClass:Ljava/lang/Class;

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 87
    new-array v0, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v3

    const-class v2, [I

    aput-object v2, v0, v4

    .line 88
    .local v0, "argClasses":[Ljava/lang/Class;
    sget-object v2, Lcom/android/server/cpuperf/PerformanceHelper;->perfClass:Ljava/lang/Class;

    const-string/jumbo v6, "perfLockAcquire"

    invoke-virtual {v2, v6, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/cpuperf/PerformanceHelper;->mAcquireFunc:Ljava/lang/reflect/Method;

    .line 89
    const-string v2, "PerformanceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mAcquireFunc method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/cpuperf/PerformanceHelper;->mAcquireFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-array v2, v3, [Ljava/lang/Class;

    move-object v0, v2

    .line 92
    sget-object v2, Lcom/android/server/cpuperf/PerformanceHelper;->perfClass:Ljava/lang/Class;

    const-string/jumbo v6, "perfLockRelease"

    invoke-virtual {v2, v6, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/cpuperf/PerformanceHelper;->mReleaseFunc:Ljava/lang/reflect/Method;

    .line 93
    const-string v2, "PerformanceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mReleaseFunc method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/cpuperf/PerformanceHelper;->mReleaseFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-array v2, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v3

    move-object v0, v2

    .line 96
    sget-object v2, Lcom/android/server/cpuperf/PerformanceHelper;->perfClass:Ljava/lang/Class;

    const-string/jumbo v6, "perfLockReleaseHandler"

    invoke-virtual {v2, v6, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/cpuperf/PerformanceHelper;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    .line 97
    const-string v2, "PerformanceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mReleaseHandlerFunc method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/cpuperf/PerformanceHelper;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-array v2, v5, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v1

    move-object v0, v2

    .line 101
    sget-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->perfClass:Ljava/lang/Class;

    const-string/jumbo v2, "perfIOPrefetchStart"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mIOPStart:Ljava/lang/reflect/Method;

    .line 102
    const-string v1, "PerformanceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIOPStart method = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/cpuperf/PerformanceHelper;->mIOPStart:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-array v1, v3, [Ljava/lang/Class;

    move-object v0, v1

    .line 105
    sget-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->perfClass:Ljava/lang/Class;

    const-string/jumbo v2, "perfIOPrefetchStop"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mIOPStop:Ljava/lang/reflect/Method;

    .line 106
    const-string v1, "PerformanceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIOPStop method = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/cpuperf/PerformanceHelper;->mIOPStop:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .end local v0    # "argClasses":[Ljava/lang/Class;
    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PerformanceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BoostFramework() : Exception_1 = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mConstructor:Ljava/lang/reflect/Constructor;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mPerf:Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->perfClass:Ljava/lang/Class;

    const-string/jumbo v1, "mPerf"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 116
    .local v0, "mQPerformancePerfField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 117
    sget-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mPerf:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mQPerformancePerf:Ljava/lang/Object;

    .line 118
    sget-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mQPerformancePerf:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mHandle"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlerField:Ljava/lang/reflect/Field;

    .line 119
    sget-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlerField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 124
    .end local v0    # "mQPerformancePerfField":Ljava/lang/reflect/Field;
    :cond_1
    goto :goto_2

    .line 122
    :catch_2
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PerformanceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BoostFramework() : Exception_2 = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    move v0, v3

    .line 127
    .local v0, "i":I
    :goto_3
    sget-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mPairs:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 128
    sget-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mCheck:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/android/server/cpuperf/PerformanceHelper;->mPairs:[[I

    aget-object v2, v2, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 129
    sget-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mCheckEnd:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/android/server/cpuperf/PerformanceHelper;->mPairs:[[I

    aget-object v2, v2, v0

    aget v2, v2, v4

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 131
    .end local v0    # "i":I
    :cond_2
    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x40800100    # 4.000122f
        0x40804100
    .end array-data

    :array_1
    .array-data 4
        0x40800110    # 4.0001297f
        0x40804110
    .end array-data

    :array_2
    .array-data 4
        0x40800120    # 4.0001373f
        0x40804120
    .end array-data

    :array_3
    .array-data 4
        0x40800130    # 4.000145f
        0x40804130
    .end array-data

    :array_4
    .array-data 4
        0x40800000    # 4.0f
        0x40804000    # 4.0078125f
    .end array-data

    :array_5
    .array-data 4
        0x40800010    # 4.0000076f
        0x40804010
    .end array-data

    :array_6
    .array-data 4
        0x40800020    # 4.0000153f
        0x40804020
    .end array-data

    :array_7
    .array-data 4
        0x40800200    # 4.000244f
        0x40804200
    .end array-data

    :array_8
    .array-data 4
        0x40c20000    # 6.0625f
        0x40c1c000    # 6.0546875f
    .end array-data

    :array_9
    .array-data 4
        0x40c20200
        0x40c1c200
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mDumpDebugLog:Z

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlers:Ljava/util/ArrayList;

    return-void
.end method

.method private checkAndSplitParameter([I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "list"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 150
    if-eqz p1, :cond_9

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 153
    :cond_0
    sget-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mCheckEnd:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 154
    .local v0, "thisCheckEnd":Landroid/util/SparseIntArray;
    array-length v1, p1

    new-array v1, v1, [Z

    .line 155
    .local v1, "shouldCheck":[Z
    const/4 v2, 0x0

    move v3, v2

    .line 155
    .local v3, "i":I
    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    .line 156
    sget-object v4, Lcom/android/server/cpuperf/PerformanceHelper;->mCheck:Landroid/util/SparseIntArray;

    aget v6, p1, v3

    const/4 v7, -0x2

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 157
    aput-boolean v5, v1, v3

    goto :goto_1

    .line 158
    :cond_1
    aget v4, p1, v3

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 159
    aget v4, p1, v3

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    aput-boolean v2, v1, v3

    goto :goto_1

    .line 162
    :cond_2
    aput-boolean v2, v1, v3

    .line 155
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 165
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v3, "fences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 167
    .local v4, "lastFence":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    nop

    .line 168
    .local v2, "i":I
    :goto_2
    array-length v6, p1

    if-ge v2, v6, :cond_8

    .line 169
    aget-boolean v6, v1, v2

    if-eqz v6, :cond_5

    .line 170
    sget-object v6, Lcom/android/server/cpuperf/PerformanceHelper;->mPairs:[[I

    sget-object v7, Lcom/android/server/cpuperf/PerformanceHelper;->mCheck:Landroid/util/SparseIntArray;

    aget v8, p1, v2

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    aget-object v6, v6, v7

    aget v6, v6, v5

    .line 171
    .local v6, "endOpcode":I
    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 172
    .local v7, "end":I
    const/4 v8, -0x1

    if-le v7, v8, :cond_5

    add-int/lit8 v8, v4, 0x3c

    if-lt v7, v8, :cond_5

    .line 174
    add-int/lit8 v8, v2, 0x3c

    if-lt v7, v8, :cond_4

    .line 175
    const-string v8, "PerformanceHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t split: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, p1, v2

    .line 176
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, p1, v7

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 175
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 178
    :cond_4
    move v4, v2

    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v6    # "endOpcode":I
    .end local v7    # "end":I
    :cond_5
    :goto_3
    sub-int v6, v2, v4

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_6

    .line 184
    move v4, v2

    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 186
    :cond_6
    sub-int v6, v2, v4

    if-le v6, v7, :cond_7

    .line 187
    const-string v6, "PerformanceHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wrong index: i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " opcode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, p1, v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_2

    .line 190
    .end local v2    # "i":I
    :cond_8
    return-object v3

    .line 151
    .end local v0    # "thisCheckEnd":Landroid/util/SparseIntArray;
    .end local v1    # "shouldCheck":[Z
    .end local v3    # "fences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "lastFence":I
    :cond_9
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isAvailable()Z
    .locals 2

    .line 135
    sget-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mAcquireFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mReleaseFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mIOPStart:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mIOPStop:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "PerformanceHelper"

    const-string v1, "Boostframework isAvailable() : Available."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "Boostframework: Not Available."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method private toIntArray(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 338
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 339
    .local v0, "res":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 340
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pid"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "code_path"    # Ljava/lang/String;

    .line 314
    const/4 v0, -0x1

    .line 316
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mIOPStart:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/server/cpuperf/PerformanceHelper;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 317
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 320
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public perfIOPrefetchStop()I
    .locals 5

    .line 327
    const/4 v0, -0x1

    .line 329
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mIOPStop:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/server/cpuperf/PerformanceHelper;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 330
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 333
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public varargs perfLockAcquire(I[I)[I
    .locals 13
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, "ret":[I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlers:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/cpuperf/PerformanceHelper;->checkAndSplitParameter([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 210
    .local v2, "fences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_3

    .line 211
    const/4 v3, 0x0

    move v4, v3

    .line 211
    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 212
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 213
    .local v5, "start":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_0
    array-length v6, p2

    .line 214
    .local v6, "end":I
    :goto_1
    invoke-static {p2, v5, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v8

    .line 215
    .local v8, "newList":[I
    sget-object v9, Lcom/android/server/cpuperf/PerformanceHelper;->mAcquireFunc:Ljava/lang/reflect/Method;

    sget-object v10, Lcom/android/server/cpuperf/PerformanceHelper;->mPerf:Ljava/lang/Object;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    aput-object v8, v11, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 216
    .local v7, "retVal":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/server/cpuperf/PerformanceHelper;->resetHanle()V

    .line 217
    iget-object v9, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlers:Ljava/util/ArrayList;

    move-object v10, v7

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-boolean v9, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mDumpDebugLog:Z

    if-eqz v9, :cond_1

    .line 219
    const-string v9, "PerformanceHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "perfLockAcquire: add handler: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "retVal":Ljava/lang/Object;
    .end local v8    # "newList":[I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 222
    .end local v4    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlers:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/cpuperf/PerformanceHelper;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v3

    move-object v0, v3

    .line 224
    .end local v2    # "fences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    monitor-exit v1

    .line 227
    goto :goto_2

    .line 224
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public varargs perfLockAcquireDebug(I[I)[I
    .locals 13
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "ret":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v1, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/cpuperf/PerformanceHelper;->checkAndSplitParameter([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 258
    .local v2, "fences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    .line 259
    const/4 v3, 0x0

    move v4, v3

    .line 259
    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 260
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 261
    .local v5, "start":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_0
    array-length v6, p2

    .line 262
    .local v6, "end":I
    :goto_1
    invoke-static {p2, v5, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v8

    .line 263
    .local v8, "newList":[I
    sget-object v9, Lcom/android/server/cpuperf/PerformanceHelper;->mAcquireFunc:Ljava/lang/reflect/Method;

    sget-object v10, Lcom/android/server/cpuperf/PerformanceHelper;->mPerf:Ljava/lang/Object;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    aput-object v8, v11, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 264
    .local v7, "retVal":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/server/cpuperf/PerformanceHelper;->resetHanle()V

    .line 265
    move-object v9, v7

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const-string v9, "PerformanceHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "perfLockAcquireDebug: add handler: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "retVal":Ljava/lang/Object;
    .end local v8    # "newList":[I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    .end local v4    # "i":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/PerformanceHelper;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 272
    .end local v2    # "fences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    goto :goto_2

    .line 270
    :catch_0
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public varargs perfLockAcquireTouch(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;I[I)I
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "duration"    # I
    .param p4, "list"    # [I

    .line 301
    const/4 v0, -0x1

    .line 303
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/server/cpuperf/PerformanceHelper;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 304
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 307
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public perfLockRelease()[I
    .locals 8

    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "ret":[I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlers:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    move-object v0, v2

    .line 237
    const/4 v2, 0x0

    move v3, v2

    .line 237
    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 238
    sget-object v4, Lcom/android/server/cpuperf/PerformanceHelper;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/cpuperf/PerformanceHelper;->mPerf:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 239
    .local v4, "retVal":Ljava/lang/Object;
    iget-boolean v5, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mDumpDebugLog:Z

    if-eqz v5, :cond_0

    .line 240
    const-string v5, "PerformanceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "perfLockRelease: release handler: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " return: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v3

    .line 237
    .end local v4    # "retVal":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .end local v3    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 245
    monitor-exit v1

    .line 248
    goto :goto_1

    .line 245
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public varargs perfLockReleaseDebug([I)[I
    .locals 7
    .param p1, "list"    # [I

    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "ret":[I
    :try_start_0
    array-length v1, p1

    new-array v1, v1, [I

    move-object v0, v1

    .line 286
    const/4 v1, 0x0

    move v2, v1

    .line 286
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 287
    sget-object v3, Lcom/android/server/cpuperf/PerformanceHelper;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/android/server/cpuperf/PerformanceHelper;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget v6, p1, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 288
    .local v3, "retVal":Ljava/lang/Object;
    const-string v4, "PerformanceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfLockReleaseDebug: release handler: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " return: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 286
    .end local v3    # "retVal":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/cpuperf/PerformanceHelper;->resetHanle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    goto :goto_1

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public resetHanle()V
    .locals 4

    .line 195
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "PerformanceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetHanle: current handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlerField:Ljava/lang/reflect/Field;

    sget-object v3, Lcom/android/server/cpuperf/PerformanceHelper;->mQPerformancePerf:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    sget-object v0, Lcom/android/server/cpuperf/PerformanceHelper;->mHandlerField:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/android/server/cpuperf/PerformanceHelper;->mQPerformancePerf:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PerformanceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 278
    iput-boolean p1, p0, Lcom/android/server/cpuperf/PerformanceHelper;->mDumpDebugLog:Z

    .line 279
    return-void
.end method
