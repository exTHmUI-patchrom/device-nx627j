.class public Lcn/nubia/server/policy/edge/GestureSettingsListener;
.super Ljava/lang/Object;
.source "GestureSettingsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;,
        Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;
    }
.end annotation


# instance fields
.field private mEnableListenersArray:[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

.field private mGestureEnable:Z

.field private mOnGestureEnableListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSettingChangeListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnSettingChangeListenerMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addOnGestureEnableListener(Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;)V
    .locals 2
    .param p1, "listener"    # Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    .line 24
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    monitor-enter v0

    .line 25
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    .line 26
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mEnableListenersArray:[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOnSettingChangeListener(Ljava/lang/String;Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnSettingChangeListenerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnSettingChangeListenerMap:Ljava/util/HashMap;

    .line 59
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 60
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    if-eqz v1, :cond_1

    .line 61
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v3, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnSettingChangeListenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    .end local v2    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    :goto_0
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_2
    :goto_1
    return-void
.end method

.method public notifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnSettingChangeListenerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnSettingChangeListenerMap:Ljava/util/HashMap;

    .line 74
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 75
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    if-nez v2, :cond_0

    .line 76
    monitor-exit v1

    return-void

    .line 78
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;

    .line 81
    .local v2, "listener":Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;
    if-nez v2, :cond_1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-interface {v2, p1, p2}, Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;->onSettingChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v2    # "listener":Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;
    goto :goto_0

    .line 85
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    return-void

    .line 79
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setGestureEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 34
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mGestureEnable:Z

    if-ne v0, p1, :cond_0

    .line 35
    return-void

    .line 36
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mGestureEnable:Z

    .line 38
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mEnableListenersArray:[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    if-nez v1, :cond_1

    .line 40
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mEnableListenersArray:[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    .line 42
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mEnableListenersArray:[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mEnableListenersArray:[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    .line 45
    .local v1, "listeners":[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 47
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 48
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;->onGestureEnable(Z)V

    .line 46
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 45
    .end local v1    # "listeners":[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
