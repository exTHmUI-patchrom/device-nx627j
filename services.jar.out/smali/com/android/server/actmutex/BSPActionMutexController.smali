.class public Lcom/android/server/actmutex/BSPActionMutexController;
.super Ljava/lang/Object;
.source "BSPActionMutexController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;,
        Lcom/android/server/actmutex/BSPActionMutexController$DispatchProcessingRunnable;,
        Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;
    }
.end annotation


# instance fields
.field private mCallbackDied:Lcom/android/server/actmutex/BSPCallbackList$CallbackDied;

.field private mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mListenersList:Lcom/android/server/actmutex/BSPCallbackList;

.field private mMutexRule:Lcom/android/server/actmutex/BSPMutexRule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/android/server/actmutex/BSPCallbackList;

    invoke-direct {v0}, Lcom/android/server/actmutex/BSPCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mListenersList:Lcom/android/server/actmutex/BSPCallbackList;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    invoke-static {}, Lcom/android/server/actmutex/BSPMutexRule;->getInstance()Lcom/android/server/actmutex/BSPMutexRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mMutexRule:Lcom/android/server/actmutex/BSPMutexRule;

    .line 24
    new-instance v0, Lcom/android/server/actmutex/BSPActionMutexController$1;

    invoke-direct {v0, p0}, Lcom/android/server/actmutex/BSPActionMutexController$1;-><init>(Lcom/android/server/actmutex/BSPActionMutexController;)V

    iput-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mCallbackDied:Lcom/android/server/actmutex/BSPCallbackList$CallbackDied;

    .line 33
    iput-object p2, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-direct {p0}, Lcom/android/server/actmutex/BSPActionMutexController;->initCurrentAction()V

    .line 35
    iget-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mListenersList:Lcom/android/server/actmutex/BSPCallbackList;

    iget-object v1, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mCallbackDied:Lcom/android/server/actmutex/BSPCallbackList$CallbackDied;

    invoke-virtual {v0, v1}, Lcom/android/server/actmutex/BSPCallbackList;->setListener(Lcom/android/server/actmutex/BSPCallbackList$CallbackDied;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/actmutex/BSPActionMutexController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/actmutex/BSPActionMutexController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lcom/android/server/actmutex/BSPActionMutexController;->removeCurrentActByPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/actmutex/BSPActionMutexController;)Lcom/android/server/actmutex/BSPCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/actmutex/BSPActionMutexController;

    .line 19
    iget-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mListenersList:Lcom/android/server/actmutex/BSPCallbackList;

    return-object v0
.end method

.method private initCurrentAction()V
    .locals 0

    .line 40
    return-void
.end method

.method private isInPreRule(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "preact"    # Ljava/lang/String;
    .param p2, "nextact"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mMutexRule:Lcom/android/server/actmutex/BSPMutexRule;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/actmutex/BSPMutexRule;->getProMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private removeCurrentActByPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pckName"    # Ljava/lang/String;

    .line 86
    if-nez p1, :cond_0

    return-void

    .line 88
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;

    iget-object v2, v2, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->packageName:Ljava/lang/String;

    .line 92
    .local v2, "tmpName":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;"
    .end local v2    # "tmpName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 98
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;>;"
    :cond_2
    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public checkAllowed(Ljava/lang/String;)Z
    .locals 7
    .param p1, "actname"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkAllowed]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "flag":I
    iget-object v2, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 117
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;

    iget-boolean v5, v5, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->isOpen:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[checkAllowed] entry.getKey().actionName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 120
    iget-object v5, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mMutexRule:Lcom/android/server/actmutex/BSPMutexRule;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Lcom/android/server/actmutex/BSPMutexRule;->getProMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    or-int/2addr v1, v5

    .line 122
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;"
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 123
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ActionMutexController] flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/actmutex/ALOG;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 126
    const/4 v0, 0x0

    return v0

    .line 131
    .end local v1    # "flag":I
    :cond_2
    nop

    .line 132
    return v0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    return v0
.end method

.method public checkAllowedGetActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "actname"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkAllowedGetActionName]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "flag":I
    iget-object v2, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 141
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 142
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;

    iget-boolean v5, v5, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->isOpen:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[checkAllowedGetActionName] entry.getKey().actionName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 144
    iget-object v5, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mMutexRule:Lcom/android/server/actmutex/BSPMutexRule;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Lcom/android/server/actmutex/BSPMutexRule;->getProMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    or-int/2addr v1, v5

    .line 145
    and-int/lit8 v5, v1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 146
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 149
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;"
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 153
    .end local v1    # "flag":I
    :cond_1
    nop

    .line 154
    return-object v0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    return-object v0
.end method

.method protected dispatchProcessingCompletedCallback(Ljava/lang/String;)V
    .locals 8
    .param p1, "nextact"    # Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchProcessingCompletedCallback--nextact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 164
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 166
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;

    .line 168
    .local v4, "value":Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;
    if-nez v3, :cond_1

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;
    goto :goto_0

    .line 169
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;"
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;
    goto :goto_0

    .line 170
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;"
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchProcessingCompletedCallback key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->isOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    iget-boolean v6, v4, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->isOpen:Z

    if-eqz v6, :cond_3

    invoke-direct {p0, v3, p1}, Lcom/android/server/actmutex/BSPActionMutexController;->isInPreRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-static {v5}, Lcom/android/server/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 172
    iget-boolean v5, v4, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->isOpen:Z

    if-eqz v5, :cond_5

    invoke-direct {p0, v3, p1}, Lcom/android/server/actmutex/BSPActionMutexController;->isInPreRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 173
    iget-object v5, v4, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 174
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v4, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v6, v4, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 179
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v6, v3

    .line 181
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v7, v4, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "str":Ljava/lang/String;
    :cond_5
    :goto_2
    goto/16 :goto_0

    .line 187
    :cond_6
    iget-object v1, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mListenersList:Lcom/android/server/actmutex/BSPCallbackList;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/actmutex/BSPCallbackList;->dispatch(Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    goto :goto_3

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 43
    const-string v0, "==================managed action ======================"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 46
    return-void
.end method

.method public getActionState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "actname"    # Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getActionState]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;

    iget-boolean v1, v1, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;->isOpen:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public noteActionMutex(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "isOpen"    # Z
    .param p4, "isSave"    # Z

    .line 50
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[noteActionMutex]:package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",+actionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isSave="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 51
    if-eqz p4, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/actmutex/BSPActionMutexController$ReturnData;-><init>(Lcom/android/server/actmutex/BSPActionMutexController;Ljava/lang/String;Z)V

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    if-eqz p3, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/actmutex/BSPActionMutexController$DispatchProcessingRunnable;

    invoke-direct {v1, p0, p2}, Lcom/android/server/actmutex/BSPActionMutexController$DispatchProcessingRunnable;-><init>(Lcom/android/server/actmutex/BSPActionMutexController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_1
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Lcn/nubia/mutex/IBSPMutexCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcn/nubia/mutex/IBSPMutexCallback;

    .line 65
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[registerCallback]package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",+ICallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 66
    if-eqz p2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;-><init>(Lcom/android/server/actmutex/BSPActionMutexController;Ljava/lang/String;Lcn/nubia/mutex/IBSPMutexCallback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public unregisterCallback(Ljava/lang/String;Lcn/nubia/mutex/IBSPMutexCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcn/nubia/mutex/IBSPMutexCallback;

    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[unregisterCallback]package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",+ICallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 77
    if-eqz p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;-><init>(Lcom/android/server/actmutex/BSPActionMutexController;Ljava/lang/String;Lcn/nubia/mutex/IBSPMutexCallback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
