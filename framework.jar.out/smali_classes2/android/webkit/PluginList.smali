.class public Landroid/webkit/PluginList;
.super Ljava/lang/Object;
.source "PluginList.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/webkit/Plugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    .line 46
    return-void
.end method


# virtual methods
.method public declared-synchronized addPlugin(Landroid/webkit/Plugin;)V
    .locals 1
    .param p1, "plugin"    # Landroid/webkit/Plugin;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    .line 68
    .end local p1    # "plugin":Landroid/webkit/Plugin;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/webkit/PluginList;
    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/webkit/PluginList;
    throw v0
.end method

.method public declared-synchronized getList()Ljava/util/List;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/webkit/PluginList;
    throw v0
.end method

.method public declared-synchronized pluginClicked(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/Plugin;

    .line 112
    .local v0, "plugin":Landroid/webkit/Plugin;
    invoke-virtual {v0, p1}, Landroid/webkit/Plugin;->dispatchClickEvent(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v0    # "plugin":Landroid/webkit/Plugin;
    goto :goto_0

    .line 110
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "position":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/webkit/PluginList;
    throw p1

    .line 113
    .restart local p0    # "this":Landroid/webkit/PluginList;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "position":I
    :catch_0
    move-exception v0

    .line 117
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removePlugin(Landroid/webkit/Plugin;)V
    .locals 2
    .param p1, "plugin"    # Landroid/webkit/Plugin;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 84
    .local v0, "location":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    .line 82
    .end local v0    # "location":I
    .end local p1    # "plugin":Landroid/webkit/Plugin;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/webkit/PluginList;
    throw p1
.end method
