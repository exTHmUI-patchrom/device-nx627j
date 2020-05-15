.class public Landroid/content/CursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mCancellationSignal:Landroid/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 128
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .line 139
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 141
    iput-object p2, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 142
    iput-object p3, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 143
    iput-object p4, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 144
    iput-object p5, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 145
    iput-object p6, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 96
    :cond_0
    monitor-exit p0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 102
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    if-eqz p1, :cond_0

    .line 105
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 110
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 112
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 116
    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_3
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 237
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/CursorLoader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 246
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 195
    iget-object v0, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 9

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 68
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    iget-object v6, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v7, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    iget-object v8, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 73
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 74
    iget-object v2, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 77
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    nop

    .line 82
    monitor-enter p0

    .line 83
    :try_start_4
    iput-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 84
    monitor-exit p0

    .line 80
    return-object v1

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 82
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 83
    :try_start_5
    iput-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 84
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 63
    :cond_1
    :try_start_7
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0

    .line 66
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 176
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 183
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 186
    invoke-virtual {p0}, Landroid/content/CursorLoader;->onStopLoading()V

    .line 188
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 192
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 157
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/content/CursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 161
    :cond_1
    invoke-virtual {p0}, Landroid/content/CursorLoader;->forceLoad()V

    .line 163
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 171
    invoke-virtual {p0}, Landroid/content/CursorLoader;->cancelLoad()Z

    .line 172
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .line 207
    iput-object p1, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .line 215
    iput-object p1, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 223
    iput-object p1, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortOrder"    # Ljava/lang/String;

    .line 231
    iput-object p1, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 199
    iput-object p1, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 200
    return-void
.end method
