.class Landroid/media/MediaScannerConnection$ClientProxy;
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
    name = "ClientProxy"
.end annotation


# instance fields
.field final mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field mConnection:Landroid/media/MediaScannerConnection;

.field final mMimeTypes:[Ljava/lang/String;

.field mNextPath:I

.field final mPaths:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 0
    .param p1, "paths"    # [Ljava/lang/String;
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .param p3, "client"    # Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    .line 333
    iput-object p2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    .line 334
    iput-object p3, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 335
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    .line 338
    invoke-virtual {p0}, Landroid/media/MediaScannerConnection$ClientProxy;->scanNextPath()V

    .line 339
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 342
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaScannerConnection$OnScanCompletedListener;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    .line 345
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaScannerConnection$ClientProxy;->scanNextPath()V

    .line 346
    return-void
.end method

.method scanNextPath()V
    .locals 4

    .line 349
    iget v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 351
    iput-object v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    .line 352
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    iget v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    aget-object v2, v0, v1

    nop

    :cond_1
    move-object v0, v2

    .line 355
    .local v0, "mimeType":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    iget v3, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    .line 357
    return-void
.end method
