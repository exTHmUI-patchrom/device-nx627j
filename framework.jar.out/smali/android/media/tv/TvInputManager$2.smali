.class Landroid/media/tv/TvInputManager$2;
.super Landroid/media/tv/ITvInputManagerCallback$Stub;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager;-><init>(Landroid/media/tv/ITvInputManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager;

    .line 1103
    iput-object p1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputAdded(Ljava/lang/String;)V
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1106
    iget-object v0, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->access$800(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1107
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->access$900(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->access$1000(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 1109
    .local v2, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputAdded(Ljava/lang/String;)V

    .line 1110
    .end local v2    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    goto :goto_0

    .line 1111
    :cond_0
    monitor-exit v0

    .line 1112
    return-void

    .line 1111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onInputRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1116
    iget-object v0, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->access$800(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1117
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->access$900(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->access$1000(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 1119
    .local v2, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputRemoved(Ljava/lang/String;)V

    .line 1120
    .end local v2    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    goto :goto_0

    .line 1121
    :cond_0
    monitor-exit v0

    .line 1122
    return-void

    .line 1121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onInputStateChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 1135
    iget-object v0, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->access$800(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1136
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->access$900(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->access$1000(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 1138
    .local v2, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v2, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputStateChanged(Ljava/lang/String;I)V

    .line 1139
    .end local v2    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    goto :goto_0

    .line 1140
    :cond_0
    monitor-exit v0

    .line 1141
    return-void

    .line 1140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onInputUpdated(Ljava/lang/String;)V
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1126
    iget-object v0, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->access$800(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1127
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->access$1000(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 1128
    .local v2, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputUpdated(Ljava/lang/String;)V

    .line 1129
    .end local v2    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    goto :goto_0

    .line 1130
    :cond_0
    monitor-exit v0

    .line 1131
    return-void

    .line 1130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    .locals 3
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 1145
    iget-object v0, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->access$800(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1146
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->access$1000(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 1147
    .local v2, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V

    .line 1148
    .end local v2    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    goto :goto_0

    .line 1149
    :cond_0
    monitor-exit v0

    .line 1150
    return-void

    .line 1149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
