.class public Landroid/media/MediaScanner$ScanFileShot;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanFileShot"
.end annotation


# instance fields
.field public mPath:Ljava/lang/String;

.field public mTime:J

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaScanner;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "time"    # J

    .line 202
    iput-object p1, p0, Landroid/media/MediaScanner$ScanFileShot;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Landroid/media/MediaScanner$ScanFileShot;->mPath:Ljava/lang/String;

    .line 204
    iput-wide p3, p0, Landroid/media/MediaScanner$ScanFileShot;->mTime:J

    .line 205
    return-void
.end method
