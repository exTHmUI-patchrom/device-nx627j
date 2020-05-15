.class Landroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner$MyMediaScannerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowScanParam"
.end annotation


# instance fields
.field canScanState:I

.field final synthetic this$1:Landroid/media/MediaScanner$MyMediaScannerClient;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner$MyMediaScannerClient;)V
    .locals 0

    .line 779
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;->this$1:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    const/4 p1, 0x0

    iput p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;->canScanState:I

    .line 781
    return-void
.end method
