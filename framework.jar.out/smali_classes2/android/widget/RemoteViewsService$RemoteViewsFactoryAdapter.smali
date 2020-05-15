.class Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
.super Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsFactoryAdapter"
.end annotation


# instance fields
.field private mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

.field private mIsCreated:Z


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;Z)V
    .locals 0
    .param p1, "factory"    # Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .param p2, "isCreated"    # Z

    .line 133
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;-><init>()V

    .line 134
    iput-object p1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    .line 135
    iput-boolean p2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z

    .line 136
    return-void
.end method


# virtual methods
.method public declared-synchronized getCount()I
    .locals 4

    monitor-enter p0

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "count":I
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 158
    goto :goto_0

    .line 151
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 155
    .restart local v0    # "count":I
    :catch_0
    move-exception v1

    .line 156
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 157
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_0
    monitor-exit p0

    return v0

    .line 151
    .end local v0    # "count":I
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    throw v0
.end method

.method public declared-synchronized getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    monitor-enter p0

    .line 195
    const-wide/16 v0, 0x0

    .line 197
    .local v0, "id":J
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v2, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getItemId(I)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v2

    .line 201
    goto :goto_0

    .line 194
    .end local v0    # "id":J
    .end local p1    # "position":I
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 198
    .restart local v0    # "id":J
    .restart local p1    # "position":I
    :catch_0
    move-exception v2

    .line 199
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 200
    .local v3, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "t":Ljava/lang/Thread;
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 194
    .end local v0    # "id":J
    .end local p1    # "position":I
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    throw p1
.end method

.method public declared-synchronized getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    monitor-enter p0

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "rv":Landroid/widget/RemoteViews;
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 181
    goto :goto_0

    .line 174
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 178
    .restart local v0    # "rv":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 180
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 174
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    throw v0
.end method

.method public declared-synchronized getViewAt(I)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "position"    # I

    monitor-enter p0

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "rv":Landroid/widget/RemoteViews;
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    move-object v0, v1

    .line 165
    if-eqz v0, :cond_0

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->setIsWidgetCollectionChild(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    goto :goto_0

    .line 161
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    .end local p1    # "position":I
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 168
    .restart local v0    # "rv":Landroid/widget/RemoteViews;
    .restart local p1    # "position":I
    :catch_0
    move-exception v1

    .line 169
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 170
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 161
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    .end local p1    # "position":I
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    throw p1
.end method

.method public declared-synchronized getViewTypeCount()I
    .locals 4

    monitor-enter p0

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "count":I
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewTypeCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 191
    goto :goto_0

    .line 184
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 188
    .restart local v0    # "count":I
    :catch_0
    move-exception v1

    .line 189
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 190
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_0
    monitor-exit p0

    return v0

    .line 184
    .end local v0    # "count":I
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    throw v0
.end method

.method public declared-synchronized hasStableIds()Z
    .locals 4

    monitor-enter p0

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "hasStableIds":Z
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->hasStableIds()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 211
    goto :goto_0

    .line 204
    .end local v0    # "hasStableIds":Z
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 208
    .restart local v0    # "hasStableIds":Z
    :catch_0
    move-exception v1

    .line 209
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 210
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_0
    monitor-exit p0

    return v0

    .line 204
    .end local v0    # "hasStableIds":Z
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    throw v0
.end method

.method public declared-synchronized isCreated()Z
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    throw v0
.end method

.method public declared-synchronized onDataSetChanged()V
    .locals 3

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 145
    .local v1, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "t":Ljava/lang/Thread;
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    throw v0
.end method

.method public declared-synchronized onDataSetChangedAsync()V
    .locals 1

    monitor-enter p0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->onDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    throw v0
.end method

.method public onDestroy(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 215
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 216
    :try_start_0
    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 217
    .local v1, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$100()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$100()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .local v2, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_start_1
    invoke-interface {v2}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    goto :goto_0

    .line 221
    :catch_0
    move-exception v3

    .line 222
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 223
    .local v4, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 225
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "t":Ljava/lang/Thread;
    :goto_0
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v1    # "fc":Landroid/content/Intent$FilterComparison;
    .end local v2    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :cond_0
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
