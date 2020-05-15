.class Landroid/media/MediaScannerConnection$DirClientProxy;
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
    name = "DirClientProxy"
.end annotation


# instance fields
.field final mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field mConnection:Landroid/media/MediaScannerConnection;

.field final mPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "client"    # Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Landroid/media/MediaScannerConnection$DirClientProxy;->mPath:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Landroid/media/MediaScannerConnection$DirClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 237
    return-void
.end method

.method private doScanPath()V
    .locals 2

    .line 251
    iget-object v0, p0, Landroid/media/MediaScannerConnection$DirClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/media/MediaScannerConnection$DirClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Landroid/media/MediaScannerConnection$DirClientProxy;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaScannerConnection;->scanDir(Ljava/lang/String;)V

    .line 254
    :cond_0
    return-void
.end method


# virtual methods
.method public getConnection()Landroid/media/MediaScannerConnection;
    .locals 1

    .line 257
    iget-object v0, p0, Landroid/media/MediaScannerConnection$DirClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method public onMediaScannerConnected()V
    .locals 0

    .line 240
    invoke-direct {p0}, Landroid/media/MediaScannerConnection$DirClientProxy;->doScanPath()V

    .line 241
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 244
    iget-object v0, p0, Landroid/media/MediaScannerConnection$DirClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/media/MediaScannerConnection$DirClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaScannerConnection$OnScanCompletedListener;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    .line 247
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScannerConnection$DirClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    .line 248
    return-void
.end method
