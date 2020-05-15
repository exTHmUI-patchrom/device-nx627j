.class public abstract Landroid/app/FragmentHostCallback;
.super Landroid/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/FragmentContainer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field private mRetainLoaders:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 67
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 68
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowAnimations"    # I

    .line 71
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    invoke-direct {p0}, Landroid/app/FragmentContainer;-><init>()V

    .line 50
    new-instance v0, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 72
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 73
    iput-object p2, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 75
    iput p4, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowAnimations"    # I

    .line 62
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-static {p1, p2}, Landroid/app/FragmentHostCallback;->chooseHandler(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v1

    .line 62
    invoke-direct {p0, v0, p1, v1, p3}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 64
    return-void
.end method

.method private static chooseHandler(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 83
    if-nez p1, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 84
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 85
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    return-object v1

    .line 87
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-object p1
.end method


# virtual methods
.method doLoaderDestroy()V
    .locals 1

    .line 304
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    .line 305
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 308
    return-void
.end method

.method doLoaderRetain()V
    .locals 1

    .line 297
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    .line 301
    return-void
.end method

.method doLoaderStart()V
    .locals 4

    .line 264
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_0

    .line 265
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 269
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl;->doStart()V

    goto :goto_0

    .line 271
    :cond_1
    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_2

    .line 272
    const-string v1, "(root)"

    iget-boolean v2, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 274
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 275
    return-void
.end method

.method doLoaderStop(Z)V
    .locals 1
    .param p1, "retain"    # Z

    .line 278
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iput-boolean p1, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    .line 280
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    .line 281
    return-void

    .line 284
    :cond_0
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v0, :cond_1

    .line 285
    return-void

    .line 287
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 289
    if-eqz p1, :cond_2

    .line 290
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    .line 294
    :goto_0
    return-void
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 383
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 385
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .line 228
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 232
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;
    .locals 1

    .line 240
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 236
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    .line 326
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    .line 329
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    .line 330
    .local v0, "lm":Landroid/app/LoaderManagerImpl;
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 331
    new-instance v1, Landroid/app/LoaderManagerImpl;

    invoke-direct {v1, p1, p0, p2}, Landroid/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/app/FragmentHostCallback;Z)V

    move-object v0, v1

    .line 332
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 333
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_2

    .line 334
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 336
    :cond_2
    :goto_0
    return-object v0
.end method

.method getLoaderManagerImpl()Landroid/app/LoaderManagerImpl;
    .locals 3

    .line 244
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0

    .line 247
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 248
    const-string v1, "(root)"

    iget-boolean v2, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p0, v1, v2, v0}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 249
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0
.end method

.method getRetainLoaders()Z
    .locals 1

    .line 224
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    return v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    .line 254
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    .line 256
    .local v0, "lm":Landroid/app/LoaderManagerImpl;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_0

    .line 257
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 258
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .end local v0    # "lm":Landroid/app/LoaderManagerImpl;
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 210
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 101
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 215
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .line 115
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    .line 201
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget v0, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .locals 1

    .line 220
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .line 194
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onInvalidateOptionsMenu()V
    .locals 0

    .line 138
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 188
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 107
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onStartActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .line 160
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, p5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 165
    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 146
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 174
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    move v1, p3

    if-ne v1, v0, :cond_0

    .line 178
    move-object v0, p0

    iget-object v2, v0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 180
    return-void

    .line 175
    :cond_0
    move-object v0, p0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onUseFragmentManagerInflaterFactory()Z
    .locals 1

    .line 122
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method reportLoaderStart()V
    .locals 4

    .line 311
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 313
    .local v0, "N":I
    new-array v1, v0, [Landroid/app/LoaderManagerImpl;

    .line 314
    .local v1, "loaders":[Landroid/app/LoaderManagerImpl;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 315
    iget-object v3, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoaderManagerImpl;

    aput-object v3, v1, v2

    .line 314
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 317
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 318
    aget-object v3, v1, v2

    .line 319
    .local v3, "lm":Landroid/app/LoaderManagerImpl;
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->finishRetain()V

    .line 320
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    .line 317
    .end local v3    # "lm":Landroid/app/LoaderManagerImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 323
    .end local v0    # "N":I
    .end local v1    # "loaders":[Landroid/app/LoaderManagerImpl;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method restoreLoaderNonConfig(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .line 374
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    .local p1, "loaderManagers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-eqz p1, :cond_0

    .line 375
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 376
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl;

    invoke-virtual {v2, p0}, Landroid/app/LoaderManagerImpl;->updateHostController(Landroid/app/FragmentHostCallback;)V

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_0
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    .line 380
    return-void
.end method

.method retainLoaderNonConfig()Landroid/util/ArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .line 340
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    .line 341
    .local v0, "retainLoaders":Z
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4

    .line 344
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 345
    .local v1, "N":I
    new-array v2, v1, [Landroid/app/LoaderManagerImpl;

    .line 346
    .local v2, "loaders":[Landroid/app/LoaderManagerImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 347
    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoaderManagerImpl;

    aput-object v4, v2, v3

    .line 346
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 349
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v3

    .line 350
    .local v3, "doRetainLoaders":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 351
    aget-object v5, v2, v4

    .line 352
    .local v5, "lm":Landroid/app/LoaderManagerImpl;
    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    .line 353
    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v6, :cond_1

    .line 354
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 356
    :cond_1
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doRetain()V

    .line 358
    :cond_2
    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_3

    .line 359
    const/4 v0, 0x1

    goto :goto_2

    .line 361
    :cond_3
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 362
    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    iget-object v7, v5, Landroid/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .end local v5    # "lm":Landroid/app/LoaderManagerImpl;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 367
    .end local v1    # "N":I
    .end local v2    # "loaders":[Landroid/app/LoaderManagerImpl;
    .end local v3    # "doRetainLoaders":Z
    .end local v4    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 368
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    return-object v1

    .line 370
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method
