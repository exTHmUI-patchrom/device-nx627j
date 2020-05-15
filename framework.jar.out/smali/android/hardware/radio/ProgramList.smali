.class public final Landroid/hardware/radio/ProgramList;
.super Ljava/lang/Object;
.source "ProgramList.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ProgramList$Chunk;,
        Landroid/hardware/radio/ProgramList$Filter;,
        Landroid/hardware/radio/ProgramList$OnCloseListener;,
        Landroid/hardware/radio/ProgramList$OnCompleteListener;,
        Landroid/hardware/radio/ProgramList$ListCallback;
    }
.end annotation


# instance fields
.field private mIsClosed:Z

.field private mIsComplete:Z

.field private final mListCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$ListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOnCloseListener:Landroid/hardware/radio/ProgramList$OnCloseListener;

.field private final mOnCompleteListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$OnCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrograms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/ProgramList;->mListCallbacks:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/ProgramList;->mOnCompleteListeners:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    .line 51
    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList;->mIsComplete:Z

    .line 53
    return-void
.end method

.method static synthetic lambda$addOnCompleteListener$0(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "listener"    # Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/hardware/radio/-$$Lambda$1DA3e7WM2G0cVcFyFUhdDG0CYnw;

    invoke-direct {v0, p1}, Landroid/hardware/radio/-$$Lambda$1DA3e7WM2G0cVcFyFUhdDG0CYnw;-><init>(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$apply$1(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .locals 0
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 183
    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramList;->removeLocked(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method

.method public static synthetic lambda$apply$2(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .locals 0
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 186
    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramList;->removeLocked(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method

.method public static synthetic lambda$apply$3(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 187
    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramList;->putLocked(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method static synthetic lambda$apply$4(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .locals 0
    .param p0, "cb"    # Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 191
    invoke-interface {p0}, Landroid/hardware/radio/ProgramList$OnCompleteListener;->onComplete()V

    return-void
.end method

.method static synthetic lambda$putLocked$5(Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramList$ListCallback;)V
    .locals 0
    .param p0, "sel"    # Landroid/hardware/radio/ProgramSelector$Identifier;
    .param p1, "cb"    # Landroid/hardware/radio/ProgramList$ListCallback;

    .line 200
    invoke-virtual {p1, p0}, Landroid/hardware/radio/ProgramList$ListCallback;->onItemChanged(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method

.method static synthetic lambda$removeLocked$6(Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramList$ListCallback;)V
    .locals 0
    .param p0, "sel"    # Landroid/hardware/radio/ProgramSelector$Identifier;
    .param p1, "cb"    # Landroid/hardware/radio/ProgramList$ListCallback;

    .line 207
    invoke-virtual {p1, p0}, Landroid/hardware/radio/ProgramList$ListCallback;->onItemRemoved(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method

.method private putLocked(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 4
    .param p1, "value"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 197
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    .line 198
    .local v0, "key":Landroid/hardware/radio/ProgramSelector$Identifier;
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    .line 200
    .local v1, "sel":Landroid/hardware/radio/ProgramSelector$Identifier;
    iget-object v2, p0, Landroid/hardware/radio/ProgramList;->mListCallbacks:Ljava/util/List;

    new-instance v3, Landroid/hardware/radio/-$$Lambda$ProgramList$fDnoTVk5UB7qTfD9S7SYPcadYn0;

    invoke-direct {v3, v1}, Landroid/hardware/radio/-$$Lambda$ProgramList$fDnoTVk5UB7qTfD9S7SYPcadYn0;-><init>(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 201
    return-void
.end method

.method private removeLocked(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .locals 4
    .param p1, "key"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 204
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 205
    .local v0, "removed":Landroid/hardware/radio/RadioManager$ProgramInfo;
    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    .line 207
    .local v1, "sel":Landroid/hardware/radio/ProgramSelector$Identifier;
    iget-object v2, p0, Landroid/hardware/radio/ProgramList;->mListCallbacks:Ljava/util/List;

    new-instance v3, Landroid/hardware/radio/-$$Lambda$ProgramList$fHYelmhnUsVTYl6dFj75fMqCjGs;

    invoke-direct {v3, v1}, Landroid/hardware/radio/-$$Lambda$ProgramList$fHYelmhnUsVTYl6dFj75fMqCjGs;-><init>(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 208
    return-void
.end method


# virtual methods
.method public addOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 133
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mOnCompleteListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramList$OnCompleteListener;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsComplete:Z

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/hardware/radio/ProgramList$OnCompleteListener;->onComplete()V

    .line 137
    :cond_1
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOnCompleteListener(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 126
    new-instance v0, Landroid/hardware/radio/-$$Lambda$ProgramList$aDYMynqVdAUqeKXIxfNtN1u67zs;

    invoke-direct {v0, p1, p2}, Landroid/hardware/radio/-$$Lambda$ProgramList$aDYMynqVdAUqeKXIxfNtN1u67zs;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    invoke-virtual {p0, v0}, Landroid/hardware/radio/ProgramList;->addOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    .line 127
    return-void
.end method

.method apply(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 3
    .param p1, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;

    .line 177
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 180
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsComplete:Z

    .line 182
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isPurge()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/hardware/radio/-$$Lambda$ProgramList$F-JpTj3vYguKIUQbnLbTePTuqUE;

    invoke-direct {v2, p0}, Landroid/hardware/radio/-$$Lambda$ProgramList$F-JpTj3vYguKIUQbnLbTePTuqUE;-><init>(Landroid/hardware/radio/ProgramList;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->getRemoved()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/hardware/radio/-$$Lambda$ProgramList$pKu0Zp5jwjix619hfB_Imj8Ke_g;

    invoke-direct {v2, p0}, Landroid/hardware/radio/-$$Lambda$ProgramList$pKu0Zp5jwjix619hfB_Imj8Ke_g;-><init>(Landroid/hardware/radio/ProgramList;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 187
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->getModified()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/hardware/radio/-$$Lambda$ProgramList$eY050tMTgAcGV9hiWR-UDxhkfhw;

    invoke-direct {v2, p0}, Landroid/hardware/radio/-$$Lambda$ProgramList$eY050tMTgAcGV9hiWR-UDxhkfhw;-><init>(Landroid/hardware/radio/ProgramList;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 189
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsComplete:Z

    .line 191
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mOnCompleteListeners:Ljava/util/List;

    sget-object v2, Landroid/hardware/radio/-$$Lambda$ProgramList$GfCj9jJ5znxw2TV4c2uykq35dgI;->INSTANCE:Landroid/hardware/radio/-$$Lambda$ProgramList$GfCj9jJ5znxw2TV4c2uykq35dgI;

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 193
    :cond_2
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .line 163
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 165
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    .line 166
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 167
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mListCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 168
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mOnCompleteListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 169
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mOnCloseListener:Landroid/hardware/radio/ProgramList$OnCloseListener;

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mOnCloseListener:Landroid/hardware/radio/ProgramList$OnCloseListener;

    invoke-interface {v1}, Landroid/hardware/radio/ProgramList$OnCloseListener;->onClose()V

    .line 171
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/ProgramList;->mOnCloseListener:Landroid/hardware/radio/ProgramList$OnCloseListener;

    .line 173
    :cond_1
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 3
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 228
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    monitor-exit v0

    return-object v1

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerListCallback(Landroid/hardware/radio/ProgramList$ListCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/radio/ProgramList$ListCallback;

    .line 105
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mListCallbacks:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramList$ListCallback;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerListCallback(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$ListCallback;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/radio/ProgramList$ListCallback;

    .line 90
    new-instance v0, Landroid/hardware/radio/ProgramList$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/radio/ProgramList$1;-><init>(Landroid/hardware/radio/ProgramList;Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$ListCallback;)V

    invoke-virtual {p0, v0}, Landroid/hardware/radio/ProgramList;->registerListCallback(Landroid/hardware/radio/ProgramList$ListCallback;)V

    .line 99
    return-void
.end method

.method public removeOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 144
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mOnCompleteListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setOnCloseListener(Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/radio/ProgramList$OnCloseListener;

    .line 151
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mOnCloseListener:Landroid/hardware/radio/ProgramList$OnCloseListener;

    if-nez v1, :cond_0

    .line 155
    iput-object p1, p0, Landroid/hardware/radio/ProgramList;->mOnCloseListener:Landroid/hardware/radio/ProgramList$OnCloseListener;

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Close callback is already set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterListCallback(Landroid/hardware/radio/ProgramList$ListCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/radio/ProgramList$ListCallback;

    .line 115
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mListCallbacks:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
