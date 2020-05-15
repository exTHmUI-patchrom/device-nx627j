.class Landroid/media/MediaScannerConnection$ReNameDirClientProxy;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScannerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReNameDirClientProxy"
.end annotation


# static fields
.field private static final MSG_RENAME_OK:I = 0x2710


# instance fields
.field final mClient:Landroid/os/Handler;

.field mConnection:Landroid/media/MediaScannerConnection;

.field final mOriginPath:Ljava/lang/String;

.field final mUpdatePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "originPath"    # Ljava/lang/String;
    .param p2, "updatePath"    # Ljava/lang/String;
    .param p3, "client"    # Landroid/os/Handler;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mOriginPath:Ljava/lang/String;

    .line 295
    iput-object p2, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mUpdatePath:Ljava/lang/String;

    .line 296
    iput-object p3, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mClient:Landroid/os/Handler;

    .line 297
    return-void
.end method

.method private doRenameDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mOriginPath"    # Ljava/lang/String;
    .param p2, "mUpdatePath"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaScannerConnection;->reNameDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    return-void
.end method


# virtual methods
.method public getConnection()Landroid/media/MediaScannerConnection;
    .locals 1

    .line 319
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method public onMediaScannerConnected()V
    .locals 2

    .line 300
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mOriginPath:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mUpdatePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->doRenameDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 304
    const-string v0, "MediaScannerConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanCompleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mOriginPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";updatePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mUpdatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mClient:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mClient:Landroid/os/Handler;

    const/16 v1, 0x2710

    iget-object v2, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mOriginPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 307
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mClient:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 309
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScannerConnection$ReNameDirClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    .line 310
    return-void
.end method
